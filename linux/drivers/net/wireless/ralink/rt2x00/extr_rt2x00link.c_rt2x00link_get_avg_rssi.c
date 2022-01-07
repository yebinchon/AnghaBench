
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewma_rssi {int dummy; } ;


 int DEFAULT_RSSI ;
 unsigned long ewma_rssi_read (struct ewma_rssi*) ;

__attribute__((used)) static inline int rt2x00link_get_avg_rssi(struct ewma_rssi *ewma)
{
 unsigned long avg;

 avg = ewma_rssi_read(ewma);
 if (avg)
  return -avg;

 return DEFAULT_RSSI;
}
