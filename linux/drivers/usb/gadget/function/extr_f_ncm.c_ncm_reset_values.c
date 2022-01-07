
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fixed_in_len; int fixed_out_len; scalar_t__ header_len; int cdc_filter; } ;
struct f_ncm {int is_crc; TYPE_1__ port; TYPE_3__* parser_opts; int ndp_sign; } ;
struct TYPE_6__ {int ndp_sign; } ;
struct TYPE_5__ {int dwNtbOutMaxSize; } ;


 int DEFAULT_FILTER ;
 int NTB_DEFAULT_IN_SIZE ;
 int le32_to_cpu (int ) ;
 TYPE_3__ ndp16_opts ;
 TYPE_2__ ntb_parameters ;

__attribute__((used)) static inline void ncm_reset_values(struct f_ncm *ncm)
{
 ncm->parser_opts = &ndp16_opts;
 ncm->is_crc = 0;
 ncm->ndp_sign = ncm->parser_opts->ndp_sign;
 ncm->port.cdc_filter = DEFAULT_FILTER;


 ncm->port.header_len = 0;

 ncm->port.fixed_out_len = le32_to_cpu(ntb_parameters.dwNtbOutMaxSize);
 ncm->port.fixed_in_len = NTB_DEFAULT_IN_SIZE;
}
