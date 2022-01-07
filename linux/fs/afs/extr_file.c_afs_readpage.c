
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct key {int dummy; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int cell; } ;
struct TYPE_3__ {struct inode* host; } ;


 TYPE_2__* AFS_FS_S (int ) ;
 int ASSERT (int ) ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 struct key* afs_file_key (struct file*) ;
 int afs_page_filler (struct key*,struct page*) ;
 struct key* afs_request_key (int ) ;
 int key_put (struct key*) ;

__attribute__((used)) static int afs_readpage(struct file *file, struct page *page)
{
 struct key *key;
 int ret;

 if (file) {
  key = afs_file_key(file);
  ASSERT(key != ((void*)0));
  ret = afs_page_filler(key, page);
 } else {
  struct inode *inode = page->mapping->host;
  key = afs_request_key(AFS_FS_S(inode->i_sb)->cell);
  if (IS_ERR(key)) {
   ret = PTR_ERR(key);
  } else {
   ret = afs_page_filler(key, page);
   key_put(key);
  }
 }
 return ret;
}
