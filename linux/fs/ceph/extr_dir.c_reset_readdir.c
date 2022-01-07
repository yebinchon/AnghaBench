
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct ceph_dir_file_info {int readdir_cache_idx; int next_offset; TYPE_1__ file_info; scalar_t__ dir_release_count; int * last_name; int * last_readdir; } ;


 int CEPH_F_ATEND ;
 int ceph_mdsc_put_request (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void reset_readdir(struct ceph_dir_file_info *dfi)
{
 if (dfi->last_readdir) {
  ceph_mdsc_put_request(dfi->last_readdir);
  dfi->last_readdir = ((void*)0);
 }
 kfree(dfi->last_name);
 dfi->last_name = ((void*)0);
 dfi->dir_release_count = 0;
 dfi->readdir_cache_idx = -1;
 dfi->next_offset = 2;
 dfi->file_info.flags &= ~CEPH_F_ATEND;
}
