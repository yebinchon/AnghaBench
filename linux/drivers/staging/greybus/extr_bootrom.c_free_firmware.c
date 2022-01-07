
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_bootrom {int * fw; } ;


 int release_firmware (int *) ;

__attribute__((used)) static void free_firmware(struct gb_bootrom *bootrom)
{
 if (!bootrom->fw)
  return;

 release_firmware(bootrom->fw);
 bootrom->fw = ((void*)0);
}
