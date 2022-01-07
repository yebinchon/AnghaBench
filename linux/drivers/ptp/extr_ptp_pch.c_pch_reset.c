
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_dev {int dummy; } ;


 int pch_block_reset (struct pch_dev*) ;
 int pch_set_system_time_count (struct pch_dev*) ;

__attribute__((used)) static void pch_reset(struct pch_dev *chip)
{

 pch_block_reset(chip);


 pch_set_system_time_count(chip);
}
