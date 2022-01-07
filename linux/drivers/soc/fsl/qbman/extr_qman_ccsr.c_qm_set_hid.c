
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_HID_CFG ;
 int qm_ccsr_out (int ,int ) ;

__attribute__((used)) static void qm_set_hid(void)
{
 qm_ccsr_out(REG_HID_CFG, 0);
}
