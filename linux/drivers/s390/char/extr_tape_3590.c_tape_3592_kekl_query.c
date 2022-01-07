
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {scalar_t__ cpaddr; int op; struct tape3592_kekl_query_order* cpdata; } ;
struct tape_device {int dummy; } ;
struct tape390_kekl_pair {int dummy; } ;
struct tape3592_kekl_query_order {int code; int max_count; } ;
struct tape3592_kekl_query_data {int kekls; } ;


 int DBF_EVENT (int,char*) ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int PERF_SUBSYS_FUNC ;
 int PTR_ERR (struct tape_request*) ;
 int READ_SS_DATA ;
 int TO_KEKL_QUERY ;
 int int_to_ext_kekl_pair (int *,struct tape390_kekl_pair*) ;
 int kfree (struct tape3592_kekl_query_data*) ;
 struct tape3592_kekl_query_data* kmalloc (int,int) ;
 int memset (struct tape3592_kekl_query_order*,int ,int) ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_cc (scalar_t__,int ,int,struct tape3592_kekl_query_order*) ;
 int tape_ccw_end (scalar_t__,int ,int,struct tape3592_kekl_query_data*) ;
 int tape_do_io (struct tape_device*,struct tape_request*) ;
 int tape_free_request (struct tape_request*) ;

__attribute__((used)) static int tape_3592_kekl_query(struct tape_device *device,
    struct tape390_kekl_pair *ext_kekls)
{
 struct tape_request *request;
 struct tape3592_kekl_query_order *order;
 struct tape3592_kekl_query_data *int_kekls;
 int rc;

 DBF_EVENT(6, "tape3592_kekl_query\n");
 int_kekls = kmalloc(sizeof(*int_kekls), GFP_KERNEL|GFP_DMA);
 if (!int_kekls)
  return -ENOMEM;
 request = tape_alloc_request(2, sizeof(*order));
 if (IS_ERR(request)) {
  rc = PTR_ERR(request);
  goto fail_malloc;
 }
 order = request->cpdata;
 memset(order,0,sizeof(*order));
 order->code = 0xe2;
 order->max_count = 2;
 request->op = TO_KEKL_QUERY;
 tape_ccw_cc(request->cpaddr, PERF_SUBSYS_FUNC, sizeof(*order), order);
 tape_ccw_end(request->cpaddr + 1, READ_SS_DATA, sizeof(*int_kekls),
       int_kekls);
 rc = tape_do_io(device, request);
 if (rc)
  goto fail_request;
 int_to_ext_kekl_pair(&int_kekls->kekls, ext_kekls);

 rc = 0;
fail_request:
 tape_free_request(request);
fail_malloc:
 kfree(int_kekls);
 return rc;
}
