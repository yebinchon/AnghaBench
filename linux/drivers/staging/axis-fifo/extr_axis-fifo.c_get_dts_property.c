
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct axis_fifo {TYPE_1__* dt_device; } ;
struct TYPE_3__ {int of_node; } ;


 int dev_dbg (TYPE_1__*,char*,char*,unsigned int) ;
 int dev_err (TYPE_1__*,char*,char*) ;
 int of_property_read_u32 (int ,char*,unsigned int*) ;

__attribute__((used)) static int get_dts_property(struct axis_fifo *fifo,
       char *name, unsigned int *var)
{
 int rc;

 rc = of_property_read_u32(fifo->dt_device->of_node, name, var);
 if (rc) {
  dev_err(fifo->dt_device, "couldn't read IP dts property '%s'",
   name);
  return rc;
 }
 dev_dbg(fifo->dt_device, "dts property '%s' = %u\n",
  name, *var);

 return 0;
}
