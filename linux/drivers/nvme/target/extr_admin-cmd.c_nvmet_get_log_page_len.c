
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int numdl; int numdu; } ;
struct nvme_command {TYPE_1__ get_log_page; } ;


 int le16_to_cpu (int ) ;

u32 nvmet_get_log_page_len(struct nvme_command *cmd)
{
 u32 len = le16_to_cpu(cmd->get_log_page.numdu);

 len <<= 16;
 len += le16_to_cpu(cmd->get_log_page.numdl);

 len += 1;
 len *= sizeof(u32);

 return len;
}
