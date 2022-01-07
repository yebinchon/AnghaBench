
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




 int RSI_COEX_Q_BT ;
 int RSI_COEX_Q_COMMON ;
 int RSI_COEX_Q_INVALID ;
 int RSI_COEX_Q_WLAN ;


__attribute__((used)) static inline int rsi_map_coex_q(u8 hal_queue)
{
 switch (hal_queue) {
 case 129:
  return RSI_COEX_Q_COMMON;
 case 128:
  return RSI_COEX_Q_WLAN;
 case 130:
  return RSI_COEX_Q_BT;
 }
 return RSI_COEX_Q_INVALID;
}
