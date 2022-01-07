
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; } ;


 int AF_NOT_PRESENT ;
 int MU_DOORBELL_OUT ;
 int esas2r_read_register_dword (struct esas2r_adapter*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

bool esas2r_is_adapter_present(struct esas2r_adapter *a)
{
 if (test_bit(AF_NOT_PRESENT, &a->flags))
  return 0;

 if (esas2r_read_register_dword(a, MU_DOORBELL_OUT) == 0xFFFFFFFF) {
  set_bit(AF_NOT_PRESENT, &a->flags);

  return 0;
 }
 return 1;
}
