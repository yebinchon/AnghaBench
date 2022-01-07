
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct rtllib_snap_hdr {int dsap; int ssap; int ctrl; void** oui; } ;
typedef int __be16 ;


 void** P802_1H_OUI ;
 void** RFC1042_OUI ;
 int SNAP_SIZE ;
 int htons (int) ;

__attribute__((used)) static int rtllib_put_snap(u8 *data, u16 h_proto)
{
 struct rtllib_snap_hdr *snap;
 u8 *oui;

 snap = (struct rtllib_snap_hdr *)data;
 snap->dsap = 0xaa;
 snap->ssap = 0xaa;
 snap->ctrl = 0x03;

 if (h_proto == 0x8137 || h_proto == 0x80f3)
  oui = P802_1H_OUI;
 else
  oui = RFC1042_OUI;
 snap->oui[0] = oui[0];
 snap->oui[1] = oui[1];
 snap->oui[2] = oui[2];

 *(__be16 *)(data + SNAP_SIZE) = htons(h_proto);

 return SNAP_SIZE + sizeof(u16);
}
