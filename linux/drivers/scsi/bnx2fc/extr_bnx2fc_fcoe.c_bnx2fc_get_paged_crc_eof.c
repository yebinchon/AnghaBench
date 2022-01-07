
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int bnx2fc_global ;
 int bnx2fc_global_lock ;
 int fcoe_get_paged_crc_eof (struct sk_buff*,int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int bnx2fc_get_paged_crc_eof(struct sk_buff *skb, int tlen)
{
 int rc;
 spin_lock(&bnx2fc_global_lock);
 rc = fcoe_get_paged_crc_eof(skb, tlen, &bnx2fc_global);
 spin_unlock(&bnx2fc_global_lock);

 return rc;
}
