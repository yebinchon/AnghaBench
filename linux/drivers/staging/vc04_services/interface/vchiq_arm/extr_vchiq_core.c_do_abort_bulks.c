
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_service {int bulk_rx; int bulk_tx; int bulk_mutex; } ;
typedef scalar_t__ VCHIQ_STATUS_T ;


 scalar_t__ VCHIQ_SUCCESS ;
 int abort_outstanding_bulks (struct vchiq_service*,int *) ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ notify_bulks (struct vchiq_service*,int *,int ) ;

__attribute__((used)) static int
do_abort_bulks(struct vchiq_service *service)
{
 VCHIQ_STATUS_T status;


 if (mutex_lock_killable(&service->bulk_mutex))
  return 0;
 abort_outstanding_bulks(service, &service->bulk_tx);
 abort_outstanding_bulks(service, &service->bulk_rx);
 mutex_unlock(&service->bulk_mutex);

 status = notify_bulks(service, &service->bulk_tx, 0 );
 if (status == VCHIQ_SUCCESS)
  status = notify_bulks(service, &service->bulk_rx,
   0 );
 return (status == VCHIQ_SUCCESS);
}
