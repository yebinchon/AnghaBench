
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int NUM_STA ;

__attribute__((used)) static inline u32 wifi_mac_hash(u8 *mac)
{
 u32 x;

 x = mac[0];
 x = (x << 2) ^ mac[1];
 x = (x << 2) ^ mac[2];
 x = (x << 2) ^ mac[3];
 x = (x << 2) ^ mac[4];
 x = (x << 2) ^ mac[5];
 x ^= x >> 8;
 x = x & (NUM_STA - 1);
 return x;
}
