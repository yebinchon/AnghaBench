
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_priv {int (* put_chars ) (int ,char*,int ) ;int termno; int seqno; } ;
struct hvsi_header {int len; int seqno; } ;


 int atomic_inc_return (int *) ;
 int cpu_to_be16 (int ) ;
 int stub1 (int ,char*,int ) ;

__attribute__((used)) static int hvsi_send_packet(struct hvsi_priv *pv, struct hvsi_header *packet)
{
 packet->seqno = cpu_to_be16(atomic_inc_return(&pv->seqno));


 return pv->put_chars(pv->termno, (char *)packet, packet->len);
}
