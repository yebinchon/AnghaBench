
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int FC_BINDTYPE_MAX_NAMELEN ;
 int fc_host_tgtid_bind_type (struct Scsi_Host*) ;
 char* get_fc_tgtid_bind_type_name (int ) ;
 int snprintf (char*,int ,char*,char const*) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_private_host_tgtid_bind_type(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = transport_class_to_shost(dev);
 const char *name;

 name = get_fc_tgtid_bind_type_name(fc_host_tgtid_bind_type(shost));
 if (!name)
  return -EINVAL;
 return snprintf(buf, FC_BINDTYPE_MAX_NAMELEN, "%s\n", name);
}
