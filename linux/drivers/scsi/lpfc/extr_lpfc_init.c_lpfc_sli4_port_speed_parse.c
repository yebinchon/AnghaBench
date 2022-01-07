
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct lpfc_hba {int dummy; } ;
__attribute__((used)) static uint32_t
lpfc_sli4_port_speed_parse(struct lpfc_hba *phba, uint32_t evt_code,
      uint8_t speed_code)
{
 uint32_t port_speed;

 switch (evt_code) {
 case 128:
  switch (speed_code) {
  case 140:
   port_speed = 0;
   break;
  case 145:
   port_speed = 10;
   break;
  case 147:
   port_speed = 100;
   break;
  case 144:
   port_speed = 1000;
   break;
  case 146:
   port_speed = 10000;
   break;
  case 143:
   port_speed = 20000;
   break;
  case 142:
   port_speed = 25000;
   break;
  case 141:
   port_speed = 40000;
   break;
  default:
   port_speed = 0;
  }
  break;
 case 129:
  switch (speed_code) {
  case 130:
   port_speed = 0;
   break;
  case 136:
   port_speed = 1000;
   break;
  case 135:
   port_speed = 2000;
   break;
  case 133:
   port_speed = 4000;
   break;
  case 131:
   port_speed = 8000;
   break;
  case 139:
   port_speed = 10000;
   break;
  case 137:
   port_speed = 16000;
   break;
  case 134:
   port_speed = 32000;
   break;
  case 132:
   port_speed = 64000;
   break;
  case 138:
   port_speed = 128000;
   break;
  default:
   port_speed = 0;
  }
  break;
 default:
  port_speed = 0;
 }
 return port_speed;
}
