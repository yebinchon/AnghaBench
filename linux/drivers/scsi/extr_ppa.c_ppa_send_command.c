
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int cmd_len; int * cmnd; TYPE_1__* device; } ;
struct TYPE_6__ {int base; } ;
typedef TYPE_2__ ppa_struct ;
struct TYPE_5__ {int host; } ;


 TYPE_2__* ppa_dev (int ) ;
 int ppa_out (TYPE_2__*,int *,int) ;
 int w_ctr (int ,int) ;

__attribute__((used)) static inline int ppa_send_command(struct scsi_cmnd *cmd)
{
 ppa_struct *dev = ppa_dev(cmd->device->host);
 int k;

 w_ctr(dev->base, 0x0c);

 for (k = 0; k < cmd->cmd_len; k++)
  if (!ppa_out(dev, &cmd->cmnd[k], 1))
   return 0;
 return 1;
}
