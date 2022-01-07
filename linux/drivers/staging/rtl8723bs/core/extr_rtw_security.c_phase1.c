
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef unsigned short u16 ;
typedef int sint ;


 unsigned short Hi16 (int ) ;
 unsigned short Lo16 (int ) ;
 unsigned short Mk16 (int const,int const) ;
 int PHASE1_LOOP_CNT ;
 unsigned short TK16 (int) ;
 scalar_t__ _S_ (unsigned short) ;

__attribute__((used)) static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
{
 sint i;


 p1k[0] = Lo16(iv32);
 p1k[1] = Hi16(iv32);
 p1k[2] = Mk16(ta[1], ta[0]);
 p1k[3] = Mk16(ta[3], ta[2]);
 p1k[4] = Mk16(ta[5], ta[4]);



 for (i = 0; i < PHASE1_LOOP_CNT; i++) {

  p1k[0] += _S_(p1k[4] ^ TK16((i&1)+0));
  p1k[1] += _S_(p1k[0] ^ TK16((i&1)+2));
  p1k[2] += _S_(p1k[1] ^ TK16((i&1)+4));
  p1k[3] += _S_(p1k[2] ^ TK16((i&1)+6));
  p1k[4] += _S_(p1k[3] ^ TK16((i&1)+0));
  p1k[4] += (unsigned short)i;
 }
}
