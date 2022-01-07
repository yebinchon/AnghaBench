
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int sbq_len; struct bq_desc* sbq; int * sbq_base; } ;
struct ql_adapter {int dummy; } ;
struct bq_desc {int index; int * addr; } ;
typedef int __le64 ;


 int memset (struct bq_desc*,int ,int) ;

__attribute__((used)) static void ql_init_sbq_ring(struct ql_adapter *qdev,
    struct rx_ring *rx_ring)
{
 int i;
 struct bq_desc *sbq_desc;
 __le64 *bq = rx_ring->sbq_base;

 memset(rx_ring->sbq, 0, rx_ring->sbq_len * sizeof(struct bq_desc));
 for (i = 0; i < rx_ring->sbq_len; i++) {
  sbq_desc = &rx_ring->sbq[i];
  memset(sbq_desc, 0, sizeof(*sbq_desc));
  sbq_desc->index = i;
  sbq_desc->addr = bq;
  bq++;
 }
}
