
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct page {int dummy; } ;
struct inode {int i_sb; struct address_space* i_mapping; } ;
struct erofs_qstr {int * end; int * name; } ;
struct erofs_dirent {int nameoff; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int nid; } ;


 int DBG_BUGON (int) ;
 int EFSCORRUPTED ;
 int ENOENT ;
 int EROFS_BLKSIZ ;
 TYPE_1__* EROFS_I (struct inode*) ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 int erofs_dirnamecmp (struct erofs_qstr*,struct erofs_qstr*,unsigned int*) ;
 int erofs_err (int ,char*,int const,int ) ;
 int erofs_inode_datablocks (struct inode*) ;
 struct erofs_dirent* kmap_atomic (struct page*) ;
 int kunmap_atomic (struct erofs_dirent*) ;
 unsigned int min (unsigned int,unsigned int) ;
 int nameoff_from_disk (int ,int) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (struct address_space* const,int const,int *) ;

__attribute__((used)) static struct page *find_target_block_classic(struct inode *dir,
           struct erofs_qstr *name,
           int *_ndirents)
{
 unsigned int startprfx, endprfx;
 int head, back;
 struct address_space *const mapping = dir->i_mapping;
 struct page *candidate = ERR_PTR(-ENOENT);

 startprfx = endprfx = 0;
 head = 0;
 back = erofs_inode_datablocks(dir) - 1;

 while (head <= back) {
  const int mid = head + (back - head) / 2;
  struct page *page = read_mapping_page(mapping, mid, ((void*)0));

  if (!IS_ERR(page)) {
   struct erofs_dirent *de = kmap_atomic(page);
   const int nameoff = nameoff_from_disk(de->nameoff,
             EROFS_BLKSIZ);
   const int ndirents = nameoff / sizeof(*de);
   int diff;
   unsigned int matched;
   struct erofs_qstr dname;

   if (!ndirents) {
    kunmap_atomic(de);
    put_page(page);
    erofs_err(dir->i_sb,
       "corrupted dir block %d @ nid %llu",
       mid, EROFS_I(dir)->nid);
    DBG_BUGON(1);
    page = ERR_PTR(-EFSCORRUPTED);
    goto out;
   }

   matched = min(startprfx, endprfx);

   dname.name = (u8 *)de + nameoff;
   if (ndirents == 1)
    dname.end = (u8 *)de + EROFS_BLKSIZ;
   else
    dname.end = (u8 *)de +
     nameoff_from_disk(de[1].nameoff,
         EROFS_BLKSIZ);


   diff = erofs_dirnamecmp(name, &dname, &matched);
   kunmap_atomic(de);

   if (!diff) {
    *_ndirents = 0;
    goto out;
   } else if (diff > 0) {
    head = mid + 1;
    startprfx = matched;

    if (!IS_ERR(candidate))
     put_page(candidate);
    candidate = page;
    *_ndirents = ndirents;
   } else {
    put_page(page);

    back = mid - 1;
    endprfx = matched;
   }
   continue;
  }
out:
  if (!IS_ERR(candidate))
   put_page(candidate);
  return page;
 }
 return candidate;
}
