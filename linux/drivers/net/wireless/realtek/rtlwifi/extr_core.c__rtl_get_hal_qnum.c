
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int AC0_BE ;
 int AC1_BK ;
 int AC2_VI ;
 int AC3_VO ;

__attribute__((used)) static int _rtl_get_hal_qnum(u16 queue)
{
 int qnum;

 switch (queue) {
 case 0:
  qnum = AC3_VO;
  break;
 case 1:
  qnum = AC2_VI;
  break;
 case 2:
  qnum = AC0_BE;
  break;
 case 3:
  qnum = AC1_BK;
  break;
 default:
  qnum = AC0_BE;
  break;
 }
 return qnum;
}
