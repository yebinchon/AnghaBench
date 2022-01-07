
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_lnode {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int csio_fchost_attr_init (struct csio_lnode*) ;
 struct Scsi_Host* csio_ln_to_shost (struct csio_lnode*) ;
 int scsi_scan_host (struct Scsi_Host*) ;

__attribute__((used)) static void
csio_lnode_init_post(struct csio_lnode *ln)
{
 struct Scsi_Host *shost = csio_ln_to_shost(ln);

 csio_fchost_attr_init(ln);

 scsi_scan_host(shost);
}
