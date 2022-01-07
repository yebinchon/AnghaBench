
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; } ;






__attribute__((used)) static bool ni_tio_has_gate2_registers(const struct ni_gpct_device *counter_dev)
{
 switch (counter_dev->variant) {
 case 129:
 default:
  return 0;
 case 128:
 case 130:
  return 1;
 }
}
