
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct request {struct gendisk* rq_disk; } ;
struct nvme_fault_inject {scalar_t__ dont_retry; int status; int attr; } ;
struct nvme_ns {struct nvme_fault_inject fault_inject; } ;
struct gendisk {struct nvme_ns* private_data; } ;
struct TYPE_4__ {int status; TYPE_1__* ctrl; } ;
struct TYPE_3__ {struct nvme_fault_inject fault_inject; } ;


 int NVME_SC_DNR ;
 int WARN_ONCE (int,char*) ;
 TYPE_2__* nvme_req (struct request*) ;
 scalar_t__ should_fail (int *,int) ;

void nvme_should_fail(struct request *req)
{
 struct gendisk *disk = req->rq_disk;
 struct nvme_fault_inject *fault_inject = ((void*)0);
 u16 status;

 if (disk) {
  struct nvme_ns *ns = disk->private_data;

  if (ns)
   fault_inject = &ns->fault_inject;
  else
   WARN_ONCE(1, "No namespace found for request\n");
 } else {
  fault_inject = &nvme_req(req)->ctrl->fault_inject;
 }

 if (fault_inject && should_fail(&fault_inject->attr, 1)) {

  status = fault_inject->status;
  if (fault_inject->dont_retry)
   status |= NVME_SC_DNR;
  nvme_req(req)->status = status;
 }
}
