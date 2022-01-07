
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_pcibus_device {int remove_event; int remove_lock; } ;


 int complete (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void put_hvpcibus(struct hv_pcibus_device *hbus)
{
 if (refcount_dec_and_test(&hbus->remove_lock))
  complete(&hbus->remove_event);
}
