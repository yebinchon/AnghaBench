
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int release; } ;
struct TYPE_6__ {TYPE_1__ dev; int id; int name; } ;
struct ser_cardstate {TYPE_3__ dev; } ;
struct TYPE_5__ {struct ser_cardstate* ser; } ;
struct cardstate {int write_tasklet; TYPE_2__ hw; int minor_index; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GIGASET_MODULENAME ;
 int gigaset_device_release ;
 int gigaset_modem_fill ;
 int kfree (struct ser_cardstate*) ;
 struct ser_cardstate* kzalloc (int,int ) ;
 int platform_device_register (TYPE_3__*) ;
 int pr_err (char*,...) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int gigaset_initcshw(struct cardstate *cs)
{
 int rc;
 struct ser_cardstate *scs;

 scs = kzalloc(sizeof(struct ser_cardstate), GFP_KERNEL);
 if (!scs) {
  pr_err("out of memory\n");
  return -ENOMEM;
 }
 cs->hw.ser = scs;

 cs->hw.ser->dev.name = GIGASET_MODULENAME;
 cs->hw.ser->dev.id = cs->minor_index;
 cs->hw.ser->dev.dev.release = gigaset_device_release;
 rc = platform_device_register(&cs->hw.ser->dev);
 if (rc != 0) {
  pr_err("error %d registering platform device\n", rc);
  kfree(cs->hw.ser);
  cs->hw.ser = ((void*)0);
  return rc;
 }

 tasklet_init(&cs->write_tasklet,
       gigaset_modem_fill, (unsigned long) cs);
 return 0;
}
