
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; } ;


 int AF_BUSRST_DETECTED ;
 int AF_BUSRST_NEEDED ;
 int AF_CHPRST_DETECTED ;
 int AF_CHPRST_NEEDED ;
 int AF_PORT_CHANGE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool esas2r_is_tasklet_pending(struct esas2r_adapter *a)
{

 return test_bit(AF_BUSRST_NEEDED, &a->flags) ||
        test_bit(AF_BUSRST_DETECTED, &a->flags) ||
        test_bit(AF_CHPRST_NEEDED, &a->flags) ||
        test_bit(AF_CHPRST_DETECTED, &a->flags) ||
        test_bit(AF_PORT_CHANGE, &a->flags);

}
