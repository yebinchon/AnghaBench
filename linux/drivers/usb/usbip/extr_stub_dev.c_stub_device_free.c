
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_device {int dummy; } ;


 int kfree (struct stub_device*) ;

__attribute__((used)) static void stub_device_free(struct stub_device *sdev)
{
 kfree(sdev);
}
