
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qla_hw_data {int current_topology; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int device_flags; int loop_state; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int DFLG_NO_CABLE ;




 scalar_t__ LOOP_DEAD ;
 scalar_t__ LOOP_DOWN ;
 scalar_t__ LOOP_READY ;
 int PAGE_SIZE ;
 scalar_t__ atomic_read (int *) ;
 int class_to_shost (struct device*) ;
 scalar_t__ qla2x00_chip_is_down (TYPE_1__*) ;
 int scnprintf (char*,int ,char*) ;
 TYPE_1__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qla2x00_link_state_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;
 int len = 0;

 if (atomic_read(&vha->loop_state) == LOOP_DOWN ||
     atomic_read(&vha->loop_state) == LOOP_DEAD ||
     vha->device_flags & DFLG_NO_CABLE)
  len = scnprintf(buf, PAGE_SIZE, "Link Down\n");
 else if (atomic_read(&vha->loop_state) != LOOP_READY ||
     qla2x00_chip_is_down(vha))
  len = scnprintf(buf, PAGE_SIZE, "Unknown Link State\n");
 else {
  len = scnprintf(buf, PAGE_SIZE, "Link Up - ");

  switch (ha->current_topology) {
  case 128:
   len += scnprintf(buf + len, PAGE_SIZE-len, "Loop\n");
   break;
  case 130:
   len += scnprintf(buf + len, PAGE_SIZE-len, "FL_Port\n");
   break;
  case 129:
   len += scnprintf(buf + len, PAGE_SIZE-len,
       "N_Port to N_Port\n");
   break;
  case 131:
   len += scnprintf(buf + len, PAGE_SIZE-len, "F_Port\n");
   break;
  default:
   len += scnprintf(buf + len, PAGE_SIZE-len, "Loop\n");
   break;
  }
 }
 return len;
}
