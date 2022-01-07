
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int BMIC_WRITE_HOST_WELLNESS ;
 int pqi_send_ctrl_raid_request (struct pqi_ctrl_info*,int ,void*,size_t) ;

__attribute__((used)) static inline int pqi_write_host_wellness(struct pqi_ctrl_info *ctrl_info,
 void *buffer, size_t buffer_length)
{
 return pqi_send_ctrl_raid_request(ctrl_info, BMIC_WRITE_HOST_WELLNESS,
     buffer, buffer_length);
}
