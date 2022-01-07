
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storvsc_device {int num_outstanding_req; scalar_t__ destroy; } ;
struct hv_device {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 struct storvsc_device* hv_get_drvdata (struct hv_device*) ;

__attribute__((used)) static inline struct storvsc_device *get_in_stor_device(
     struct hv_device *device)
{
 struct storvsc_device *stor_device;

 stor_device = hv_get_drvdata(device);

 if (!stor_device)
  goto get_in_err;






 if (stor_device->destroy &&
  (atomic_read(&stor_device->num_outstanding_req) == 0))
  stor_device = ((void*)0);

get_in_err:
 return stor_device;

}
