
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct nvmet_req {TYPE_1__* ns; } ;
struct TYPE_2__ {int nsid; scalar_t__ file; } ;


 scalar_t__ nvmet_bdev_flush (struct nvmet_req*) ;
 scalar_t__ nvmet_file_flush (struct nvmet_req*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static u16 nvmet_write_protect_flush_sync(struct nvmet_req *req)
{
 u16 status;

 if (req->ns->file)
  status = nvmet_file_flush(req);
 else
  status = nvmet_bdev_flush(req);

 if (status)
  pr_err("write protect flush failed nsid: %u\n", req->ns->nsid);
 return status;
}
