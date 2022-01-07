
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int _rtl92e_bb_config_para_file (struct net_device*) ;
 int _rtl92e_init_bb_rf_reg_def (struct net_device*) ;

bool rtl92e_config_bb(struct net_device *dev)
{
 _rtl92e_init_bb_rf_reg_def(dev);
 return _rtl92e_bb_config_para_file(dev);
}
