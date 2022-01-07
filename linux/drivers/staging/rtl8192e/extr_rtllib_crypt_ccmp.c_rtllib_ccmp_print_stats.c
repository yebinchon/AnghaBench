
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rtllib_ccmp_data {int dot11RSNAStatsCCMPDecryptErrors; int dot11RSNAStatsCCMPReplays; int dot11RSNAStatsCCMPFormatErrors; int rx_pn; int tx_pn; int key_set; int key_idx; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void rtllib_ccmp_print_stats(struct seq_file *m, void *priv)
{
 struct rtllib_ccmp_data *ccmp = priv;

 seq_printf(m,
     "key[%d] alg=CCMP key_set=%d tx_pn=%pM rx_pn=%pM format_errors=%d replays=%d decrypt_errors=%d\n",
     ccmp->key_idx, ccmp->key_set,
     ccmp->tx_pn, ccmp->rx_pn,
     ccmp->dot11RSNAStatsCCMPFormatErrors,
     ccmp->dot11RSNAStatsCCMPReplays,
     ccmp->dot11RSNAStatsCCMPDecryptErrors);
}
