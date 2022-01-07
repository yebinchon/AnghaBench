
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int * cpdata; struct tape_request* cpaddr; } ;
struct ccw1 {int dummy; } ;


 int BUG_ON (int) ;
 int DBF_EXCEPTION (int,char*) ;
 int DBF_LH (int,char*,...) ;
 int ENOMEM ;
 struct tape_request* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct tape_request* kcalloc (int,int,int) ;
 int kfree (struct tape_request*) ;
 void* kzalloc (int,int) ;

struct tape_request *
tape_alloc_request(int cplength, int datasize)
{
 struct tape_request *request;

 BUG_ON(datasize > PAGE_SIZE || (cplength*sizeof(struct ccw1)) > PAGE_SIZE);

 DBF_LH(6, "tape_alloc_request(%d, %d)\n", cplength, datasize);

 request = kzalloc(sizeof(struct tape_request), GFP_KERNEL);
 if (request == ((void*)0)) {
  DBF_EXCEPTION(1, "cqra nomem\n");
  return ERR_PTR(-ENOMEM);
 }

 if (cplength > 0) {
  request->cpaddr = kcalloc(cplength, sizeof(struct ccw1),
       GFP_ATOMIC | GFP_DMA);
  if (request->cpaddr == ((void*)0)) {
   DBF_EXCEPTION(1, "cqra nomem\n");
   kfree(request);
   return ERR_PTR(-ENOMEM);
  }
 }

 if (datasize > 0) {
  request->cpdata = kzalloc(datasize, GFP_KERNEL | GFP_DMA);
  if (request->cpdata == ((void*)0)) {
   DBF_EXCEPTION(1, "cqra nomem\n");
   kfree(request->cpaddr);
   kfree(request);
   return ERR_PTR(-ENOMEM);
  }
 }
 DBF_LH(6, "New request %p(%p/%p)\n", request, request->cpaddr,
  request->cpdata);

 return request;
}
