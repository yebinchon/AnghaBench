
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int ERESTARTSYS ;
 int ihold (struct inode*) ;
 int iput (struct inode*) ;
 int unlock_page (struct page*) ;
 int writepage_nounlock (struct page*,struct writeback_control*) ;

__attribute__((used)) static int ceph_writepage(struct page *page, struct writeback_control *wbc)
{
 int err;
 struct inode *inode = page->mapping->host;
 BUG_ON(!inode);
 ihold(inode);
 err = writepage_nounlock(page, wbc);
 if (err == -ERESTARTSYS) {


  err = 0;
 }
 unlock_page(page);
 iput(inode);
 return err;
}
