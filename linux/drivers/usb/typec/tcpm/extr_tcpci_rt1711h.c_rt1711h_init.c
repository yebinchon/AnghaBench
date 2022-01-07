
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci_data {int dummy; } ;
struct tcpci {int dummy; } ;
struct rt1711h_chip {int dummy; } ;


 int RT1711H_RTCTRL11 ;
 int RT1711H_RTCTRL11_SET (int,int) ;
 int RT1711H_RTCTRL14 ;
 int RT1711H_RTCTRL15 ;
 int RT1711H_RTCTRL16 ;
 int RT1711H_RTCTRL8 ;
 int RT1711H_RTCTRL8_SET (int ,int,int,int) ;
 int rt1711h_write16 (struct rt1711h_chip*,int ,int) ;
 int rt1711h_write8 (struct rt1711h_chip*,int ,int) ;
 struct rt1711h_chip* tdata_to_rt1711h (struct tcpci_data*) ;

__attribute__((used)) static int rt1711h_init(struct tcpci *tcpci, struct tcpci_data *tdata)
{
 int ret;
 struct rt1711h_chip *chip = tdata_to_rt1711h(tdata);


 ret = rt1711h_write8(chip, RT1711H_RTCTRL8,
        RT1711H_RTCTRL8_SET(0, 1, 1, 2));
 if (ret < 0)
  return ret;


 ret = rt1711h_write8(chip, RT1711H_RTCTRL11,
        RT1711H_RTCTRL11_SET(1, 0x0F));
 if (ret < 0)
  return ret;


 ret = rt1711h_write8(chip, RT1711H_RTCTRL14, 0x0F);
 if (ret < 0)
  return ret;


 ret = rt1711h_write8(chip, RT1711H_RTCTRL15, 0x04);
 if (ret < 0)
  return ret;


 return rt1711h_write16(chip, RT1711H_RTCTRL16, 330);
}
