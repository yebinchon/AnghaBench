
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {int txq_entries; } ;
struct txq_entry_t {int list; } ;


 int list_del (int *) ;

__attribute__((used)) static void wilc_wlan_txq_remove(struct wilc *wilc, struct txq_entry_t *tqe)
{
 list_del(&tqe->list);
 wilc->txq_entries -= 1;
}
