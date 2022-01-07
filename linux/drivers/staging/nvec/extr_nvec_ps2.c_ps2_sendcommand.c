
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dev; } ;
typedef int buf ;
struct TYPE_2__ {int nvec; } ;


 int ENABLE_MOUSE ;
 int NVEC_PS2 ;
 int SEND_COMMAND ;
 int dev_dbg (int *,char*,unsigned char) ;
 int nvec_write_async (int ,unsigned char*,int) ;
 TYPE_1__ ps2_dev ;

__attribute__((used)) static int ps2_sendcommand(struct serio *ser_dev, unsigned char cmd)
{
 unsigned char buf[] = { NVEC_PS2, SEND_COMMAND, ENABLE_MOUSE, 1 };

 buf[2] = cmd & 0xff;

 dev_dbg(&ser_dev->dev, "Sending ps2 cmd %02x\n", cmd);
 return nvec_write_async(ps2_dev.nvec, buf, sizeof(buf));
}
