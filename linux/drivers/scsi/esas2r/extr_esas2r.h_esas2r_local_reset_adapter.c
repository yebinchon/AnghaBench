
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; } ;


 int AF_CHPRST_NEEDED ;
 int AF_CHPRST_PENDING ;
 int AF_DISC_PENDING ;
 int esas2r_disable_heartbeat (struct esas2r_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void esas2r_local_reset_adapter(struct esas2r_adapter *a)
{
 esas2r_disable_heartbeat(a);

 set_bit(AF_CHPRST_NEEDED, &a->flags);
 set_bit(AF_CHPRST_PENDING, &a->flags);
 set_bit(AF_DISC_PENDING, &a->flags);
}
