
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uea_softc {int ovl; int task; int pageno; } ;
struct intr_pkt {int e1_bOvl; int e1_bSwapPageNo; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void uea_schedule_load_page_e1(struct uea_softc *sc,
      struct intr_pkt *intr)
{
 sc->pageno = intr->e1_bSwapPageNo;
 sc->ovl = intr->e1_bOvl >> 4 | intr->e1_bOvl << 4;
 schedule_work(&sc->task);
}
