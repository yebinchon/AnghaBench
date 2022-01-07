
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct qmi_handle* sk_user_data; } ;
struct qmi_handle {int work; int wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void qmi_data_ready(struct sock *sk)
{
 struct qmi_handle *qmi = sk->sk_user_data;





 if (!qmi)
  return;

 queue_work(qmi->wq, &qmi->work);
}
