
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isp1362_hcd {int dummy; } ;


 int HCDIRADDR ;
 int HCDIRADDR_ADDR (int) ;
 int HCDIRADDR_COUNT (int) ;
 int HCDMACFG ;
 int HCDMACFG_CTR_ENABLE ;
 int isp1362_clr_mask16 (struct isp1362_hcd*,int ,int ) ;
 int isp1362_write_reg32 (struct isp1362_hcd*,int ,int) ;

__attribute__((used)) static void isp1362_write_diraddr(struct isp1362_hcd *isp1362_hcd, u16 offset, u16 len)
{
 len = (len + 1) & ~1;

 isp1362_clr_mask16(isp1362_hcd, HCDMACFG, HCDMACFG_CTR_ENABLE);
 isp1362_write_reg32(isp1362_hcd, HCDIRADDR,
       HCDIRADDR_ADDR(offset) | HCDIRADDR_COUNT(len));
}
