
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int lbq_len; struct bq_desc* lbq; int * lbq_base; } ;
struct ql_adapter {int dummy; } ;
struct bq_desc {int index; int * addr; } ;
typedef int __le64 ;


 int memset (struct bq_desc*,int ,int) ;

__attribute__((used)) static void ql_init_lbq_ring(struct ql_adapter *qdev,
    struct rx_ring *rx_ring)
{
 int i;
 struct bq_desc *lbq_desc;
 __le64 *bq = rx_ring->lbq_base;

 memset(rx_ring->lbq, 0, rx_ring->lbq_len * sizeof(struct bq_desc));
 for (i = 0; i < rx_ring->lbq_len; i++) {
  lbq_desc = &rx_ring->lbq[i];
  memset(lbq_desc, 0, sizeof(*lbq_desc));
  lbq_desc->index = i;
  lbq_desc->addr = bq;
  bq++;
 }
}
