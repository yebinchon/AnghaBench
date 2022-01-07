
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_6__ {int* firsts; TYPE_1__* device; } ;
typedef TYPE_2__ scsi_changer ;
typedef int cmd ;
struct TYPE_5__ {int lun; } ;


 size_t CHET_MT ;
 int DMA_NONE ;
 int DPRINTK (char*,int,int) ;
 int MOVE_MEDIUM ;
 int ch_do_scsi (TYPE_2__*,int*,int,int *,int ,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int
ch_move(scsi_changer *ch, u_int trans, u_int src, u_int dest, int rotate)
{
 u_char cmd[12];

 DPRINTK("move: 0x%x => 0x%x\n",src,dest);
 if (0 == trans)
  trans = ch->firsts[CHET_MT];
 memset(cmd,0,sizeof(cmd));
 cmd[0] = MOVE_MEDIUM;
 cmd[1] = (ch->device->lun & 0x7) << 5;
 cmd[2] = (trans >> 8) & 0xff;
 cmd[3] = trans & 0xff;
 cmd[4] = (src >> 8) & 0xff;
 cmd[5] = src & 0xff;
 cmd[6] = (dest >> 8) & 0xff;
 cmd[7] = dest & 0xff;
 cmd[10] = rotate ? 1 : 0;
 return ch_do_scsi(ch, cmd, 12, ((void*)0),0, DMA_NONE);
}
