
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci_data {int dummy; } ;
struct tcpci {int dummy; } ;
struct rt1711h_chip {int dummy; } ;


 int RT1711H_RTCTRL8 ;
 int RT1711H_RTCTRL8_SET (int ,int,int,int) ;
 int rt1711h_write8 (struct rt1711h_chip*,int ,int ) ;
 struct rt1711h_chip* tdata_to_rt1711h (struct tcpci_data*) ;

__attribute__((used)) static int rt1711h_set_vconn(struct tcpci *tcpci, struct tcpci_data *tdata,
        bool enable)
{
 struct rt1711h_chip *chip = tdata_to_rt1711h(tdata);

 return rt1711h_write8(chip, RT1711H_RTCTRL8,
         RT1711H_RTCTRL8_SET(0, 1, !enable, 2));
}
