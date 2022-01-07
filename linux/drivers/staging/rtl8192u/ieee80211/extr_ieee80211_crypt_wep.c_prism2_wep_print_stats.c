
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prism2_wep_data {int key_idx; int key_len; } ;


 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static char *prism2_wep_print_stats(char *p, void *priv)
{
 struct prism2_wep_data *wep = priv;

 p += sprintf(p, "key[%d] alg=WEP len=%d\n",
       wep->key_idx, wep->key_len);
 return p;
}
