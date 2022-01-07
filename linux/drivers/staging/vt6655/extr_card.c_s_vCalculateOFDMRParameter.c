
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BB_TYPE_11A ;
__attribute__((used)) static
void
s_vCalculateOFDMRParameter(
 unsigned char byRate,
 u8 bb_type,
 unsigned char *pbyTxRate,
 unsigned char *pbyRsvTime
)
{
 switch (byRate) {
 case 129:
  if (bb_type == BB_TYPE_11A) {
   *pbyTxRate = 0x9B;
   *pbyRsvTime = 44;
  } else {
   *pbyTxRate = 0x8B;
   *pbyRsvTime = 50;
  }
  break;

 case 128:
  if (bb_type == BB_TYPE_11A) {
   *pbyTxRate = 0x9F;
   *pbyRsvTime = 36;
  } else {
   *pbyTxRate = 0x8F;
   *pbyRsvTime = 42;
  }
  break;

 case 135:
  if (bb_type == BB_TYPE_11A) {
   *pbyTxRate = 0x9A;
   *pbyRsvTime = 32;
  } else {
   *pbyTxRate = 0x8A;
   *pbyRsvTime = 38;
  }
  break;

 case 134:
  if (bb_type == BB_TYPE_11A) {
   *pbyTxRate = 0x9E;
   *pbyRsvTime = 28;
  } else {
   *pbyTxRate = 0x8E;
   *pbyRsvTime = 34;
  }
  break;

 case 132:
  if (bb_type == BB_TYPE_11A) {
   *pbyTxRate = 0x9D;
   *pbyRsvTime = 24;
  } else {
   *pbyTxRate = 0x8D;
   *pbyRsvTime = 30;
  }
  break;

 case 131:
  if (bb_type == BB_TYPE_11A) {
   *pbyTxRate = 0x98;
   *pbyRsvTime = 24;
  } else {
   *pbyTxRate = 0x88;
   *pbyRsvTime = 30;
  }
  break;

 case 130:
  if (bb_type == BB_TYPE_11A) {
   *pbyTxRate = 0x9C;
   *pbyRsvTime = 24;
  } else {
   *pbyTxRate = 0x8C;
   *pbyRsvTime = 30;
  }
  break;

 case 133:
 default:
  if (bb_type == BB_TYPE_11A) {
   *pbyTxRate = 0x99;
   *pbyRsvTime = 28;
  } else {
   *pbyTxRate = 0x89;
   *pbyRsvTime = 34;
  }
  break;
 }
}
