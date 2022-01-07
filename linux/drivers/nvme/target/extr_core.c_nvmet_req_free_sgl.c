
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_req {scalar_t__ sg_cnt; int * sg; scalar_t__ p2p_dev; } ;


 int pci_p2pmem_free_sgl (scalar_t__,int *) ;
 int sgl_free (int *) ;

void nvmet_req_free_sgl(struct nvmet_req *req)
{
 if (req->p2p_dev)
  pci_p2pmem_free_sgl(req->p2p_dev, req->sg);
 else
  sgl_free(req->sg);

 req->sg = ((void*)0);
 req->sg_cnt = 0;
}
