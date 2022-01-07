
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {unsigned int id; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* soc_id ;

__attribute__((used)) static const char *socinfo_machine(struct device *dev, unsigned int id)
{
 int idx;

 for (idx = 0; idx < ARRAY_SIZE(soc_id); idx++) {
  if (soc_id[idx].id == id)
   return soc_id[idx].name;
 }

 return ((void*)0);
}
