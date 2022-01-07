
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpm_regulator_req {void* value; void* nbytes; void* key; } ;
struct qcom_rpm_reg {int is_enabled; int uV; int load; scalar_t__ load_updated; scalar_t__ uv_updated; scalar_t__ enabled_updated; int id; int type; int rpm; } ;
typedef int req ;


 int QCOM_SMD_RPM_ACTIVE_STATE ;
 int RPM_KEY_MA ;
 int RPM_KEY_SWEN ;
 int RPM_KEY_UV ;
 void* cpu_to_le32 (int) ;
 int qcom_rpm_smd_write (int ,int ,int ,int ,struct rpm_regulator_req*,int) ;

__attribute__((used)) static int rpm_reg_write_active(struct qcom_rpm_reg *vreg)
{
 struct rpm_regulator_req req[3];
 int reqlen = 0;
 int ret;

 if (vreg->enabled_updated) {
  req[reqlen].key = cpu_to_le32(RPM_KEY_SWEN);
  req[reqlen].nbytes = cpu_to_le32(sizeof(u32));
  req[reqlen].value = cpu_to_le32(vreg->is_enabled);
  reqlen++;
 }

 if (vreg->uv_updated && vreg->is_enabled) {
  req[reqlen].key = cpu_to_le32(RPM_KEY_UV);
  req[reqlen].nbytes = cpu_to_le32(sizeof(u32));
  req[reqlen].value = cpu_to_le32(vreg->uV);
  reqlen++;
 }

 if (vreg->load_updated && vreg->is_enabled) {
  req[reqlen].key = cpu_to_le32(RPM_KEY_MA);
  req[reqlen].nbytes = cpu_to_le32(sizeof(u32));
  req[reqlen].value = cpu_to_le32(vreg->load / 1000);
  reqlen++;
 }

 if (!reqlen)
  return 0;

 ret = qcom_rpm_smd_write(vreg->rpm, QCOM_SMD_RPM_ACTIVE_STATE,
     vreg->type, vreg->id,
     req, sizeof(req[0]) * reqlen);
 if (!ret) {
  vreg->enabled_updated = 0;
  vreg->uv_updated = 0;
  vreg->load_updated = 0;
 }

 return ret;
}
