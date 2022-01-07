
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {TYPE_1__* mfp; int * membase; } ;
struct TYPE_2__ {int pin; } ;


 int ENODEV ;
 int LTQ_PADC_MUX (int ) ;
 int PORT (int ) ;
 int PORTS ;
 int PORT_PIN (int ) ;
 int pad_w32 (int ,int,int ) ;
 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static inline int falcon_mux_apply(struct pinctrl_dev *pctrldev,
   int mfp, int mux)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctrldev);
 int port = PORT(info->mfp[mfp].pin);

 if ((port >= PORTS) || (!info->membase[port]))
  return -ENODEV;

 pad_w32(info->membase[port], mux,
  LTQ_PADC_MUX(PORT_PIN(info->mfp[mfp].pin)));
 return 0;
}
