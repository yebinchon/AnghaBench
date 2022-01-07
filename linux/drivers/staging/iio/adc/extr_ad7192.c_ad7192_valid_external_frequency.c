
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ AD7192_EXT_FREQ_MHZ_MAX ;
 scalar_t__ AD7192_EXT_FREQ_MHZ_MIN ;

__attribute__((used)) static inline bool ad7192_valid_external_frequency(u32 freq)
{
 return (freq >= AD7192_EXT_FREQ_MHZ_MIN &&
  freq <= AD7192_EXT_FREQ_MHZ_MAX);
}
