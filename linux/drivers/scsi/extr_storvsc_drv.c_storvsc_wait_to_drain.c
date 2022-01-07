
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storvsc_device {int drain_notify; int num_outstanding_req; int waiting_to_drain; } ;


 scalar_t__ atomic_read (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static inline void storvsc_wait_to_drain(struct storvsc_device *dev)
{
 dev->drain_notify = 1;
 wait_event(dev->waiting_to_drain,
     atomic_read(&dev->num_outstanding_req) == 0);
 dev->drain_notify = 0;
}
