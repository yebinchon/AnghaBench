
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvmet_req {TYPE_1__* ns; } ;
struct TYPE_2__ {int file; } ;


 int errno_to_nvme_status (struct nvmet_req*,int ) ;
 int vfs_fsync (int ,int) ;

u16 nvmet_file_flush(struct nvmet_req *req)
{
 return errno_to_nvme_status(req, vfs_fsync(req->ns->file, 1));
}
