
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int subopcode; int opcode; int cmd; } ;
typedef TYPE_2__ megacmd_t ;
struct TYPE_10__ {int read_ldidmap; TYPE_1__* dev; } ;
typedef TYPE_3__ adapter_t ;
struct TYPE_8__ {int dev; } ;


 int FC_DEL_LOGDRV ;
 int OP_DEL_LOGDRV ;
 int dev_warn (int *,char*,int) ;
 int mega_internal_command (TYPE_3__*,TYPE_2__*,int *) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
mega_do_del_logdrv(adapter_t *adapter, int logdrv)
{
 megacmd_t mc;
 int rval;

 memset( &mc, 0, sizeof(megacmd_t));

 mc.cmd = FC_DEL_LOGDRV;
 mc.opcode = OP_DEL_LOGDRV;
 mc.subopcode = logdrv;

 rval = mega_internal_command(adapter, &mc, ((void*)0));


 if(rval) {
  dev_warn(&adapter->dev->dev, "Delete LD-%d failed", logdrv);
  return rval;
 }





 adapter->read_ldidmap = 1;

 return rval;
}
