
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int rf_type; } ;



__attribute__((used)) static inline u8 get_rf_type(struct rtl_phy *rtlphy)
{
 return rtlphy->rf_type;
}
