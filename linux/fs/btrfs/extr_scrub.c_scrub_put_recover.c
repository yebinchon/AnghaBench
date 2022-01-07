
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_recover {int bbio; int refs; } ;
struct btrfs_fs_info {int dummy; } ;


 int btrfs_bio_counter_dec (struct btrfs_fs_info*) ;
 int btrfs_put_bbio (int ) ;
 int kfree (struct scrub_recover*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void scrub_put_recover(struct btrfs_fs_info *fs_info,
         struct scrub_recover *recover)
{
 if (refcount_dec_and_test(&recover->refs)) {
  btrfs_bio_counter_dec(fs_info);
  btrfs_put_bbio(recover->bbio);
  kfree(recover);
 }
}
