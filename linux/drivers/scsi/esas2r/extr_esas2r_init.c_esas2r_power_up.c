
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; int disable_cnt; } ;


 int AF_FIRST_INIT ;
 int AF_POWER_DOWN ;
 int AF_POWER_MGT ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int esas2r_check_adapter (struct esas2r_adapter*) ;
 int esas2r_init_adapter_hw (struct esas2r_adapter*,int) ;
 int esas2r_init_pci_cfg_space (struct esas2r_adapter*) ;
 int esas2r_send_reset_ae (struct esas2r_adapter*,int) ;
 int set_bit (int ,int *) ;

bool esas2r_power_up(struct esas2r_adapter *a, bool init_poll)
{
 bool ret;

 clear_bit(AF_POWER_DOWN, &a->flags);
 esas2r_init_pci_cfg_space(a);
 set_bit(AF_FIRST_INIT, &a->flags);
 atomic_inc(&a->disable_cnt);


 ret = esas2r_check_adapter(a);
 if (!esas2r_init_adapter_hw(a, init_poll))
  ret = 0;


 esas2r_send_reset_ae(a, 1);


 clear_bit(AF_POWER_MGT, &a->flags);
 return ret;
}
