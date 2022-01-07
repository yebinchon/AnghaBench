
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct udc {int rxfifo; } ;


 int VDBG (struct udc*,char*,int) ;
 int readl (int ) ;

__attribute__((used)) static int udc_rxfifo_read_dwords(struct udc *dev, u32 *buf, int dwords)
{
 int i;

 VDBG(dev, "udc_read_dwords(): %d dwords\n", dwords);

 for (i = 0; i < dwords; i++)
  *(buf + i) = readl(dev->rxfifo);
 return 0;
}
