
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ host_scribble; } ;
struct request {int dummy; } ;
struct fnic {int dummy; } ;


 int blk_mq_free_request (struct request*) ;

__attribute__((used)) static inline void
fnic_scsi_host_end_tag(struct fnic *fnic, struct scsi_cmnd *sc)
{
 struct request *dummy = (struct request *)sc->host_scribble;

 blk_mq_free_request(dummy);
}
