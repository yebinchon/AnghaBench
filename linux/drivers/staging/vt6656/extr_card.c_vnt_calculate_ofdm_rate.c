
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int BB_TYPE_11A ;
__attribute__((used)) static void vnt_calculate_ofdm_rate(u16 rate, u8 bb_type,
        u8 *tx_rate, u8 *rsv_time)
{
 switch (rate) {
 case 129:
  if (bb_type == BB_TYPE_11A) {
   *tx_rate = 0x9b;
   *rsv_time = 24;
  } else {
   *tx_rate = 0x8b;
   *rsv_time = 30;
  }
  break;
 case 128:
  if (bb_type == BB_TYPE_11A) {
   *tx_rate = 0x9f;
   *rsv_time = 16;
  } else {
   *tx_rate = 0x8f;
   *rsv_time = 22;
  }
  break;
 case 135:
  if (bb_type == BB_TYPE_11A) {
   *tx_rate = 0x9a;
   *rsv_time = 12;
  } else {
   *tx_rate = 0x8a;
   *rsv_time = 18;
  }
  break;
 case 134:
  if (bb_type == BB_TYPE_11A) {
   *tx_rate = 0x9e;
   *rsv_time = 8;
  } else {
   *tx_rate = 0x8e;
   *rsv_time = 14;
  }
  break;
 case 132:
  if (bb_type == BB_TYPE_11A) {
   *tx_rate = 0x9d;
   *rsv_time = 4;
  } else {
   *tx_rate = 0x8d;
   *rsv_time = 10;
  }
  break;
 case 131:
  if (bb_type == BB_TYPE_11A) {
   *tx_rate = 0x98;
   *rsv_time = 4;
  } else {
   *tx_rate = 0x88;
   *rsv_time = 10;
  }
  break;
 case 130:
  if (bb_type == BB_TYPE_11A) {
   *tx_rate = 0x9c;
   *rsv_time = 4;
  } else {
   *tx_rate = 0x8c;
   *rsv_time = 10;
  }
  break;
 case 133:
 default:
  if (bb_type == BB_TYPE_11A) {
   *tx_rate = 0x99;
   *rsv_time = 8;
  } else {
   *tx_rate = 0x89;
   *rsv_time = 14;
  }
  break;
 }
}
