
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union afs_xdr_dir_block {int dummy; } afs_xdr_dir_block ;
struct afs_xdr_dir_page {union afs_xdr_dir_block* blocks; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_read {unsigned int nr_pages; int * pages; int offset; int index; int pos; int remain; int actual_len; int len; int file_size; } ;


 int PAGE_SIZE ;
 int afs_dir_check_page (struct afs_vnode*,int ,int ) ;
 struct afs_xdr_dir_page* kmap (int ) ;
 int kunmap (int ) ;
 int pr_warn (char*,unsigned int,union afs_xdr_dir_block*,...) ;

__attribute__((used)) static bool afs_dir_check_pages(struct afs_vnode *dvnode, struct afs_read *req)
{
 struct afs_xdr_dir_page *dbuf;
 unsigned int i, j, qty = PAGE_SIZE / sizeof(union afs_xdr_dir_block);

 for (i = 0; i < req->nr_pages; i++)
  if (!afs_dir_check_page(dvnode, req->pages[i], req->actual_len))
   goto bad;
 return 1;

bad:
 pr_warn("DIR %llx:%llx f=%llx l=%llx al=%llx r=%llx\n",
  dvnode->fid.vid, dvnode->fid.vnode,
  req->file_size, req->len, req->actual_len, req->remain);
 pr_warn("DIR %llx %x %x %x\n",
  req->pos, req->index, req->nr_pages, req->offset);

 for (i = 0; i < req->nr_pages; i++) {
  dbuf = kmap(req->pages[i]);
  for (j = 0; j < qty; j++) {
   union afs_xdr_dir_block *block = &dbuf->blocks[j];

   pr_warn("[%02x] %32phN\n", i * qty + j, block);
  }
  kunmap(req->pages[i]);
 }
 return 0;
}
