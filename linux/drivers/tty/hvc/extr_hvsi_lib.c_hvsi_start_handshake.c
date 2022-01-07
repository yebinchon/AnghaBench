
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int type; } ;
struct hvsi_query {TYPE_1__ hdr; int verb; } ;
struct hvsi_priv {int termno; int seqno; scalar_t__ established; } ;


 int VSV_SEND_VERSION_NUMBER ;
 int VS_QUERY_PACKET_HEADER ;
 int atomic_set (int *,int ) ;
 int cpu_to_be16 (int ) ;
 int hvsi_send_packet (struct hvsi_priv*,TYPE_1__*) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static void hvsi_start_handshake(struct hvsi_priv *pv)
{
 struct hvsi_query q;


 pv->established = 0;
 atomic_set(&pv->seqno, 0);

 pr_devel("HVSI@%x: Handshaking started\n", pv->termno);


 q.hdr.type = VS_QUERY_PACKET_HEADER;
 q.hdr.len = sizeof(struct hvsi_query);
 q.verb = cpu_to_be16(VSV_SEND_VERSION_NUMBER);
 hvsi_send_packet(pv, &q.hdr);
}
