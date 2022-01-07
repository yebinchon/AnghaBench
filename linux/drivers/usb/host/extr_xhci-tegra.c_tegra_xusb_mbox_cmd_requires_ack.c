
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tegra_xusb_mbox_cmd { ____Placeholder_tegra_xusb_mbox_cmd } tegra_xusb_mbox_cmd ;






__attribute__((used)) static bool tegra_xusb_mbox_cmd_requires_ack(enum tegra_xusb_mbox_cmd cmd)
{
 switch (cmd) {
 case 128:
 case 130:
 case 129:
  return 0;

 default:
  return 1;
 }
}
