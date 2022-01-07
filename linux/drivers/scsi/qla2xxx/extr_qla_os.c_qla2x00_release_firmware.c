
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_blob {int fw; scalar_t__ name; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fw_blob* qla_fw_blobs ;
 int qla_fw_lock ;
 int release_firmware (int ) ;

__attribute__((used)) static void
qla2x00_release_firmware(void)
{
 struct fw_blob *blob;

 mutex_lock(&qla_fw_lock);
 for (blob = qla_fw_blobs; blob->name; blob++)
  release_firmware(blob->fw);
 mutex_unlock(&qla_fw_lock);
}
