
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void uwb_dev_put(struct uwb_dev *uwb_dev)
{
 put_device(&uwb_dev->dev);
}
