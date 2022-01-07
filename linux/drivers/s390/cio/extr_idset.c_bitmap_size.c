
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_TO_LONGS (int) ;

__attribute__((used)) static inline unsigned long bitmap_size(int num_ssid, int num_id)
{
 return BITS_TO_LONGS(num_ssid * num_id) * sizeof(unsigned long);
}
