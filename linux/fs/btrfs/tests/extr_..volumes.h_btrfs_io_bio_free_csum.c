
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_io_bio {int * csum; int * csum_inline; } ;


 int kfree (int *) ;

__attribute__((used)) static inline void btrfs_io_bio_free_csum(struct btrfs_io_bio *io_bio)
{
 if (io_bio->csum != io_bio->csum_inline) {
  kfree(io_bio->csum);
  io_bio->csum = ((void*)0);
 }
}
