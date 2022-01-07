
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {TYPE_1__* device; } ;
typedef TYPE_2__ scsi_changer ;
typedef int cmd ;
struct TYPE_5__ {int lun; } ;


 int DMA_NONE ;
 int INITIALIZE_ELEMENT_STATUS ;
 int KERN_INFO ;
 int VPRINTK (int ,char*) ;
 int ch_do_scsi (TYPE_2__*,int*,int,int *,int ,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int
ch_init_elem(scsi_changer *ch)
{
 int err;
 u_char cmd[6];

 VPRINTK(KERN_INFO, "INITIALIZE ELEMENT STATUS, may take some time ...\n");
 memset(cmd,0,sizeof(cmd));
 cmd[0] = INITIALIZE_ELEMENT_STATUS;
 cmd[1] = (ch->device->lun & 0x7) << 5;
 err = ch_do_scsi(ch, cmd, 6, ((void*)0), 0, DMA_NONE);
 VPRINTK(KERN_INFO, "... finished\n");
 return err;
}
