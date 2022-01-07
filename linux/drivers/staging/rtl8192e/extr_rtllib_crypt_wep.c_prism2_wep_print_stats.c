
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct prism2_wep_data {int key_len; int key_idx; } ;


 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static void prism2_wep_print_stats(struct seq_file *m, void *priv)
{
 struct prism2_wep_data *wep = priv;

 seq_printf(m, "key[%d] alg=WEP len=%d\n", wep->key_idx, wep->key_len);
}
