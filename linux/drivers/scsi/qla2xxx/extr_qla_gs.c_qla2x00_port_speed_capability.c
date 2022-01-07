
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
 int PORT_SPEED_10GB ;
 int PORT_SPEED_16GB ;
 int PORT_SPEED_1GB ;
 int PORT_SPEED_2GB ;
 int PORT_SPEED_32GB ;
 int PORT_SPEED_4GB ;
 int PORT_SPEED_64GB ;
 int PORT_SPEED_8GB ;
 int PORT_SPEED_UNKNOWN ;

__attribute__((used)) static uint16_t
qla2x00_port_speed_capability(uint16_t speed)
{
 switch (speed) {
 case 130:
  return PORT_SPEED_1GB;
 case 131:
  return PORT_SPEED_2GB;
 case 132:
  return PORT_SPEED_4GB;
 case 133:
  return PORT_SPEED_10GB;
 case 134:
  return PORT_SPEED_8GB;
 case 135:
  return PORT_SPEED_16GB;
 case 128:
  return PORT_SPEED_32GB;
 case 129:
  return PORT_SPEED_64GB;
 default:
  return PORT_SPEED_UNKNOWN;
 }
}
