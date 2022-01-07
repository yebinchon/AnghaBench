
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_data {int (* fn_known_sch ) (struct subchannel*,void*) ;int (* fn_unknown_sch ) (struct subchannel_id,void*) ;int * set; void* data; } ;


 int bus_for_each_dev (int *,int *,struct cb_data*,int ) ;
 int call_fn_all_sch ;
 int call_fn_known_sch ;
 int call_fn_unknown_sch ;
 int css_bus_type ;
 int for_each_subchannel (int ,struct cb_data*) ;
 int idset_fill (int *) ;
 int idset_free (int *) ;
 int * idset_sch_new () ;

int for_each_subchannel_staged(int (*fn_known)(struct subchannel *, void *),
          int (*fn_unknown)(struct subchannel_id,
          void *), void *data)
{
 struct cb_data cb;
 int rc;

 cb.data = data;
 cb.fn_known_sch = fn_known;
 cb.fn_unknown_sch = fn_unknown;

 if (fn_known && !fn_unknown) {

  cb.set = ((void*)0);
  return bus_for_each_dev(&css_bus_type, ((void*)0), &cb,
     call_fn_known_sch);
 }

 cb.set = idset_sch_new();
 if (!cb.set)

  return for_each_subchannel(call_fn_all_sch, &cb);

 idset_fill(cb.set);


 rc = bus_for_each_dev(&css_bus_type, ((void*)0), &cb, call_fn_known_sch);
 if (rc)
  goto out;

 if (fn_unknown)
  rc = for_each_subchannel(call_fn_unknown_sch, &cb);
out:
 idset_free(cb.set);

 return rc;
}
