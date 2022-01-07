
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {int nvec; } ;


 unsigned char AUTO_RECEIVE_N ;
 unsigned char NVEC_PS2 ;
 unsigned char PACKET_SIZE ;
 int nvec_write_async (int ,unsigned char*,int) ;
 TYPE_1__ ps2_dev ;

__attribute__((used)) static int ps2_startstreaming(struct serio *ser_dev)
{
 unsigned char buf[] = { NVEC_PS2, AUTO_RECEIVE_N, PACKET_SIZE };

 return nvec_write_async(ps2_dev.nvec, buf, sizeof(buf));
}
