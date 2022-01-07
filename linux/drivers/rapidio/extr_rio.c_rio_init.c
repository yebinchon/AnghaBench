
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int dummy; } ;


 int RIO_ANY_ID ;
 int rio_fixup_device (struct rio_dev*) ;
 struct rio_dev* rio_get_device (int ,int ,struct rio_dev*) ;

__attribute__((used)) static int rio_init(void)
{
 struct rio_dev *dev = ((void*)0);

 while ((dev = rio_get_device(RIO_ANY_ID, RIO_ANY_ID, dev)) != ((void*)0)) {
  rio_fixup_device(dev);
 }
 return 0;
}
