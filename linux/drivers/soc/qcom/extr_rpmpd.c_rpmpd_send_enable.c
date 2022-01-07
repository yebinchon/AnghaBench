
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpmpd_req {int value; int nbytes; int key; } ;
struct rpmpd {int res_id; int res_type; int rpm; } ;
typedef int req ;


 int KEY_ENABLE ;
 int QCOM_SMD_RPM_ACTIVE_STATE ;
 int cpu_to_le32 (int) ;
 int qcom_rpm_smd_write (int ,int ,int ,int ,struct rpmpd_req*,int) ;

__attribute__((used)) static int rpmpd_send_enable(struct rpmpd *pd, bool enable)
{
 struct rpmpd_req req = {
  .key = KEY_ENABLE,
  .nbytes = cpu_to_le32(sizeof(u32)),
  .value = cpu_to_le32(enable),
 };

 return qcom_rpm_smd_write(pd->rpm, QCOM_SMD_RPM_ACTIVE_STATE,
      pd->res_type, pd->res_id, &req, sizeof(req));
}
