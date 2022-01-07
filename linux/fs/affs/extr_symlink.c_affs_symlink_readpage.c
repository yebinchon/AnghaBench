
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slink_front {char* symname; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; int i_ino; } ;
struct file {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct affs_sb_info {char* s_prefix; int symlink_lock; } ;
struct TYPE_2__ {struct inode* host; } ;


 struct affs_sb_info* AFFS_SB (int ) ;
 int EIO ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 struct buffer_head* affs_bread (int ,int ) ;
 int affs_brelse (struct buffer_head*) ;
 char* page_address (struct page*) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strchr (char*,char) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int affs_symlink_readpage(struct file *file, struct page *page)
{
 struct buffer_head *bh;
 struct inode *inode = page->mapping->host;
 char *link = page_address(page);
 struct slink_front *lf;
 int i, j;
 char c;
 char lc;

 pr_debug("get_link(ino=%lu)\n", inode->i_ino);

 bh = affs_bread(inode->i_sb, inode->i_ino);
 if (!bh)
  goto fail;
 i = 0;
 j = 0;
 lf = (struct slink_front *)bh->b_data;
 lc = 0;

 if (strchr(lf->symname,':')) {
  struct affs_sb_info *sbi = AFFS_SB(inode->i_sb);
  char *pf;
  spin_lock(&sbi->symlink_lock);
  pf = sbi->s_prefix ? sbi->s_prefix : "/";
  while (i < 1023 && (c = pf[i]))
   link[i++] = c;
  spin_unlock(&sbi->symlink_lock);
  while (i < 1023 && lf->symname[j] != ':')
   link[i++] = lf->symname[j++];
  if (i < 1023)
   link[i++] = '/';
  j++;
  lc = '/';
 }
 while (i < 1023 && (c = lf->symname[j])) {
  if (c == '/' && lc == '/' && i < 1020) {
   link[i++] = '.';
   link[i++] = '.';
  }
  link[i++] = c;
  lc = c;
  j++;
 }
 link[i] = '\0';
 affs_brelse(bh);
 SetPageUptodate(page);
 unlock_page(page);
 return 0;
fail:
 SetPageError(page);
 unlock_page(page);
 return -EIO;
}
