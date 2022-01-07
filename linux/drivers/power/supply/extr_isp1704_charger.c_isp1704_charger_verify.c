
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isp1704_charger {int dummy; } ;


 int ISP1704_PWR_CTRL ;
 int ISP1704_PWR_CTRL_DP_WKPU_EN ;
 int ULPI_CLR (int ) ;
 int ULPI_DEBUG ;
 int ULPI_FUNC_CTRL ;
 int ULPI_FUNC_CTRL_OPMODE_MASK ;
 int ULPI_FUNC_CTRL_RESET ;
 int ULPI_FUNC_CTRL_TERMSELECT ;
 int ULPI_OTG_CTRL ;
 int ULPI_OTG_CTRL_DM_PULLDOWN ;
 int ULPI_OTG_CTRL_DP_PULLDOWN ;
 int ULPI_SET (int ) ;
 int isp1704_read (struct isp1704_charger*,int ) ;
 int isp1704_write (struct isp1704_charger*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline int isp1704_charger_verify(struct isp1704_charger *isp)
{
 int ret = 0;
 u8 r;


 r = isp1704_read(isp, ULPI_FUNC_CTRL);
 r |= ULPI_FUNC_CTRL_RESET;
 isp1704_write(isp, ULPI_FUNC_CTRL, r);
 usleep_range(1000, 2000);


 r &= ~(ULPI_FUNC_CTRL_RESET | ULPI_FUNC_CTRL_OPMODE_MASK);
 isp1704_write(isp, ULPI_FUNC_CTRL, r);


 r = ULPI_OTG_CTRL_DP_PULLDOWN | ULPI_OTG_CTRL_DM_PULLDOWN;
 isp1704_write(isp, ULPI_CLR(ULPI_OTG_CTRL), r);


 r = ULPI_FUNC_CTRL_TERMSELECT | ULPI_FUNC_CTRL_RESET;
 isp1704_write(isp, ULPI_SET(ULPI_FUNC_CTRL), r);
 usleep_range(1000, 2000);


 if (!isp1704_read(isp, ULPI_DEBUG)) {

  isp1704_write(isp, ULPI_CLR(ULPI_FUNC_CTRL),
    ULPI_FUNC_CTRL_TERMSELECT);
  return 1;
 }




 isp1704_write(isp, ULPI_SET(ISP1704_PWR_CTRL),
   ISP1704_PWR_CTRL_DP_WKPU_EN);


 isp1704_write(isp, ULPI_CLR(ULPI_FUNC_CTRL),
   ULPI_FUNC_CTRL_TERMSELECT);


 isp1704_write(isp, ULPI_SET(ULPI_OTG_CTRL),
   ULPI_OTG_CTRL_DM_PULLDOWN);


 if (!(isp1704_read(isp, ULPI_DEBUG)))
  ret = 1;


 isp1704_write(isp, ULPI_CLR(ISP1704_PWR_CTRL),
   ISP1704_PWR_CTRL_DP_WKPU_EN);

 return ret;
}
