
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
struct firmware {int dummy; } ;


 int release_firmware (struct firmware const*) ;
 int rproc_boot (struct rproc*) ;

__attribute__((used)) static void rproc_auto_boot_callback(const struct firmware *fw, void *context)
{
 struct rproc *rproc = context;

 rproc_boot(rproc);

 release_firmware(fw);
}
