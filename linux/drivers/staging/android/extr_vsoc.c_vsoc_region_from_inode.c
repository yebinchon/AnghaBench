
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsoc_device_region {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct vsoc_device_region* regions; } ;


 size_t iminor (struct inode*) ;
 TYPE_1__ vsoc_dev ;

__attribute__((used)) static
inline struct vsoc_device_region *vsoc_region_from_inode(struct inode *inode)
{
 return &vsoc_dev.regions[iminor(inode)];
}
