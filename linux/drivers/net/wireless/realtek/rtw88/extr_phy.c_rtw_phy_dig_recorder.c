
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct rtw_dm_info {int igi_bitmap; int * fa_history; scalar_t__* igi_history; } ;



__attribute__((used)) static void rtw_phy_dig_recorder(struct rtw_dm_info *dm_info, u8 igi, u16 fa)
{
 u8 *igi_history;
 u16 *fa_history;
 u8 igi_bitmap;
 bool up;

 igi_bitmap = dm_info->igi_bitmap << 1 & 0xfe;
 igi_history = dm_info->igi_history;
 fa_history = dm_info->fa_history;

 up = igi > igi_history[0];
 igi_bitmap |= up;

 igi_history[3] = igi_history[2];
 igi_history[2] = igi_history[1];
 igi_history[1] = igi_history[0];
 igi_history[0] = igi;

 fa_history[3] = fa_history[2];
 fa_history[2] = fa_history[1];
 fa_history[1] = fa_history[0];
 fa_history[0] = fa;

 dm_info->igi_bitmap = igi_bitmap;
}
