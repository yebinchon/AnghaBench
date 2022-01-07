
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ is_11b_rate (int ) ;
 scalar_t__ is_ofdm_rate (int ) ;

__attribute__((used)) static inline bool is_11bg_rate(u8 rate)
{
 return (is_11b_rate(rate) || is_ofdm_rate(rate));
}
