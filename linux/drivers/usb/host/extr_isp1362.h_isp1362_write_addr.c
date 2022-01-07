
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1362_hcd {int addr_reg; } ;
typedef int isp1362_reg_t ;


 int DUMMY_DELAY_ACCESS ;
 int ISP1362_REG_NO (int ) ;
 int REG_ACCESS_TEST (int ) ;
 int isp1362_delay (struct isp1362_hcd*,int) ;
 int writew (int ,int ) ;

__attribute__((used)) static void isp1362_write_addr(struct isp1362_hcd *isp1362_hcd, isp1362_reg_t reg)
{
 REG_ACCESS_TEST(reg);
 DUMMY_DELAY_ACCESS;
 writew(ISP1362_REG_NO(reg), isp1362_hcd->addr_reg);
 DUMMY_DELAY_ACCESS;
 isp1362_delay(isp1362_hcd, 1);
}
