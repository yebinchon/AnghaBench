
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ phase; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct TYPE_9__ {int base; int * cur_cmd; } ;
typedef TYPE_3__ ppa_struct ;
struct TYPE_7__ {int host; } ;


 int CONNECT_NORMAL ;
 int SUCCESS ;
 int mdelay (int) ;
 int ppa_connect (TYPE_3__*,int ) ;
 TYPE_3__* ppa_dev (int ) ;
 int ppa_disconnect (TYPE_3__*) ;
 int ppa_reset_pulse (int ) ;

__attribute__((used)) static int ppa_reset(struct scsi_cmnd *cmd)
{
 ppa_struct *dev = ppa_dev(cmd->device->host);

 if (cmd->SCp.phase)
  ppa_disconnect(dev);
 dev->cur_cmd = ((void*)0);

 ppa_connect(dev, CONNECT_NORMAL);
 ppa_reset_pulse(dev->base);
 mdelay(1);
 ppa_disconnect(dev);
 mdelay(1);
 return SUCCESS;
}
