
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {int nvec; } ;


 unsigned char CANCEL_AUTO_RECEIVE ;
 unsigned char NVEC_PS2 ;
 int nvec_write_async (int ,unsigned char*,int) ;
 TYPE_1__ ps2_dev ;

__attribute__((used)) static void ps2_stopstreaming(struct serio *ser_dev)
{
 unsigned char buf[] = { NVEC_PS2, CANCEL_AUTO_RECEIVE };

 nvec_write_async(ps2_dev.nvec, buf, sizeof(buf));
}
