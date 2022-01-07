
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulpi {int dummy; } ;
struct qcom_usb_hsic_phy {int phy_clk; int cal_clk; int cal_sleep_clk; int pctl; struct ulpi* ulpi; } ;
struct pinctrl_state {int dummy; } ;
struct phy {int dummy; } ;


 scalar_t__ IS_ERR (struct pinctrl_state*) ;
 int PINCTRL_STATE_DEFAULT ;
 int PTR_ERR (struct pinctrl_state*) ;
 int ULPI_CLR (int ) ;
 int ULPI_HSIC_CFG ;
 int ULPI_HSIC_IO_CAL ;
 int ULPI_IFC_CTRL ;
 int ULPI_IFC_CTRL_AUTORESUME ;
 int ULPI_SET (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct qcom_usb_hsic_phy* phy_get_drvdata (struct phy*) ;
 struct pinctrl_state* pinctrl_lookup_state (int ,int ) ;
 int pinctrl_select_state (int ,struct pinctrl_state*) ;
 int ulpi_write (struct ulpi*,int ,int) ;

__attribute__((used)) static int qcom_usb_hsic_phy_power_on(struct phy *phy)
{
 struct qcom_usb_hsic_phy *uphy = phy_get_drvdata(phy);
 struct ulpi *ulpi = uphy->ulpi;
 struct pinctrl_state *pins_default;
 int ret;

 ret = clk_prepare_enable(uphy->phy_clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(uphy->cal_clk);
 if (ret)
  goto err_cal;

 ret = clk_prepare_enable(uphy->cal_sleep_clk);
 if (ret)
  goto err_sleep;


 ret = ulpi_write(ulpi, ULPI_HSIC_IO_CAL, 0xff);
 if (ret)
  goto err_ulpi;


 ret = ulpi_write(ulpi, ULPI_HSIC_CFG, 0xa8);
 if (ret)
  goto err_ulpi;


 pins_default = pinctrl_lookup_state(uphy->pctl, PINCTRL_STATE_DEFAULT);
 if (IS_ERR(pins_default))
  return PTR_ERR(pins_default);

 ret = pinctrl_select_state(uphy->pctl, pins_default);
 if (ret)
  goto err_ulpi;


 ret = ulpi_write(ulpi, ULPI_SET(ULPI_HSIC_CFG), 0x01);
 if (ret)
  goto err_ulpi;


 ret = ulpi_write(ulpi, ULPI_CLR(ULPI_IFC_CTRL),
    ULPI_IFC_CTRL_AUTORESUME);
 if (ret)
  goto err_ulpi;

 return ret;
err_ulpi:
 clk_disable_unprepare(uphy->cal_sleep_clk);
err_sleep:
 clk_disable_unprepare(uphy->cal_clk);
err_cal:
 clk_disable_unprepare(uphy->phy_clk);
 return ret;
}
