
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 int GLOBAL_CONFIG_1 ;
 int GLOBAL_CONFIG_2 ;
 unsigned int TWSI_ENABLE_OPTION1 ;
 unsigned int TWSI_ENABLE_OPTION2 ;
 unsigned int TWSI_ENABLE_OPTION3 ;
 int gconfmap ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int dove_twsi_ctrl_get(struct mvebu_mpp_ctrl_data *data, unsigned pid,
         unsigned long *config)
{
 unsigned int gcfg1;
 unsigned int gcfg2;

 regmap_read(gconfmap, GLOBAL_CONFIG_1, &gcfg1);
 regmap_read(gconfmap, GLOBAL_CONFIG_2, &gcfg2);

 *config = 0;
 if (gcfg1 & TWSI_ENABLE_OPTION1)
  *config = 1;
 else if (gcfg2 & TWSI_ENABLE_OPTION2)
  *config = 2;
 else if (gcfg2 & TWSI_ENABLE_OPTION3)
  *config = 3;

 return 0;
}
