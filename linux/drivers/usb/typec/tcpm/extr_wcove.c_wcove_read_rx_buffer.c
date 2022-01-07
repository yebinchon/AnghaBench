
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_typec {int regmap; } ;


 int USBC_RXINFO ;
 int USBC_RXINFO_RXBYTES (unsigned int) ;
 int USBC_RXSTATUS ;
 int USBC_RXSTATUS_RXCLEAR ;
 scalar_t__ USBC_RX_DATA ;
 int regmap_read (int ,scalar_t__,void*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int wcove_read_rx_buffer(struct wcove_typec *wcove, void *msg)
{
 unsigned int info;
 int ret;
 int i;

 ret = regmap_read(wcove->regmap, USBC_RXINFO, &info);
 if (ret)
  return ret;



 for (i = 0; i < USBC_RXINFO_RXBYTES(info); i++) {
  ret = regmap_read(wcove->regmap, USBC_RX_DATA + i, msg + i);
  if (ret)
   return ret;
 }

 return regmap_write(wcove->regmap, USBC_RXSTATUS,
       USBC_RXSTATUS_RXCLEAR);
}
