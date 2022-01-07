
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int FRAME_DESC_SZ ;

__attribute__((used)) static inline u8 rsi_get_rssi(u8 *addr)
{
 return *(u8 *)(addr + FRAME_DESC_SZ);
}
