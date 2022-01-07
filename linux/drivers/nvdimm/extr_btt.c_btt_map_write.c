
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arena_info {int dummy; } ;
typedef int __le32 ;


 int EIO ;
 int MAP_ENT_NORMAL ;
 int MAP_ERR_SHIFT ;
 int MAP_TRIM_SHIFT ;
 int __btt_map_write (struct arena_info*,int,int ,unsigned long) ;
 int cpu_to_le32 (int) ;
 int dev_err_ratelimited (int ,char*) ;
 int ent_lba (int) ;
 int to_dev (struct arena_info*) ;

__attribute__((used)) static int btt_map_write(struct arena_info *arena, u32 lba, u32 mapping,
   u32 z_flag, u32 e_flag, unsigned long rwb_flags)
{
 u32 ze;
 __le32 mapping_le;





 mapping = ent_lba(mapping);

 ze = (z_flag << 1) + e_flag;
 switch (ze) {
 case 0:






  mapping |= MAP_ENT_NORMAL;
  break;
 case 1:
  mapping |= (1 << MAP_ERR_SHIFT);
  break;
 case 2:
  mapping |= (1 << MAP_TRIM_SHIFT);
  break;
 default:





  dev_err_ratelimited(to_dev(arena),
   "Invalid use of Z and E flags\n");
  return -EIO;
 }

 mapping_le = cpu_to_le32(mapping);
 return __btt_map_write(arena, lba, mapping_le, rwb_flags);
}
