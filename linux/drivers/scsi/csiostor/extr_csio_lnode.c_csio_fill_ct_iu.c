
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct fc_ct_hdr {int ct_cmd; void* ct_fs_subtype; void* ct_fs_type; int ct_rev; } ;


 int FC_CT_REV ;
 int htons (int ) ;

__attribute__((used)) static void
csio_fill_ct_iu(void *buf, uint8_t type, uint8_t sub_type, uint16_t op)
{
 struct fc_ct_hdr *cmd = (struct fc_ct_hdr *)buf;
 cmd->ct_rev = FC_CT_REV;
 cmd->ct_fs_type = type;
 cmd->ct_fs_subtype = sub_type;
 cmd->ct_cmd = htons(op);
}
