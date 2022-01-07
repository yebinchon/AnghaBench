
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int ktime_t ;


 scalar_t__ initcall_debug ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int pci_info (struct pci_dev*,char*,void (*) (struct pci_dev*),unsigned long long) ;

__attribute__((used)) static void fixup_debug_report(struct pci_dev *dev, ktime_t calltime,
          void (*fn)(struct pci_dev *dev))
{
 ktime_t delta, rettime;
 unsigned long long duration;

 rettime = ktime_get();
 delta = ktime_sub(rettime, calltime);
 duration = (unsigned long long) ktime_to_ns(delta) >> 10;
 if (initcall_debug || duration > 10000)
  pci_info(dev, "%pS took %lld usecs\n", fn, duration);
}
