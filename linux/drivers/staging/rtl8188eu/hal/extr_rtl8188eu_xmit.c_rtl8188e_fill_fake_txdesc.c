
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct tx_desc {int txdw4; int txdw2; int txdw3; int txdw1; int txdw0; } ;
struct adapter {int dummy; } ;


 int BIT (int) ;
 int FSG ;
 int LSG ;
 int NAVUSEHDR ;
 int OFFSET_SHT ;
 int OFFSET_SZ ;
 int OWN ;
 int QSEL_SHT ;
 int QSLT_MGNT ;
 int TXDESC_SIZE ;
 int cpu_to_le32 (int) ;
 int memset (scalar_t__*,int ,int) ;
 int rtl8188eu_cal_txdesc_chksum (struct tx_desc*) ;

void rtl8188e_fill_fake_txdesc(struct adapter *adapt, u8 *desc, u32 BufferLen, u8 ispspoll, u8 is_btqosnull)
{
 struct tx_desc *ptxdesc;


 ptxdesc = (struct tx_desc *)desc;
 memset(desc, 0, TXDESC_SIZE);


 ptxdesc->txdw0 |= cpu_to_le32(OWN | FSG | LSG);

 ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE+OFFSET_SZ)<<OFFSET_SHT)&0x00ff0000);

 ptxdesc->txdw0 |= cpu_to_le32(BufferLen&0x0000ffff);


 ptxdesc->txdw1 |= cpu_to_le32((QSLT_MGNT<<QSEL_SHT)&0x00001f00);


 if (ispspoll) {
  ptxdesc->txdw1 |= cpu_to_le32(NAVUSEHDR);
 } else {
  ptxdesc->txdw4 |= cpu_to_le32(BIT(7));
  ptxdesc->txdw3 |= cpu_to_le32((8 << 28));
 }

 if (is_btqosnull)
  ptxdesc->txdw2 |= cpu_to_le32(BIT(23));


 ptxdesc->txdw4 |= cpu_to_le32(BIT(8));



 rtl8188eu_cal_txdesc_chksum(ptxdesc);
}
