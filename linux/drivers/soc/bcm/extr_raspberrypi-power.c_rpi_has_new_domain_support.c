
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_power_domains {int fw; } ;
struct rpi_power_domain_packet {int on; int domain; } ;
typedef int packet ;


 int RPI_FIRMWARE_GET_DOMAIN_STATE ;
 int RPI_POWER_DOMAIN_ARM ;
 int rpi_firmware_property (int ,int ,struct rpi_power_domain_packet*,int) ;

__attribute__((used)) static bool
rpi_has_new_domain_support(struct rpi_power_domains *rpi_domains)
{
 struct rpi_power_domain_packet packet;
 int ret;

 packet.domain = RPI_POWER_DOMAIN_ARM;
 packet.on = ~0;

 ret = rpi_firmware_property(rpi_domains->fw,
        RPI_FIRMWARE_GET_DOMAIN_STATE,
        &packet, sizeof(packet));

 return ret == 0 && packet.on != ~0;
}
