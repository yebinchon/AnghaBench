
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_qla_host {unsigned char* node_name; unsigned char* port_name; } ;


 int pr_debug (char*,unsigned char*) ;
 int put_unaligned_be64 (int ,unsigned char*) ;

__attribute__((used)) static void qlt_lport_dump(struct scsi_qla_host *vha, u64 wwpn,
 unsigned char *b)
{
 pr_debug("qla2xxx HW vha->node_name: %8phC\n", vha->node_name);
 pr_debug("qla2xxx HW vha->port_name: %8phC\n", vha->port_name);
 put_unaligned_be64(wwpn, b);
 pr_debug("qla2xxx passed configfs WWPN: %8phC\n", b);
}
