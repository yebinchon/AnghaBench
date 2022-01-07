
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_power_domain_packet {int on; int domain; } ;
struct rpi_power_domain {scalar_t__ old_interface; int fw; int domain; } ;
typedef int packet ;


 int RPI_FIRMWARE_SET_DOMAIN_STATE ;
 int RPI_FIRMWARE_SET_POWER_STATE ;
 int rpi_firmware_property (int ,int ,struct rpi_power_domain_packet*,int) ;

__attribute__((used)) static int rpi_firmware_set_power(struct rpi_power_domain *rpi_domain, bool on)
{
 struct rpi_power_domain_packet packet;

 packet.domain = rpi_domain->domain;
 packet.on = on;
 return rpi_firmware_property(rpi_domain->fw,
         rpi_domain->old_interface ?
         RPI_FIRMWARE_SET_POWER_STATE :
         RPI_FIRMWARE_SET_DOMAIN_STATE,
         &packet, sizeof(packet));
}
