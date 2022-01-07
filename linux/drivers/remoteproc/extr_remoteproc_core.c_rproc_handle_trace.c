
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int da; int len; } ;
struct rproc_debug_trace {int node; int tfile; struct rproc* rproc; TYPE_1__ trace_mem; } ;
struct device {int dummy; } ;
struct rproc {int num_traces; int traces; struct device dev; } ;
struct fw_rsc_trace {int len; int da; scalar_t__ reserved; } ;
typedef int name ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,char*,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int kfree (struct rproc_debug_trace*) ;
 struct rproc_debug_trace* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int rproc_create_trace_file (char*,struct rproc*,struct rproc_debug_trace*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int rproc_handle_trace(struct rproc *rproc, struct fw_rsc_trace *rsc,
         int offset, int avail)
{
 struct rproc_debug_trace *trace;
 struct device *dev = &rproc->dev;
 char name[15];

 if (sizeof(*rsc) > avail) {
  dev_err(dev, "trace rsc is truncated\n");
  return -EINVAL;
 }


 if (rsc->reserved) {
  dev_err(dev, "trace rsc has non zero reserved bytes\n");
  return -EINVAL;
 }

 trace = kzalloc(sizeof(*trace), GFP_KERNEL);
 if (!trace)
  return -ENOMEM;


 trace->trace_mem.len = rsc->len;
 trace->trace_mem.da = rsc->da;


 trace->rproc = rproc;


 snprintf(name, sizeof(name), "trace%d", rproc->num_traces);


 trace->tfile = rproc_create_trace_file(name, rproc, trace);
 if (!trace->tfile) {
  kfree(trace);
  return -EINVAL;
 }

 list_add_tail(&trace->node, &rproc->traces);

 rproc->num_traces++;

 dev_dbg(dev, "%s added: da 0x%x, len 0x%x\n",
  name, rsc->da, rsc->len);

 return 0;
}
