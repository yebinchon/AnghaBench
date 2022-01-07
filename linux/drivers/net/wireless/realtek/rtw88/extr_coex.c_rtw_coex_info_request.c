
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtw_coex {int mutex; int queue; int wait; } ;
struct rtw_dev {struct rtw_coex coex; } ;
struct rtw_coex_info_req {int dummy; } ;


 int COEX_REQUEST_TIMEOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_fw_query_bt_mp_info (struct rtw_dev*,struct rtw_coex_info_req*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static struct sk_buff *rtw_coex_info_request(struct rtw_dev *rtwdev,
          struct rtw_coex_info_req *req)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct sk_buff *skb_resp = ((void*)0);

 mutex_lock(&coex->mutex);

 rtw_fw_query_bt_mp_info(rtwdev, req);

 if (!wait_event_timeout(coex->wait, !skb_queue_empty(&coex->queue),
    COEX_REQUEST_TIMEOUT)) {
  rtw_err(rtwdev, "coex request time out\n");
  goto out;
 }

 skb_resp = skb_dequeue(&coex->queue);
 if (!skb_resp) {
  rtw_err(rtwdev, "failed to get coex info response\n");
  goto out;
 }

out:
 mutex_unlock(&coex->mutex);
 return skb_resp;
}
