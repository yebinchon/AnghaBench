
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *qtnf_chipid_to_string(unsigned long chip_id)
{
 switch (chip_id) {
 case 128:
  return "Topaz";
 case 131:
  return "Pearl revA";
 case 130:
  return "Pearl revB";
 case 129:
  return "Pearl revC";
 default:
  return "unknown";
 }
}
