
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hvsi_priv {int dummy; } ;
struct hvsi_header {int dummy; } ;
struct TYPE_2__ {int len; int type; } ;
struct hvsi_data {TYPE_1__ hdr; int data; } ;


 int ENODEV ;
 int HVSI_MAX_OUTGOING_DATA ;
 int VS_DATA_PACKET_HEADER ;
 scalar_t__ WARN_ON (int) ;
 int hvsi_send_packet (struct hvsi_priv*,TYPE_1__*) ;
 int memcpy (int ,char const*,int) ;
 int min (int,int ) ;

int hvsilib_put_chars(struct hvsi_priv *pv, const char *buf, int count)
{
 struct hvsi_data dp;
 int rc, adjcount = min(count, HVSI_MAX_OUTGOING_DATA);

 if (WARN_ON(!pv))
  return -ENODEV;

 dp.hdr.type = VS_DATA_PACKET_HEADER;
 dp.hdr.len = adjcount + sizeof(struct hvsi_header);
 memcpy(dp.data, buf, adjcount);
 rc = hvsi_send_packet(pv, &dp.hdr);
 if (rc <= 0)
  return rc;
 return adjcount;
}
