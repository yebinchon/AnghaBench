
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
struct file_ra_state {int dummy; } ;


 int GFP_NOFS ;
 int PAGE_SHIFT ;
 int file_ra_state_init (struct file_ra_state*,int ) ;
 int i_size_read (struct inode*) ;
 int kfree (struct file_ra_state*) ;
 struct file_ra_state* kzalloc (int,int ) ;
 int page_cache_sync_readahead (int ,struct file_ra_state*,int *,int ,unsigned long) ;

__attribute__((used)) static void readahead_cache(struct inode *inode)
{
 struct file_ra_state *ra;
 unsigned long last_index;

 ra = kzalloc(sizeof(*ra), GFP_NOFS);
 if (!ra)
  return;

 file_ra_state_init(ra, inode->i_mapping);
 last_index = (i_size_read(inode) - 1) >> PAGE_SHIFT;

 page_cache_sync_readahead(inode->i_mapping, ra, ((void*)0), 0, last_index);

 kfree(ra);
}
