
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {int encrypt; int bswenc; } ;
__attribute__((used)) static u8 fill_txdesc_sectype(struct pkt_attrib *pattrib)
{
 u8 sectype = 0;
 if ((pattrib->encrypt > 0) && !pattrib->bswenc) {
  switch (pattrib->encrypt) {

  case 128:
  case 129:
  case 131:
  case 130:
   sectype = 1;
   break;

  case 133:
   sectype = 3;
   break;

  case 132:
  default:
   break;
  }
 }
 return sectype;
}
