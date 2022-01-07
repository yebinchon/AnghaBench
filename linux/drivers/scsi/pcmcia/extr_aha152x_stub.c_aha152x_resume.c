
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {int host; } ;
typedef TYPE_1__ scsi_info_t ;


 int aha152x_host_reset_host (int ) ;

__attribute__((used)) static int aha152x_resume(struct pcmcia_device *link)
{
 scsi_info_t *info = link->priv;

 aha152x_host_reset_host(info->host);

 return 0;
}
