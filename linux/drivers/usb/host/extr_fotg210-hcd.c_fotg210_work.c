
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int scanning; int need_rescan; scalar_t__ intr_count; scalar_t__ isoc_count; scalar_t__ async_count; } ;


 int scan_async (struct fotg210_hcd*) ;
 int scan_intr (struct fotg210_hcd*) ;
 int scan_isoc (struct fotg210_hcd*) ;
 int turn_on_io_watchdog (struct fotg210_hcd*) ;

__attribute__((used)) static void fotg210_work(struct fotg210_hcd *fotg210)
{




 if (fotg210->scanning) {
  fotg210->need_rescan = 1;
  return;
 }
 fotg210->scanning = 1;

rescan:
 fotg210->need_rescan = 0;
 if (fotg210->async_count)
  scan_async(fotg210);
 if (fotg210->intr_count > 0)
  scan_intr(fotg210);
 if (fotg210->isoc_count > 0)
  scan_isoc(fotg210);
 if (fotg210->need_rescan)
  goto rescan;
 fotg210->scanning = 0;





 turn_on_io_watchdog(fotg210);
}
