
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int sch_no; } ;
struct qdio_ssqd_desc {int dummy; } ;
struct ccw_device {int private; } ;


 int DBF_EVENT (char*,int ) ;
 int EINVAL ;
 int ccw_device_get_schid (struct ccw_device*,struct subchannel_id*) ;
 int qdio_setup_get_ssqd (int *,struct subchannel_id*,struct qdio_ssqd_desc*) ;

int qdio_get_ssqd_desc(struct ccw_device *cdev,
         struct qdio_ssqd_desc *data)
{
 struct subchannel_id schid;

 if (!cdev || !cdev->private)
  return -EINVAL;

 ccw_device_get_schid(cdev, &schid);
 DBF_EVENT("get ssqd:%4x", schid.sch_no);
 return qdio_setup_get_ssqd(((void*)0), &schid, data);
}
