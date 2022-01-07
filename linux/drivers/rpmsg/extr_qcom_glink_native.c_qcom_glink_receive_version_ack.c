
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_glink {int features; } ;



 int qcom_glink_send_version (struct qcom_glink*) ;

__attribute__((used)) static void qcom_glink_receive_version_ack(struct qcom_glink *glink,
        u32 version,
        u32 features)
{
 switch (version) {
 case 0:

  break;
 case 128:
  if (features == glink->features)
   break;

  glink->features &= features;

 default:
  qcom_glink_send_version(glink);
  break;
 }
}
