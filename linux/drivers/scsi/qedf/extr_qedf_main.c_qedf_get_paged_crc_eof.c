
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int fcoe_get_paged_crc_eof (struct sk_buff*,int,int *) ;
 int qedf_global ;
 int qedf_global_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int qedf_get_paged_crc_eof(struct sk_buff *skb, int tlen)
{
 int rc;

 spin_lock(&qedf_global_lock);
 rc = fcoe_get_paged_crc_eof(skb, tlen, &qedf_global);
 spin_unlock(&qedf_global_lock);

 return rc;
}
