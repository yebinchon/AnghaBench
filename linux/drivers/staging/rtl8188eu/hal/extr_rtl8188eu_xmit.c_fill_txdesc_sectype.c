
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_desc {int txdw2; int txdw1; } ;
struct pkt_attrib {int encrypt; int bswenc; } ;


 int AMPDU_DENSITY_SHT ;
 int SEC_TYPE_SHT ;






 int cpu_to_le32 (int) ;

__attribute__((used)) static void fill_txdesc_sectype(struct pkt_attrib *pattrib, struct tx_desc *ptxdesc)
{
 if ((pattrib->encrypt > 0) && !pattrib->bswenc) {
  switch (pattrib->encrypt) {

  case 128:
  case 129:
   ptxdesc->txdw1 |= cpu_to_le32((0x01<<SEC_TYPE_SHT)&0x00c00000);
   ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
   break;
  case 131:
  case 130:
   ptxdesc->txdw1 |= cpu_to_le32((0x01<<SEC_TYPE_SHT)&0x00c00000);
   ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
   break;
  case 133:
   ptxdesc->txdw1 |= cpu_to_le32((0x03<<SEC_TYPE_SHT)&0x00c00000);
   ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
   break;
  case 132:
  default:
   break;
  }
 }
}
