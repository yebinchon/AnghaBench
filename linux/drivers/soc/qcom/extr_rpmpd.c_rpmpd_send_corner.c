
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpmpd_req {int value; int nbytes; int key; } ;
struct rpmpd {int res_id; int res_type; int rpm; int key; } ;
typedef int req ;


 int cpu_to_le32 (unsigned int) ;
 int qcom_rpm_smd_write (int ,int,int ,int ,struct rpmpd_req*,int) ;

__attribute__((used)) static int rpmpd_send_corner(struct rpmpd *pd, int state, unsigned int corner)
{
 struct rpmpd_req req = {
  .key = pd->key,
  .nbytes = cpu_to_le32(sizeof(u32)),
  .value = cpu_to_le32(corner),
 };

 return qcom_rpm_smd_write(pd->rpm, state, pd->res_type, pd->res_id,
      &req, sizeof(req));
}
