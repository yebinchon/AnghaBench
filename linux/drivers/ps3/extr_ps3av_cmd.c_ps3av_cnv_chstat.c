
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int const*,int) ;

__attribute__((used)) static void ps3av_cnv_chstat(u8 *chstat, const u8 *cs_info)
{
 memcpy(chstat, cs_info, 5);
}
