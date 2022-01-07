
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int dummy; } ;
typedef enum ap_wait { ____Placeholder_ap_wait } ap_wait ;


 int ap_sm_read (struct ap_queue*) ;
 int ap_sm_write (struct ap_queue*) ;
 int min (int ,int ) ;

__attribute__((used)) static enum ap_wait ap_sm_read_write(struct ap_queue *aq)
{
 return min(ap_sm_read(aq), ap_sm_write(aq));
}
