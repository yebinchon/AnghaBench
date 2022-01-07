
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct anybuss_host {int dummy; } ;


 int anybuss_host_common_remove (struct anybuss_host*) ;

__attribute__((used)) static void host_release(struct device *dev, void *res)
{
 struct anybuss_host **dr = res;

 anybuss_host_common_remove(*dr);
}
