
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
struct be_cmd_get_if_info_resp {int dummy; } ;


 int BEISCSI_IP_TYPE_V4 ;
 int BEISCSI_IP_TYPE_V6 ;
 int beiscsi_if_get_info (struct beiscsi_hba*,int ,struct be_cmd_get_if_info_resp**) ;
 int beiscsi_iface_create_ipv4 (struct beiscsi_hba*) ;
 int beiscsi_iface_create_ipv6 (struct beiscsi_hba*) ;
 int kfree (struct be_cmd_get_if_info_resp*) ;

void beiscsi_iface_create_default(struct beiscsi_hba *phba)
{
 struct be_cmd_get_if_info_resp *if_info;

 if (!beiscsi_if_get_info(phba, BEISCSI_IP_TYPE_V4, &if_info)) {
  beiscsi_iface_create_ipv4(phba);
  kfree(if_info);
 }

 if (!beiscsi_if_get_info(phba, BEISCSI_IP_TYPE_V6, &if_info)) {
  beiscsi_iface_create_ipv6(phba);
  kfree(if_info);
 }
}
