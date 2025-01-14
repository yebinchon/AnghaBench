
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct esas2r_sas_nvram {int dummy; } ;
struct esas2r_inbound_list_source_entry {int dummy; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_vda_ob_rsp {int dummy; } ;


 scalar_t__ ALIGN (int,int) ;
 int ESAS2R_DISC_BUF_LEN ;
 int ESAS2R_LIST_EXTRA ;
 int num_ae_requests ;
 int num_requests ;
 int num_sg_lists ;
 scalar_t__ sgl_page_size ;

u32 esas2r_get_uncached_size(struct esas2r_adapter *a)
{
 return sizeof(struct esas2r_sas_nvram)
        + ALIGN(ESAS2R_DISC_BUF_LEN, 8)
        + ALIGN(sizeof(u32), 8)
        + 8
        + (num_sg_lists * (u16)sgl_page_size)
        + ALIGN((num_requests + num_ae_requests + 1 +
   ESAS2R_LIST_EXTRA) *
         sizeof(struct esas2r_inbound_list_source_entry),
         8)
        + ALIGN((num_requests + num_ae_requests + 1 +
   ESAS2R_LIST_EXTRA) *
         sizeof(struct atto_vda_ob_rsp), 8)
        + 256;
}
