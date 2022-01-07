
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct TYPE_2__ {void* notifyresult_handle; void* notify_handle; } ;
struct uiscmdrsp {TYPE_1__ scsitaskmgmt; } ;
struct idr {int dummy; } ;
typedef int spinlock_t ;


 void* simple_idr_get (struct idr*,int*,int *) ;

__attribute__((used)) static void setup_scsitaskmgmt_handles(struct idr *idrtable, spinlock_t *lock,
           struct uiscmdrsp *cmdrsp,
           wait_queue_head_t *event, int *result)
{


 cmdrsp->scsitaskmgmt.notify_handle =
  simple_idr_get(idrtable, event, lock);
 cmdrsp->scsitaskmgmt.notifyresult_handle =
  simple_idr_get(idrtable, result, lock);
}
