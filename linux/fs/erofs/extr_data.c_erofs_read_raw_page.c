
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_bdev; } ;
struct page {int index; } ;
struct inode {struct super_block* i_sb; } ;
struct erofs_map_blocks {int m_flags; scalar_t__ m_plen; scalar_t__ m_llen; int m_pa; int m_la; } ;
struct TYPE_2__ {int bi_sector; int bi_size; } ;
struct bio {int bi_max_vecs; TYPE_1__ bi_iter; int bi_opf; int bi_end_io; } ;
struct address_space {struct inode* host; } ;
typedef int sector_t ;
typedef scalar_t__ erofs_off_t ;
typedef scalar_t__ erofs_blk_t ;


 unsigned int BIO_MAX_PAGES ;
 int ClearPageUptodate (struct page*) ;
 int DBG_BUGON (int) ;
 unsigned int DIV_ROUND_UP (void*,int) ;
 int EROFS_GET_BLOCKS_RAW ;
 int EROFS_MAP_MAPPED ;
 int EROFS_MAP_META ;
 struct bio* ERR_PTR (int) ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct page*) ;
 int LOG_SECTORS_PER_BLOCK ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int REQ_OP_READ ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int bio_add_page (struct bio*,struct page*,int,int ) ;
 struct bio* bio_alloc (int ,unsigned int) ;
 int bio_set_dev (struct bio*,int ) ;
 int blknr_to_addr (scalar_t__) ;
 scalar_t__ erofs_blknr (int ) ;
 int erofs_blkoff (int ) ;
 struct page* erofs_get_meta_page (struct super_block*,scalar_t__) ;
 int erofs_map_blocks (struct inode* const,struct erofs_map_blocks*,int ) ;
 int erofs_readendio ;
 int flush_dcache_page (struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,int) ;
 int memset (void*,int ,void*) ;
 int put_page (struct page*) ;
 int submit_bio (struct bio*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,int ,int) ;

__attribute__((used)) static inline struct bio *erofs_read_raw_page(struct bio *bio,
           struct address_space *mapping,
           struct page *page,
           erofs_off_t *last_block,
           unsigned int nblocks,
           bool ra)
{
 struct inode *const inode = mapping->host;
 struct super_block *const sb = inode->i_sb;
 erofs_off_t current_block = (erofs_off_t)page->index;
 int err;

 DBG_BUGON(!nblocks);

 if (PageUptodate(page)) {
  err = 0;
  goto has_updated;
 }


 if (bio &&

     *last_block + 1 != current_block) {
submit_bio_retry:
  submit_bio(bio);
  bio = ((void*)0);
 }

 if (!bio) {
  struct erofs_map_blocks map = {
   .m_la = blknr_to_addr(current_block),
  };
  erofs_blk_t blknr;
  unsigned int blkoff;

  err = erofs_map_blocks(inode, &map, EROFS_GET_BLOCKS_RAW);
  if (err)
   goto err_out;


  if (!(map.m_flags & EROFS_MAP_MAPPED)) {
   zero_user_segment(page, 0, PAGE_SIZE);
   SetPageUptodate(page);


   goto has_updated;
  }


  DBG_BUGON(map.m_plen != map.m_llen);

  blknr = erofs_blknr(map.m_pa);
  blkoff = erofs_blkoff(map.m_pa);


  if (map.m_flags & EROFS_MAP_META) {
   void *vsrc, *vto;
   struct page *ipage;

   DBG_BUGON(map.m_plen > PAGE_SIZE);

   ipage = erofs_get_meta_page(inode->i_sb, blknr);

   if (IS_ERR(ipage)) {
    err = PTR_ERR(ipage);
    goto err_out;
   }

   vsrc = kmap_atomic(ipage);
   vto = kmap_atomic(page);
   memcpy(vto, vsrc + blkoff, map.m_plen);
   memset(vto + map.m_plen, 0, PAGE_SIZE - map.m_plen);
   kunmap_atomic(vto);
   kunmap_atomic(vsrc);
   flush_dcache_page(page);

   SetPageUptodate(page);

   unlock_page(ipage);
   put_page(ipage);


   goto has_updated;
  }


  DBG_BUGON(erofs_blkoff(map.m_pa));


  if (nblocks > DIV_ROUND_UP(map.m_plen, PAGE_SIZE))
   nblocks = DIV_ROUND_UP(map.m_plen, PAGE_SIZE);
  if (nblocks > BIO_MAX_PAGES)
   nblocks = BIO_MAX_PAGES;

  bio = bio_alloc(GFP_NOIO, nblocks);

  bio->bi_end_io = erofs_readendio;
  bio_set_dev(bio, sb->s_bdev);
  bio->bi_iter.bi_sector = (sector_t)blknr <<
   LOG_SECTORS_PER_BLOCK;
  bio->bi_opf = REQ_OP_READ;
 }

 err = bio_add_page(bio, page, PAGE_SIZE, 0);

 if (err < PAGE_SIZE)
  goto submit_bio_retry;

 *last_block = current_block;


 if (bio->bi_iter.bi_size >= bio->bi_max_vecs * PAGE_SIZE) {

  err = 0;
  goto submit_bio_out;
 }

 return bio;

err_out:

 if (!ra) {
  SetPageError(page);
  ClearPageUptodate(page);
 }
has_updated:
 unlock_page(page);


 if (bio)
submit_bio_out:
  submit_bio(bio);
 return err ? ERR_PTR(err) : ((void*)0);
}
