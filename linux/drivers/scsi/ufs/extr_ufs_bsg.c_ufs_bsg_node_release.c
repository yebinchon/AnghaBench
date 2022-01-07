
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;


 int put_device (int ) ;

__attribute__((used)) static inline void ufs_bsg_node_release(struct device *dev)
{
 put_device(dev->parent);
}
