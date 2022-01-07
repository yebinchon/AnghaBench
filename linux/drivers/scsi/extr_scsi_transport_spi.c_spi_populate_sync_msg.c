
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char EXTENDED_MESSAGE ;
 unsigned char EXTENDED_SDTR ;

int spi_populate_sync_msg(unsigned char *msg, int period, int offset)
{
 msg[0] = EXTENDED_MESSAGE;
 msg[1] = 3;
 msg[2] = EXTENDED_SDTR;
 msg[3] = period;
 msg[4] = offset;
 return 5;
}
