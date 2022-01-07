
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_data_t {int dummy; } ;
struct eckd_count {int dummy; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int dummy; } ;


 struct dasd_ccw_req* dasd_eckd_build_check (struct dasd_device*,struct format_data_t*,int,struct eckd_count*,int) ;
 struct dasd_ccw_req* dasd_eckd_build_check_tcw (struct dasd_device*,struct format_data_t*,int,struct eckd_count*,int) ;
 struct dasd_ccw_req* dasd_eckd_build_format (struct dasd_device*,int *,struct format_data_t*,int) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_eckd_format_build_ccw_req(struct dasd_device *base,
          struct format_data_t *fdata, int enable_pav,
          int tpm, struct eckd_count *fmt_buffer, int rpt)
{
 struct dasd_ccw_req *ccw_req;

 if (!fmt_buffer) {
  ccw_req = dasd_eckd_build_format(base, ((void*)0), fdata, enable_pav);
 } else {
  if (tpm)
   ccw_req = dasd_eckd_build_check_tcw(base, fdata,
           enable_pav,
           fmt_buffer, rpt);
  else
   ccw_req = dasd_eckd_build_check(base, fdata, enable_pav,
       fmt_buffer, rpt);
 }

 return ccw_req;
}
