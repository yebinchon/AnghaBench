
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_service {unsigned int service; unsigned int version; unsigned int instance; int list_node; } ;
struct qmi_handle {int services; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct qmi_service* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int qmi_send_new_server (struct qmi_handle*,struct qmi_service*) ;

int qmi_add_server(struct qmi_handle *qmi, unsigned int service,
     unsigned int version, unsigned int instance)
{
 struct qmi_service *svc;

 svc = kzalloc(sizeof(*svc), GFP_KERNEL);
 if (!svc)
  return -ENOMEM;

 svc->service = service;
 svc->version = version;
 svc->instance = instance;

 list_add(&svc->list_node, &qmi->services);

 qmi_send_new_server(qmi, svc);

 return 0;
}
