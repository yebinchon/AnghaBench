
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int state; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct iscsi_cls_session* iscsi_dev_to_session (int ) ;
 char* iscsi_session_state_name (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t
show_priv_session_state(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
 return sprintf(buf, "%s\n", iscsi_session_state_name(session->state));
}
