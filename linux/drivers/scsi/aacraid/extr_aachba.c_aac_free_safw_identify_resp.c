
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {TYPE_1__** hba_map; } ;
struct TYPE_2__ {int * safw_identify_resp; } ;


 int kfree (int *) ;

__attribute__((used)) static inline void aac_free_safw_identify_resp(struct aac_dev *dev,
      int bus, int target)
{
 kfree(dev->hba_map[bus][target].safw_identify_resp);
 dev->hba_map[bus][target].safw_identify_resp = ((void*)0);
}
