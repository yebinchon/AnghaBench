
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_rx_stats {int bFirstMPDU; int bIsAMPDU; } ;



void rtl92e_copy_mpdu_stats(struct rtllib_rx_stats *psrc_stats,
       struct rtllib_rx_stats *ptarget_stats)
{
 ptarget_stats->bIsAMPDU = psrc_stats->bIsAMPDU;
 ptarget_stats->bFirstMPDU = psrc_stats->bFirstMPDU;
}
