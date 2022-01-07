
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *nand_flash_manufacturer(int manuf_id) {
 switch(manuf_id) {
 case 131:
  return "AMD";
 case 130:
  return "NATSEMI";
 case 128:
  return "Toshiba";
 case 129:
  return "Samsung";
 default:
  return "unknown";
 }
}
