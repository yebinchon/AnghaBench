
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8788_charger {int lp; } ;


 int LP8788_CHG_INPUT_STATE_M ;
 int LP8788_CHG_STATUS ;
 int LP8788_FULL_FUNCTION ;
 int LP8788_SYSTEM_SUPPLY ;
 int lp8788_read_byte (int ,int ,int *) ;

__attribute__((used)) static bool lp8788_is_charger_detected(struct lp8788_charger *pchg)
{
 u8 data;

 lp8788_read_byte(pchg->lp, LP8788_CHG_STATUS, &data);
 data &= LP8788_CHG_INPUT_STATE_M;

 return data == LP8788_SYSTEM_SUPPLY || data == LP8788_FULL_FUNCTION;
}
