
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_tcb_desc {int empkt_num; int* empkt_len; } ;
typedef int __le32 ;


 int memset (int *,int ,int) ;
 int set_earlymode_len0 (int *,int) ;
 int set_earlymode_len1 (int *,int) ;
 int set_earlymode_len2_1 (int *,int) ;
 int set_earlymode_len2_2 (int *,int) ;
 int set_earlymode_len3 (int *,int) ;
 int set_earlymode_len4 (int *,int) ;
 int set_earlymode_pktnum (int *,int) ;

__attribute__((used)) static void _rtl92ee_insert_emcontent(struct rtl_tcb_desc *ptcb_desc,
          u8 *virtualaddress8)
{
 u32 dwtmp;
 __le32 *virtualaddress = (__le32 *)virtualaddress8;

 memset(virtualaddress, 0, 8);

 set_earlymode_pktnum(virtualaddress, ptcb_desc->empkt_num);
 if (ptcb_desc->empkt_num == 1) {
  dwtmp = ptcb_desc->empkt_len[0];
 } else {
  dwtmp = ptcb_desc->empkt_len[0];
  dwtmp += ((dwtmp % 4) ? (4 - dwtmp % 4) : 0) + 4;
  dwtmp += ptcb_desc->empkt_len[1];
 }
 set_earlymode_len0(virtualaddress, dwtmp);

 if (ptcb_desc->empkt_num <= 3) {
  dwtmp = ptcb_desc->empkt_len[2];
 } else {
  dwtmp = ptcb_desc->empkt_len[2];
  dwtmp += ((dwtmp % 4) ? (4 - dwtmp % 4) : 0) + 4;
  dwtmp += ptcb_desc->empkt_len[3];
 }
 set_earlymode_len1(virtualaddress, dwtmp);
 if (ptcb_desc->empkt_num <= 5) {
  dwtmp = ptcb_desc->empkt_len[4];
 } else {
  dwtmp = ptcb_desc->empkt_len[4];
  dwtmp += ((dwtmp % 4) ? (4 - dwtmp % 4) : 0) + 4;
  dwtmp += ptcb_desc->empkt_len[5];
 }
 set_earlymode_len2_1(virtualaddress, dwtmp & 0xF);
 set_earlymode_len2_2(virtualaddress, dwtmp >> 4);
 if (ptcb_desc->empkt_num <= 7) {
  dwtmp = ptcb_desc->empkt_len[6];
 } else {
  dwtmp = ptcb_desc->empkt_len[6];
  dwtmp += ((dwtmp % 4) ? (4 - dwtmp % 4) : 0) + 4;
  dwtmp += ptcb_desc->empkt_len[7];
 }
 set_earlymode_len3(virtualaddress, dwtmp);
 if (ptcb_desc->empkt_num <= 9) {
  dwtmp = ptcb_desc->empkt_len[8];
 } else {
  dwtmp = ptcb_desc->empkt_len[8];
  dwtmp += ((dwtmp % 4) ? (4 - dwtmp % 4) : 0) + 4;
  dwtmp += ptcb_desc->empkt_len[9];
 }
 set_earlymode_len4(virtualaddress, dwtmp);
}
