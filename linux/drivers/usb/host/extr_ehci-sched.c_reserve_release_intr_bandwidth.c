
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_tt {int* bandwidth; int ps_list; } ;
struct TYPE_2__ {int usecs; int c_usecs; int tt_usecs; scalar_t__ phase; int bw_phase; unsigned int phase_uf; unsigned int cs_mask; scalar_t__ bw_period; int ps_list; int udev; scalar_t__ bw_uperiod; } ;
struct ehci_qh {TYPE_1__ ps; } ;
struct ehci_hcd {int* bandwidth; } ;


 unsigned int EHCI_BANDWIDTH_FRAMES ;
 unsigned int EHCI_BANDWIDTH_SIZE ;
 scalar_t__ NO_FRAME ;
 int bandwidth_dbg (struct ehci_hcd*,int,char*,TYPE_1__*) ;
 struct ehci_tt* find_tt (int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void reserve_release_intr_bandwidth(struct ehci_hcd *ehci,
  struct ehci_qh *qh, int sign)
{
 unsigned start_uf;
 unsigned i, j, m;
 int usecs = qh->ps.usecs;
 int c_usecs = qh->ps.c_usecs;
 int tt_usecs = qh->ps.tt_usecs;
 struct ehci_tt *tt;

 if (qh->ps.phase == NO_FRAME)
  return;
 start_uf = qh->ps.bw_phase << 3;

 bandwidth_dbg(ehci, sign, "intr", &qh->ps);

 if (sign < 0) {
  usecs = -usecs;
  c_usecs = -c_usecs;
  tt_usecs = -tt_usecs;
 }


 for (i = start_uf + qh->ps.phase_uf; i < EHCI_BANDWIDTH_SIZE;
   i += qh->ps.bw_uperiod)
  ehci->bandwidth[i] += usecs;


 if (qh->ps.c_usecs) {

  for (i = start_uf; i < EHCI_BANDWIDTH_SIZE;
    i += qh->ps.bw_uperiod) {
   for ((j = 2, m = 1 << (j+8)); j < 8; (++j, m <<= 1)) {
    if (qh->ps.cs_mask & m)
     ehci->bandwidth[i+j] += c_usecs;
   }
  }
 }


 if (tt_usecs) {
  tt = find_tt(qh->ps.udev);
  if (sign > 0)
   list_add_tail(&qh->ps.ps_list, &tt->ps_list);
  else
   list_del(&qh->ps.ps_list);

  for (i = start_uf >> 3; i < EHCI_BANDWIDTH_FRAMES;
    i += qh->ps.bw_period)
   tt->bandwidth[i] += tt_usecs;
 }
}
