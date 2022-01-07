
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int lpo; } ;
struct nvme_command {TYPE_1__ get_log_page; } ;


 int le64_to_cpu (int ) ;

u64 nvmet_get_log_page_offset(struct nvme_command *cmd)
{
 return le64_to_cpu(cmd->get_log_page.lpo);
}
