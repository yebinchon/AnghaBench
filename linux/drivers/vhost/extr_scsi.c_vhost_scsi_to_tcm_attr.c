
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCM_ACA_TAG ;
 int TCM_HEAD_TAG ;
 int TCM_ORDERED_TAG ;
 int TCM_SIMPLE_TAG ;





__attribute__((used)) static int vhost_scsi_to_tcm_attr(int attr)
{
 switch (attr) {
 case 128:
  return TCM_SIMPLE_TAG;
 case 129:
  return TCM_ORDERED_TAG;
 case 130:
  return TCM_HEAD_TAG;
 case 131:
  return TCM_ACA_TAG;
 default:
  break;
 }
 return TCM_SIMPLE_TAG;
}
