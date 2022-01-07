
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_tcb_desc {int* empkt_len; int empkt_num; } ;


 int SET_EARLYMODE_LEN0 (int *,int) ;
 int SET_EARLYMODE_LEN1 (int *,int) ;
 int SET_EARLYMODE_LEN2_1 (int *,int) ;
 int SET_EARLYMODE_LEN2_2 (int *,int) ;
 int SET_EARLYMODE_LEN3 (int *,int) ;
 int SET_EARLYMODE_LEN4 (int *,int) ;
 int SET_EARLYMODE_PKTNUM (int *,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void _rtl92de_insert_emcontent(struct rtl_tcb_desc *ptcb_desc,
          u8 *virtualaddress)
{
 memset(virtualaddress, 0, 8);

 SET_EARLYMODE_PKTNUM(virtualaddress, ptcb_desc->empkt_num);
 SET_EARLYMODE_LEN0(virtualaddress, ptcb_desc->empkt_len[0]);
 SET_EARLYMODE_LEN1(virtualaddress, ptcb_desc->empkt_len[1]);
 SET_EARLYMODE_LEN2_1(virtualaddress, ptcb_desc->empkt_len[2] & 0xF);
 SET_EARLYMODE_LEN2_2(virtualaddress, ptcb_desc->empkt_len[2] >> 4);
 SET_EARLYMODE_LEN3(virtualaddress, ptcb_desc->empkt_len[3]);
 SET_EARLYMODE_LEN4(virtualaddress, ptcb_desc->empkt_len[4]);
}
