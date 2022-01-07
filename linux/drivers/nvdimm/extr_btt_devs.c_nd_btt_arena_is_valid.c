
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct nd_gen_sb {int dummy; } ;
struct nd_btt {int dev; TYPE_1__* ndns; } ;
struct btt_sb {int flags; int checksum; int parent_uuid; int signature; } ;
typedef int guid_t ;
struct TYPE_2__ {int dev; } ;


 int const* BTT_SIG ;
 int BTT_SIG_LEN ;
 int IB_FLAG_ERROR_MASK ;
 int cpu_to_le64 (scalar_t__) ;
 int dev_info (int *,char*) ;
 int guid_is_null (int *) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int const*,int) ;
 int * nd_dev_to_uuid (int *) ;
 scalar_t__ nd_sb_checksum (struct nd_gen_sb*) ;

bool nd_btt_arena_is_valid(struct nd_btt *nd_btt, struct btt_sb *super)
{
 const u8 *parent_uuid = nd_dev_to_uuid(&nd_btt->ndns->dev);
 u64 checksum;

 if (memcmp(super->signature, BTT_SIG, BTT_SIG_LEN) != 0)
  return 0;

 if (!guid_is_null((guid_t *)&super->parent_uuid))
  if (memcmp(super->parent_uuid, parent_uuid, 16) != 0)
   return 0;

 checksum = le64_to_cpu(super->checksum);
 super->checksum = 0;
 if (checksum != nd_sb_checksum((struct nd_gen_sb *) super))
  return 0;
 super->checksum = cpu_to_le64(checksum);


 if ((le32_to_cpu(super->flags) & IB_FLAG_ERROR_MASK) != 0)
  dev_info(&nd_btt->dev, "Found arena with an error flag\n");

 return 1;
}
