
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct isp1362_hcd {int data_reg; } ;


 int DUMMY_DELAY_ACCESS ;
 int writel (int,int ) ;
 int writew (int,int ) ;

__attribute__((used)) static void isp1362_write_data32(struct isp1362_hcd *isp1362_hcd, u32 val)
{




 DUMMY_DELAY_ACCESS;
 writew((u16)val, isp1362_hcd->data_reg);
 DUMMY_DELAY_ACCESS;
 writew(val >> 16, isp1362_hcd->data_reg);

}
