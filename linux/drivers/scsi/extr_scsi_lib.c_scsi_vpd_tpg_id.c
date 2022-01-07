
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_vpd {unsigned char* data; int len; } ;
struct scsi_device {int vpd_pg83; } ;


 int EAGAIN ;
 int ENXIO ;
 int get_unaligned_be16 (unsigned char const*) ;
 struct scsi_vpd* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int scsi_vpd_tpg_id(struct scsi_device *sdev, int *rel_id)
{
 const unsigned char *d;
 const struct scsi_vpd *vpd_pg83;
 int group_id = -EAGAIN, rel_port = -1;

 rcu_read_lock();
 vpd_pg83 = rcu_dereference(sdev->vpd_pg83);
 if (!vpd_pg83) {
  rcu_read_unlock();
  return -ENXIO;
 }

 d = vpd_pg83->data + 4;
 while (d < vpd_pg83->data + vpd_pg83->len) {
  switch (d[1] & 0xf) {
  case 0x4:

   rel_port = get_unaligned_be16(&d[6]);
   break;
  case 0x5:

   group_id = get_unaligned_be16(&d[6]);
   break;
  default:
   break;
  }
  d += d[3] + 4;
 }
 rcu_read_unlock();

 if (group_id >= 0 && rel_id && rel_port != -1)
  *rel_id = rel_port;

 return group_id;
}
