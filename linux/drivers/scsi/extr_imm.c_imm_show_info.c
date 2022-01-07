
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {size_t mode; TYPE_2__* dev; } ;
typedef TYPE_3__ imm_struct ;
struct TYPE_6__ {TYPE_1__* port; } ;
struct TYPE_5__ {int name; } ;


 int * IMM_MODE_STRING ;
 int IMM_VERSION ;
 TYPE_3__* imm_dev (struct Scsi_Host*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int imm_show_info(struct seq_file *m, struct Scsi_Host *host)
{
 imm_struct *dev = imm_dev(host);

 seq_printf(m, "Version : %s\n", IMM_VERSION);
 seq_printf(m, "Parport : %s\n", dev->dev->port->name);
 seq_printf(m, "Mode    : %s\n", IMM_MODE_STRING[dev->mode]);
 return 0;
}
