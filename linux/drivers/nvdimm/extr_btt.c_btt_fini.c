
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btt {int debugfs_dir; } ;


 int btt_blk_cleanup (struct btt*) ;
 int debugfs_remove_recursive (int ) ;
 int free_arenas (struct btt*) ;

__attribute__((used)) static void btt_fini(struct btt *btt)
{
 if (btt) {
  btt_blk_cleanup(btt);
  free_arenas(btt);
  debugfs_remove_recursive(btt->debugfs_dir);
 }
}
