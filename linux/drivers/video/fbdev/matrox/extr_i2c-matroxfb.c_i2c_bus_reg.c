
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int node; } ;
struct matrox_fb_info {TYPE_4__* pcidev; TYPE_2__ fbcon; } ;
struct TYPE_10__ {int * parent; } ;
struct TYPE_13__ {int class; TYPE_3__ dev; TYPE_5__* algo_data; int name; int owner; } ;
struct TYPE_12__ {struct i2c_bit_adapter* data; } ;
struct TYPE_8__ {unsigned int data; unsigned int clock; } ;
struct i2c_bit_adapter {int initialized; TYPE_6__ adapter; TYPE_5__ bac; TYPE_1__ mask; struct matrox_fb_info* minfo; } ;
struct TYPE_11__ {int dev; } ;


 int THIS_MODULE ;
 int i2c_bit_add_bus (TYPE_6__*) ;
 int i2c_set_adapdata (TYPE_6__*,struct i2c_bit_adapter*) ;
 TYPE_5__ matrox_i2c_algo_template ;
 int snprintf (int ,int,char const*,int ) ;

__attribute__((used)) static int i2c_bus_reg(struct i2c_bit_adapter* b, struct matrox_fb_info* minfo,
  unsigned int data, unsigned int clock, const char *name,
  int class)
{
 int err;

 b->minfo = minfo;
 b->mask.data = data;
 b->mask.clock = clock;
 b->adapter.owner = THIS_MODULE;
 snprintf(b->adapter.name, sizeof(b->adapter.name), name,
  minfo->fbcon.node);
 i2c_set_adapdata(&b->adapter, b);
 b->adapter.class = class;
 b->adapter.algo_data = &b->bac;
 b->adapter.dev.parent = &minfo->pcidev->dev;
 b->bac = matrox_i2c_algo_template;
 b->bac.data = b;
 err = i2c_bit_add_bus(&b->adapter);
 b->initialized = !err;
 return err;
}
