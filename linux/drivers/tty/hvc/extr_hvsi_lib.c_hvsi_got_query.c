
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int len; int type; } ;
struct TYPE_4__ {int version; } ;
struct hvsi_query_response {TYPE_3__ hdr; int query_seqno; TYPE_1__ u; int verb; } ;
struct TYPE_5__ {int seqno; } ;
struct hvsi_query {TYPE_2__ hdr; int verb; } ;
struct hvsi_priv {int established; int termno; scalar_t__ inbuf; } ;


 int HVSI_VERSION ;
 scalar_t__ VSV_SEND_VERSION_NUMBER ;
 int VS_QUERY_RESPONSE_PACKET_HEADER ;
 scalar_t__ be16_to_cpu (int ) ;
 int cpu_to_be16 (scalar_t__) ;
 int hvsi_send_packet (struct hvsi_priv*,TYPE_3__*) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static void hvsi_got_query(struct hvsi_priv *pv)
{
 struct hvsi_query *pkt = (struct hvsi_query *)pv->inbuf;
 struct hvsi_query_response r;


 if (be16_to_cpu(pkt->verb) != VSV_SEND_VERSION_NUMBER)
  return;

 pr_devel("HVSI@%x: Got version query, sending response...\n",
   pv->termno);


 r.hdr.type = VS_QUERY_RESPONSE_PACKET_HEADER;
 r.hdr.len = sizeof(struct hvsi_query_response);
 r.verb = cpu_to_be16(VSV_SEND_VERSION_NUMBER);
 r.u.version = HVSI_VERSION;
 r.query_seqno = pkt->hdr.seqno;
 hvsi_send_packet(pv, &r.hdr);


 pv->established = 1;
}
