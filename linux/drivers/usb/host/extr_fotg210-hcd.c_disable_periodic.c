
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {scalar_t__ periodic_count; } ;


 int fotg210_poll_PSS (struct fotg210_hcd*) ;

__attribute__((used)) static void disable_periodic(struct fotg210_hcd *fotg210)
{
 if (--fotg210->periodic_count)
  return;


 fotg210_poll_PSS(fotg210);
}
