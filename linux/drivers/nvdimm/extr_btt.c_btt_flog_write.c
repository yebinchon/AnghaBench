
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct log_entry {int old_map; } ;
struct arena_info {TYPE_1__* freelist; } ;
struct TYPE_2__ {int seq; int has_err; int block; scalar_t__ sub; } ;


 int NVDIMM_IO_ATOMIC ;
 int __btt_log_write (struct arena_info*,size_t,size_t,struct log_entry*,int ) ;
 scalar_t__ ent_e_flag (int ) ;
 int ent_lba (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int btt_flog_write(struct arena_info *arena, u32 lane, u32 sub,
   struct log_entry *ent)
{
 int ret;

 ret = __btt_log_write(arena, lane, sub, ent, NVDIMM_IO_ATOMIC);
 if (ret)
  return ret;


 arena->freelist[lane].sub = 1 - arena->freelist[lane].sub;
 if (++(arena->freelist[lane].seq) == 4)
  arena->freelist[lane].seq = 1;
 if (ent_e_flag(le32_to_cpu(ent->old_map)))
  arena->freelist[lane].has_err = 1;
 arena->freelist[lane].block = ent_lba(le32_to_cpu(ent->old_map));

 return ret;
}
