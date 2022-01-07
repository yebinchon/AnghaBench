
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_device_unregister (void*) ;

__attribute__((used)) static void xhci_intel_unregister_pdev(void *arg)
{
 platform_device_unregister(arg);
}
