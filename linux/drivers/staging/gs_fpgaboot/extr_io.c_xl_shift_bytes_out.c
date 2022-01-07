
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wbus { ____Placeholder_wbus } wbus ;


 int bus_2byte ;
 int byte0_out (unsigned char) ;
 int byte1_out (unsigned char) ;
 scalar_t__ likely (int) ;
 int xl_shift_cclk (int) ;

void xl_shift_bytes_out(enum wbus bus_byte, unsigned char *pdata)
{



 if (likely(bus_byte == bus_2byte))
  byte0_out(pdata[0]);

 byte1_out(pdata[1]);
 xl_shift_cclk(1);
}
