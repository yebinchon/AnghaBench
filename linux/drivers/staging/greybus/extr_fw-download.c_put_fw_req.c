
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_request {int kref; } ;


 int fw_req_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void put_fw_req(struct fw_request *fw_req)
{
 kref_put(&fw_req->kref, fw_req_release);
}
