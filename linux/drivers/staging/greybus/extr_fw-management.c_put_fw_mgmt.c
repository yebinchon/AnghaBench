
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_mgmt {int kref; } ;


 int fw_mgmt_kref_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void put_fw_mgmt(struct fw_mgmt *fw_mgmt)
{
 kref_put(&fw_mgmt->kref, fw_mgmt_kref_release);
}
