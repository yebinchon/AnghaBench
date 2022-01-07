
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; } ;


 int AF_HEARTBEAT ;
 int AF_HEARTBEAT_ENB ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline void esas2r_disable_heartbeat(struct esas2r_adapter *a)
{
 clear_bit(AF_HEARTBEAT_ENB, &a->flags);
 clear_bit(AF_HEARTBEAT, &a->flags);
}
