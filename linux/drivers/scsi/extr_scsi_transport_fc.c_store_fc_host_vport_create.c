
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vid ;
struct fc_vport_identifiers {int disable; int vport_type; int roles; int node_name; int port_name; } ;
struct fc_vport {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int shost_gendev; } ;
typedef int ssize_t ;


 int EINVAL ;
 int FC_PORTTYPE_NPIV ;
 int FC_PORT_ROLE_FCP_INITIATOR ;
 int fc_parse_wwn (char const*,int *) ;
 int fc_vport_setup (struct Scsi_Host*,int ,int *,struct fc_vport_identifiers*,struct fc_vport**) ;
 int memset (struct fc_vport_identifiers*,int ,int) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t
store_fc_host_vport_create(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct Scsi_Host *shost = transport_class_to_shost(dev);
 struct fc_vport_identifiers vid;
 struct fc_vport *vport;
 unsigned int cnt=count;
 int stat;

 memset(&vid, 0, sizeof(vid));


 if (buf[cnt-1] == '\n')
  cnt--;


 if ((cnt != (16+1+16)) || (buf[16] != ':'))
  return -EINVAL;

 stat = fc_parse_wwn(&buf[0], &vid.port_name);
 if (stat)
  return stat;

 stat = fc_parse_wwn(&buf[17], &vid.node_name);
 if (stat)
  return stat;

 vid.roles = FC_PORT_ROLE_FCP_INITIATOR;
 vid.vport_type = FC_PORTTYPE_NPIV;

 vid.disable = 0;


 stat = fc_vport_setup(shost, 0, &shost->shost_gendev, &vid, &vport);
 return stat ? stat : count;
}
