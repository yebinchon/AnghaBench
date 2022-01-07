
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct nvmet_req {TYPE_1__ f; } ;


 int INIT_WORK (int *,int ) ;
 int buffered_io_wq ;
 int nvmet_file_buffered_io_work ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void nvmet_file_submit_buffered_io(struct nvmet_req *req)
{
 INIT_WORK(&req->f.work, nvmet_file_buffered_io_work);
 queue_work(buffered_io_wq, &req->f.work);
}
