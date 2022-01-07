
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tx_desc {int txdw7; int txdw6; int txdw5; int txdw4; int txdw3; int txdw2; int txdw1; int txdw0; } ;
struct adapter {int dummy; } ;


 int DATA_FRAMETAG ;
 int DBG_88E (char*,...) ;
 int HAL_DEF_DBG_DUMP_TXPKT ;
 int MGNT_FRAMETAG ;
 int rtw_hal_get_def_var (struct adapter*,int ,int*) ;

void _dbg_dump_tx_info(struct adapter *padapter, int frame_tag,
         struct tx_desc *ptxdesc)
{
 u8 dmp_txpkt;
 bool dump_txdesc = 0;

 rtw_hal_get_def_var(padapter, HAL_DEF_DBG_DUMP_TXPKT, &(dmp_txpkt));

 if (dmp_txpkt == 1) {
  DBG_88E("dump tx_desc for data frame\n");
  if ((frame_tag & 0x0f) == DATA_FRAMETAG)
   dump_txdesc = 1;
 } else if (dmp_txpkt == 2) {
  DBG_88E("dump tx_desc for mgnt frame\n");
  if ((frame_tag & 0x0f) == MGNT_FRAMETAG)
   dump_txdesc = 1;
 }

 if (dump_txdesc) {
  DBG_88E("=====================================\n");
  DBG_88E("txdw0(0x%08x)\n", ptxdesc->txdw0);
  DBG_88E("txdw1(0x%08x)\n", ptxdesc->txdw1);
  DBG_88E("txdw2(0x%08x)\n", ptxdesc->txdw2);
  DBG_88E("txdw3(0x%08x)\n", ptxdesc->txdw3);
  DBG_88E("txdw4(0x%08x)\n", ptxdesc->txdw4);
  DBG_88E("txdw5(0x%08x)\n", ptxdesc->txdw5);
  DBG_88E("txdw6(0x%08x)\n", ptxdesc->txdw6);
  DBG_88E("txdw7(0x%08x)\n", ptxdesc->txdw7);
  DBG_88E("=====================================\n");
 }
}
