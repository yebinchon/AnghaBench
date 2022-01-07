
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lpfc_hba {int dummy; } ;
 int LPFC_LINK_SPEED_128GHZ ;
 int LPFC_LINK_SPEED_16GHZ ;
 int LPFC_LINK_SPEED_1GHZ ;
 int LPFC_LINK_SPEED_256GHZ ;
 int LPFC_LINK_SPEED_2GHZ ;
 int LPFC_LINK_SPEED_32GHZ ;
 int LPFC_LINK_SPEED_4GHZ ;
 int LPFC_LINK_SPEED_64GHZ ;
 int LPFC_LINK_SPEED_8GHZ ;

__attribute__((used)) static uint8_t
lpfc_async_link_speed_to_read_top(struct lpfc_hba *phba, uint8_t speed_code)
{
 uint8_t port_speed;

 switch (speed_code) {
 case 134:
  port_speed = LPFC_LINK_SPEED_1GHZ;
  break;
 case 132:
  port_speed = LPFC_LINK_SPEED_2GHZ;
  break;
 case 130:
  port_speed = LPFC_LINK_SPEED_4GHZ;
  break;
 case 128:
  port_speed = LPFC_LINK_SPEED_8GHZ;
  break;
 case 135:
  port_speed = LPFC_LINK_SPEED_16GHZ;
  break;
 case 131:
  port_speed = LPFC_LINK_SPEED_32GHZ;
  break;
 case 129:
  port_speed = LPFC_LINK_SPEED_64GHZ;
  break;
 case 136:
  port_speed = LPFC_LINK_SPEED_128GHZ;
  break;
 case 133:
  port_speed = LPFC_LINK_SPEED_256GHZ;
  break;
 default:
  port_speed = 0;
  break;
 }

 return port_speed;
}
