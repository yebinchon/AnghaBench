
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct rx_pkt_attrib {int bdecrypted; int crc_err; int tcpchk_valid; int tcp_chkrpt; int ip_chkrpt; void* htc; void* mcs_rate; } ;
struct recv_stat {int rxdw3; int rxdw0; } ;


 int BIT (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
        struct recv_stat *prxstat)
{
 u16 drvinfo_sz;

 drvinfo_sz = (le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16;
 drvinfo_sz <<= 3;



 pattrib->bdecrypted = ((le32_to_cpu(prxstat->rxdw0) & BIT(27)) >> 27)
     ? 0 : 1;
 pattrib->crc_err = (le32_to_cpu(prxstat->rxdw0) & BIT(14)) >> 14;



 if (le32_to_cpu(prxstat->rxdw3) & BIT(13)) {
  pattrib->tcpchk_valid = 1;
  if (le32_to_cpu(prxstat->rxdw3) & BIT(11))
   pattrib->tcp_chkrpt = 1;
  else
   pattrib->tcp_chkrpt = 0;
  if (le32_to_cpu(prxstat->rxdw3) & BIT(12))
   pattrib->ip_chkrpt = 1;
  else
   pattrib->ip_chkrpt = 0;
 } else {
  pattrib->tcpchk_valid = 0;
 }
 pattrib->mcs_rate = (u8)((le32_to_cpu(prxstat->rxdw3)) & 0x3f);
 pattrib->htc = (u8)((le32_to_cpu(prxstat->rxdw3) >> 14) & 0x1);



}
