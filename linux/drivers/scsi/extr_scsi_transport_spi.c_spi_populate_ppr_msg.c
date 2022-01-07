
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char EXTENDED_MESSAGE ;
 unsigned char EXTENDED_PPR ;

int spi_populate_ppr_msg(unsigned char *msg, int period, int offset,
  int width, int options)
{
 msg[0] = EXTENDED_MESSAGE;
 msg[1] = 6;
 msg[2] = EXTENDED_PPR;
 msg[3] = period;
 msg[4] = 0;
 msg[5] = offset;
 msg[6] = width;
 msg[7] = options;
 return 8;
}
