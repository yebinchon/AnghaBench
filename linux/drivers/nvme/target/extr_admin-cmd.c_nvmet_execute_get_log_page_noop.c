
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_req {int data_len; } ;


 int nvmet_req_complete (struct nvmet_req*,int ) ;
 int nvmet_zero_sgl (struct nvmet_req*,int ,int ) ;

__attribute__((used)) static void nvmet_execute_get_log_page_noop(struct nvmet_req *req)
{
 nvmet_req_complete(req, nvmet_zero_sgl(req, 0, req->data_len));
}
