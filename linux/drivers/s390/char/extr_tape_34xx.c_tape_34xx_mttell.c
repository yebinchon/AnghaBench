
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int dummy; } ;
struct tape_34xx_block_id {int block; } ;
typedef int __u64 ;


 int tape_34xx_add_sbid (struct tape_device*,struct tape_34xx_block_id) ;
 int tape_std_read_block_id (struct tape_device*,int *) ;

__attribute__((used)) static int
tape_34xx_mttell(struct tape_device *device, int mt_count)
{
 struct {
  struct tape_34xx_block_id cbid;
  struct tape_34xx_block_id dbid;
 } __attribute__ ((packed)) block_id;
 int rc;

 rc = tape_std_read_block_id(device, (__u64 *) &block_id);
 if (rc)
  return rc;

 tape_34xx_add_sbid(device, block_id.cbid);
 return block_id.cbid.block;
}
