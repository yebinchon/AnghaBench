
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hvsi_priv {scalar_t__ established; } ;
struct TYPE_2__ {int len; int type; } ;
struct hvsi_control {TYPE_1__ hdr; int verb; } ;


 int VSV_CLOSE_PROTOCOL ;
 int VS_CONTROL_PACKET_HEADER ;
 int cpu_to_be16 (int ) ;
 int hvsi_send_packet (struct hvsi_priv*,TYPE_1__*) ;

__attribute__((used)) static int hvsi_send_close(struct hvsi_priv *pv)
{
 struct hvsi_control ctrl;

 pv->established = 0;

 ctrl.hdr.type = VS_CONTROL_PACKET_HEADER;
 ctrl.hdr.len = sizeof(struct hvsi_control);
 ctrl.verb = cpu_to_be16(VSV_CLOSE_PROTOCOL);
 return hvsi_send_packet(pv, &ctrl.hdr);
}
