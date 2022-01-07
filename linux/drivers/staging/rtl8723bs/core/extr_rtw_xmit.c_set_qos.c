
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct pkt_file {int pkt; } ;
struct pkt_attrib {int ether_type; int priority; int subtype; int hdrlen; } ;
struct iphdr {int tos; } ;
struct ethhdr {int dummy; } ;
typedef int s32 ;
typedef int ip_hdr ;


 int ETH_HLEN ;
 int WIFI_QOS_DATA_TYPE ;
 int WLAN_HDR_A3_QOS_LEN ;
 int _rtw_open_pktfile (int ,struct pkt_file*) ;
 int _rtw_pktfile_read (struct pkt_file*,unsigned char*,int) ;

__attribute__((used)) static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
{
 struct ethhdr etherhdr;
 struct iphdr ip_hdr;
 s32 UserPriority = 0;


 _rtw_open_pktfile(ppktfile->pkt, ppktfile);
 _rtw_pktfile_read(ppktfile, (unsigned char *)&etherhdr, ETH_HLEN);


 if (pattrib->ether_type == 0x0800) {
  _rtw_pktfile_read(ppktfile, (u8 *)&ip_hdr, sizeof(ip_hdr));

  UserPriority = ip_hdr.tos >> 5;
 }
 pattrib->priority = UserPriority;
 pattrib->hdrlen = WLAN_HDR_A3_QOS_LEN;
 pattrib->subtype = WIFI_QOS_DATA_TYPE;
}
