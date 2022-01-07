
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int target_id; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct iscsi_cls_session* iscsi_dev_to_session (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
show_priv_session_target_id(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
 return sprintf(buf, "%d\n", session->target_id);
}
