
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_pcibus_device {int remove_lock; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void get_hvpcibus(struct hv_pcibus_device *hbus)
{
 refcount_inc(&hbus->remove_lock);
}
