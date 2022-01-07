
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fotg210_hcd {scalar_t__ async_unlink; TYPE_2__* async; scalar_t__ async_count; } ;
struct TYPE_3__ {scalar_t__ qh; } ;
struct TYPE_4__ {TYPE_1__ qh_next; } ;


 int WARN_ON (int) ;
 int fotg210_poll_ASS (struct fotg210_hcd*) ;

__attribute__((used)) static void disable_async(struct fotg210_hcd *fotg210)
{
 if (--fotg210->async_count)
  return;


 WARN_ON(fotg210->async->qh_next.qh || fotg210->async_unlink);


 fotg210_poll_ASS(fotg210);
}
