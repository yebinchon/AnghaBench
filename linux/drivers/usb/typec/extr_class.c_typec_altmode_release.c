
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct altmode {int id; TYPE_2__ adev; } ;


 int altmode_id_remove (int ,int ) ;
 int kfree (struct altmode*) ;
 struct altmode* to_altmode (int ) ;
 int to_typec_altmode (struct device*) ;
 int typec_altmode_put_partner (struct altmode*) ;

__attribute__((used)) static void typec_altmode_release(struct device *dev)
{
 struct altmode *alt = to_altmode(to_typec_altmode(dev));

 typec_altmode_put_partner(alt);

 altmode_id_remove(alt->adev.dev.parent, alt->id);
 kfree(alt);
}
