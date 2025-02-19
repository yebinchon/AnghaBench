
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct request_queue {int dummy; } ;
struct block_device {int bd_inode; } ;


 int bdev_logical_block_size (struct block_device*) ;
 int div_u64 (int ,int) ;
 int i_size_read (int ) ;

__attribute__((used)) static unsigned long long iblock_emulate_read_cap_with_block_size(
 struct se_device *dev,
 struct block_device *bd,
 struct request_queue *q)
{
 unsigned long long blocks_long = (div_u64(i_size_read(bd->bd_inode),
     bdev_logical_block_size(bd)) - 1);
 u32 block_size = bdev_logical_block_size(bd);

 if (block_size == dev->dev_attrib.block_size)
  return blocks_long;

 switch (block_size) {
 case 4096:
  switch (dev->dev_attrib.block_size) {
  case 2048:
   blocks_long <<= 1;
   break;
  case 1024:
   blocks_long <<= 2;
   break;
  case 512:
   blocks_long <<= 3;
  default:
   break;
  }
  break;
 case 2048:
  switch (dev->dev_attrib.block_size) {
  case 4096:
   blocks_long >>= 1;
   break;
  case 1024:
   blocks_long <<= 1;
   break;
  case 512:
   blocks_long <<= 2;
   break;
  default:
   break;
  }
  break;
 case 1024:
  switch (dev->dev_attrib.block_size) {
  case 4096:
   blocks_long >>= 2;
   break;
  case 2048:
   blocks_long >>= 1;
   break;
  case 512:
   blocks_long <<= 1;
   break;
  default:
   break;
  }
  break;
 case 512:
  switch (dev->dev_attrib.block_size) {
  case 4096:
   blocks_long >>= 3;
   break;
  case 2048:
   blocks_long >>= 2;
   break;
  case 1024:
   blocks_long >>= 1;
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }

 return blocks_long;
}
