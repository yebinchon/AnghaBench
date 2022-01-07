
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
typedef enum btrfs_map_op { ____Placeholder_btrfs_map_op } btrfs_map_op ;


 int BTRFS_MAP_DISCARD ;
 int BTRFS_MAP_READ ;
 int BTRFS_MAP_WRITE ;



 int WARN_ON_ONCE (int) ;
 int bio_op (struct bio*) ;

__attribute__((used)) static inline enum btrfs_map_op btrfs_op(struct bio *bio)
{
 switch (bio_op(bio)) {
 case 130:
  return BTRFS_MAP_DISCARD;
 case 128:
  return BTRFS_MAP_WRITE;
 default:
  WARN_ON_ONCE(1);

 case 129:
  return BTRFS_MAP_READ;
 }
}
