
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {scalar_t__ len; scalar_t__ name; } ;
struct page {unsigned int file_type; int nid; } ;
struct inode {int i_size; } ;
struct erofs_qstr {scalar_t__ end; scalar_t__ name; } ;
struct erofs_dirent {unsigned int file_type; int nid; } ;
typedef int erofs_nid_t ;


 int ENOENT ;
 int EROFS_BLKSIZ ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int PTR_ERR_OR_ZERO (struct page*) ;
 struct page* find_target_block_classic (struct inode*,struct erofs_qstr*,int*) ;
 struct page* find_target_dirent (struct erofs_qstr*,void*,int ,int) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int le64_to_cpu (int ) ;
 int put_page (struct page*) ;

int erofs_namei(struct inode *dir,
  struct qstr *name,
  erofs_nid_t *nid, unsigned int *d_type)
{
 int ndirents;
 struct page *page;
 void *data;
 struct erofs_dirent *de;
 struct erofs_qstr qn;

 if (!dir->i_size)
  return -ENOENT;

 qn.name = name->name;
 qn.end = name->name + name->len;

 ndirents = 0;
 page = find_target_block_classic(dir, &qn, &ndirents);

 if (IS_ERR(page))
  return PTR_ERR(page);

 data = kmap_atomic(page);

 if (ndirents)
  de = find_target_dirent(&qn, data, EROFS_BLKSIZ, ndirents);
 else
  de = (struct erofs_dirent *)data;

 if (!IS_ERR(de)) {
  *nid = le64_to_cpu(de->nid);
  *d_type = de->file_type;
 }

 kunmap_atomic(data);
 put_page(page);

 return PTR_ERR_OR_ZERO(de);
}
