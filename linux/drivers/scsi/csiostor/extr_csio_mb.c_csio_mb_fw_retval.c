
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cmd_hdr {int lo; } ;
struct csio_mb {scalar_t__ mb; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 int FW_CMD_RETVAL_G (int ) ;
 int ntohl (int ) ;

enum fw_retval
csio_mb_fw_retval(struct csio_mb *mbp)
{
 struct fw_cmd_hdr *hdr;

 hdr = (struct fw_cmd_hdr *)(mbp->mb);

 return FW_CMD_RETVAL_G(ntohl(hdr->lo));
}
