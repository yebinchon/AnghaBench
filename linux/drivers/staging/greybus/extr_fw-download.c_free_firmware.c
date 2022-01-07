
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_request {int disabled; int node; } ;
struct fw_download {int mutex; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_fw_req (struct fw_request*) ;

__attribute__((used)) static void free_firmware(struct fw_download *fw_download,
     struct fw_request *fw_req)
{

 if (fw_req->disabled)
  return;

 mutex_lock(&fw_download->mutex);
 list_del(&fw_req->node);
 mutex_unlock(&fw_download->mutex);

 fw_req->disabled = 1;
 put_fw_req(fw_req);
}
