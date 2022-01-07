
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_ioreq {int drv_status; int sm; } ;


 int CSIO_SCSIE_ABORT ;
 int csio_post_event (int *,int ) ;

__attribute__((used)) static inline int
csio_scsi_abort(struct csio_ioreq *ioreq)
{
 csio_post_event(&ioreq->sm, CSIO_SCSIE_ABORT);
 return ioreq->drv_status;
}
