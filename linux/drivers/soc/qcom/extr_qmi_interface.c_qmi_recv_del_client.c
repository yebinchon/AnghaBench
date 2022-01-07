
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_ops {int (* del_client ) (struct qmi_handle*,unsigned int,unsigned int) ;} ;
struct qmi_handle {struct qmi_ops ops; } ;


 int stub1 (struct qmi_handle*,unsigned int,unsigned int) ;

__attribute__((used)) static void qmi_recv_del_client(struct qmi_handle *qmi,
    unsigned int node, unsigned int port)
{
 struct qmi_ops *ops = &qmi->ops;

 if (ops->del_client)
  ops->del_client(qmi, node, port);
}
