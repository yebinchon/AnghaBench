
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {scalar_t__ scan_counter; TYPE_1__** hba_map; } ;
struct TYPE_2__ {scalar_t__ scan_counter; } ;



__attribute__((used)) static inline int aac_is_safw_scan_count_equal(struct aac_dev *dev,
 int bus, int target)
{
 return dev->hba_map[bus][target].scan_counter == dev->scan_counter;
}
