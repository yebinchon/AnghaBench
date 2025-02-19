
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pinctrl_dev {int dummy; } ;
struct dc_pinmap {scalar_t__ regs; } ;


 int dc_client_sel (unsigned int,int*,int*) ;
 struct dc_pinmap* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readb_relaxed (scalar_t__) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static int dc_set_mux(struct pinctrl_dev *pctldev, unsigned selector,
        unsigned group)
{
 struct dc_pinmap *pmap = pinctrl_dev_get_drvdata(pctldev);
 int bit_off, reg_off;
 u8 reg;

 dc_client_sel(group, &reg_off, &bit_off);

 reg = readb_relaxed(pmap->regs + reg_off);
 reg &= ~(3 << bit_off);
 reg |= (selector << bit_off);
 writeb_relaxed(reg, pmap->regs + reg_off);

 return 0;
}
