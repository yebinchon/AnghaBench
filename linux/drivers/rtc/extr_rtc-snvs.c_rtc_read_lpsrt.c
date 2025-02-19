
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct snvs_rtc_data {scalar_t__ offset; int regmap; } ;


 scalar_t__ SNVS_LPSRTCLR ;
 scalar_t__ SNVS_LPSRTCMR ;
 int regmap_read (int ,scalar_t__,int*) ;

__attribute__((used)) static u64 rtc_read_lpsrt(struct snvs_rtc_data *data)
{
 u32 msb, lsb;

 regmap_read(data->regmap, data->offset + SNVS_LPSRTCMR, &msb);
 regmap_read(data->regmap, data->offset + SNVS_LPSRTCLR, &lsb);
 return (u64)msb << 32 | lsb;
}
