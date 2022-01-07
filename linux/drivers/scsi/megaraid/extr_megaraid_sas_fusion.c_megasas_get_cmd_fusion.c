
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct megasas_instance {struct fusion_context* ctrl_context; } ;
struct megasas_cmd_fusion {int dummy; } ;
struct fusion_context {struct megasas_cmd_fusion** cmd_list; } ;



inline struct megasas_cmd_fusion *megasas_get_cmd_fusion(struct megasas_instance
        *instance, u32 blk_tag)
{
 struct fusion_context *fusion;

 fusion = instance->ctrl_context;
 return fusion->cmd_list[blk_tag];
}
