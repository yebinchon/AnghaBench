
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_work; struct sk_buff* tx_pending; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct sk_buff {int dummy; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void st21nfca_im_send_pdu(struct st21nfca_hci_info *info,
      struct sk_buff *skb)
{
 info->dep_info.tx_pending = skb;
 schedule_work(&info->dep_info.tx_work);
}
