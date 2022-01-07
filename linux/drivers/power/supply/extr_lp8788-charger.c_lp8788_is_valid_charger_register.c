
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ LP8788_CHG_END ;
 scalar_t__ LP8788_CHG_START ;

__attribute__((used)) static inline bool lp8788_is_valid_charger_register(u8 addr)
{
 return addr >= LP8788_CHG_START && addr <= LP8788_CHG_END;
}
