
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int dummy; } ;


 int BATT_OK_INCREMENT ;
 int BATT_OK_MAX_NR_INCREMENTS ;
 int BATT_OK_MIN ;

__attribute__((used)) static int ab8500_fg_battok_calc(struct ab8500_fg *di, int target)
{
 if (target > BATT_OK_MIN +
  (BATT_OK_INCREMENT * BATT_OK_MAX_NR_INCREMENTS))
  return BATT_OK_MAX_NR_INCREMENTS;
 if (target < BATT_OK_MIN)
  return 0;
 return (target - BATT_OK_MIN) / BATT_OK_INCREMENT;
}
