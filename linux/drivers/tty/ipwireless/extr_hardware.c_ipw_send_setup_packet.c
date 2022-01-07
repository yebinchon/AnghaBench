
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_setup_get_version_qry {int dummy; } ;
struct TYPE_2__ {int length; } ;
struct ipw_setup_get_version_query_packet {TYPE_1__ header; } ;
struct ipw_hardware {int dummy; } ;


 int ADDR_SETUP_PROT ;
 int PRIO_SETUP ;
 int TL_PROTOCOLID_SETUP ;
 int TL_SETUP_SIGNO_GET_VERSION_QRY ;
 struct ipw_setup_get_version_query_packet* alloc_ctrl_packet (int,int ,int ,int ) ;
 int send_packet (struct ipw_hardware*,int ,TYPE_1__*) ;

__attribute__((used)) static void ipw_send_setup_packet(struct ipw_hardware *hw)
{
 struct ipw_setup_get_version_query_packet *ver_packet;

 ver_packet = alloc_ctrl_packet(
   sizeof(struct ipw_setup_get_version_query_packet),
   ADDR_SETUP_PROT, TL_PROTOCOLID_SETUP,
   TL_SETUP_SIGNO_GET_VERSION_QRY);
 if (!ver_packet)
  return;
 ver_packet->header.length = sizeof(struct tl_setup_get_version_qry);




 send_packet(hw, PRIO_SETUP, &ver_packet->header);
}
