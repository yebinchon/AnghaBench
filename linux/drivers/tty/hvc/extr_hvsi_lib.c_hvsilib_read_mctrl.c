
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int type; } ;
struct hvsi_query {TYPE_1__ hdr; int verb; } ;
struct hvsi_priv {scalar_t__ mctrl_update; int established; int termno; } ;


 int EIO ;
 int ENXIO ;
 int VSV_SEND_MODEM_CTL_STATUS ;
 int VS_QUERY_PACKET_HEADER ;
 int cpu_to_be16 (int ) ;
 int hvsi_get_packet (struct hvsi_priv*) ;
 int hvsi_send_packet (struct hvsi_priv*,TYPE_1__*) ;
 int maybe_msleep (int) ;
 int pr_devel (char*,int ,...) ;

int hvsilib_read_mctrl(struct hvsi_priv *pv)
{
 struct hvsi_query q;
 int rc, timeout;

 pr_devel("HVSI@%x: Querying modem control status...\n",
   pv->termno);

 pv->mctrl_update = 0;
 q.hdr.type = VS_QUERY_PACKET_HEADER;
 q.hdr.len = sizeof(struct hvsi_query);
 q.verb = cpu_to_be16(VSV_SEND_MODEM_CTL_STATUS);
 rc = hvsi_send_packet(pv, &q.hdr);
 if (rc <= 0) {
  pr_devel("HVSI@%x: Error %d...\n", pv->termno, rc);
  return rc;
 }


 for (timeout = 0; timeout < 20; timeout++) {
  if (!pv->established)
   return -ENXIO;
  if (pv->mctrl_update)
   return 0;
  if (!hvsi_get_packet(pv))
   maybe_msleep(10);
 }
 return -EIO;
}
