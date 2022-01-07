
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ab8500 {int dummy; } ;
struct TYPE_2__ {void* match_size; void* match; int init_size; int init; void* info_size; void* info; } ;


 int AB8500_NUM_REGULATOR_REGISTERS ;
 int AB8505_NUM_REGULATOR_REGISTERS ;
 void* ARRAY_SIZE (void*) ;
 int ab8500_reg_init ;
 void* ab8500_regulator_info ;
 void* ab8500_regulator_match ;
 int ab8505_reg_init ;
 void* ab8505_regulator_info ;
 void* ab8505_regulator_match ;
 TYPE_1__ abx500_regulator ;
 scalar_t__ is_ab8505 (struct ab8500*) ;

__attribute__((used)) static void abx500_get_regulator_info(struct ab8500 *ab8500)
{
 if (is_ab8505(ab8500)) {
  abx500_regulator.info = ab8505_regulator_info;
  abx500_regulator.info_size = ARRAY_SIZE(ab8505_regulator_info);
  abx500_regulator.init = ab8505_reg_init;
  abx500_regulator.init_size = AB8505_NUM_REGULATOR_REGISTERS;
  abx500_regulator.match = ab8505_regulator_match;
  abx500_regulator.match_size = ARRAY_SIZE(ab8505_regulator_match);
 } else {
  abx500_regulator.info = ab8500_regulator_info;
  abx500_regulator.info_size = ARRAY_SIZE(ab8500_regulator_info);
  abx500_regulator.init = ab8500_reg_init;
  abx500_regulator.init_size = AB8500_NUM_REGULATOR_REGISTERS;
  abx500_regulator.match = ab8500_regulator_match;
  abx500_regulator.match_size = ARRAY_SIZE(ab8500_regulator_match);
 }
}
