
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void encode_l12_threshold(u32 threshold_us, u32 *scale, u32 *value)
{
 u32 threshold_ns = threshold_us * 1000;


 if (threshold_ns < 32) {
  *scale = 0;
  *value = threshold_ns;
 } else if (threshold_ns < 1024) {
  *scale = 1;
  *value = threshold_ns >> 5;
 } else if (threshold_ns < 32768) {
  *scale = 2;
  *value = threshold_ns >> 10;
 } else if (threshold_ns < 1048576) {
  *scale = 3;
  *value = threshold_ns >> 15;
 } else if (threshold_ns < 33554432) {
  *scale = 4;
  *value = threshold_ns >> 20;
 } else {
  *scale = 5;
  *value = threshold_ns >> 25;
 }
}
