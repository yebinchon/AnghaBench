
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_ops {int (* bye ) (struct qmi_handle*,unsigned int) ;} ;
struct qmi_handle {struct qmi_ops ops; } ;


 int qmi_recv_del_server (struct qmi_handle*,unsigned int,int) ;
 int stub1 (struct qmi_handle*,unsigned int) ;

__attribute__((used)) static void qmi_recv_bye(struct qmi_handle *qmi,
    unsigned int node)
{
 struct qmi_ops *ops = &qmi->ops;

 qmi_recv_del_server(qmi, node, -1);

 if (ops->bye)
  ops->bye(qmi, node);
}
