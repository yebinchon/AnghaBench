
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int dummy; } ;


 char SNS0_BUS_OUT_CHECK ;
 char SNS0_CMD_REJECT ;
 char SNS0_DATA_CHECK ;
 char SNS0_EQUIPMENT_CHECK ;
 char SNS0_INTERVENTION_REQ ;
 char SNS0_OVERRUN ;
 char SNS1_EOC ;
 char SNS1_FILE_PROTECTED ;
 char SNS1_INV_TRACK_FORMAT ;
 char SNS1_NO_REC_FOUND ;
 char SNS2_ENV_DATA_PRESENT ;
 struct dasd_ccw_req* dasd_3990_erp_EOC (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_bus_out (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_com_rej (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_data_check (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_env_data (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_equip_check (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_file_prot (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_int_req (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_inv_format (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_no_rec (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_overrun (struct dasd_ccw_req*,char*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_inspect_24(struct dasd_ccw_req * erp, char *sense)
{

 struct dasd_ccw_req *erp_filled = ((void*)0);



 if ((erp_filled == ((void*)0)) && (sense[0] & SNS0_CMD_REJECT)) {
  erp_filled = dasd_3990_erp_com_rej(erp, sense);
 }

 if ((erp_filled == ((void*)0)) && (sense[0] & SNS0_INTERVENTION_REQ)) {
  erp_filled = dasd_3990_erp_int_req(erp);
 }

 if ((erp_filled == ((void*)0)) && (sense[0] & SNS0_BUS_OUT_CHECK)) {
  erp_filled = dasd_3990_erp_bus_out(erp);
 }

 if ((erp_filled == ((void*)0)) && (sense[0] & SNS0_EQUIPMENT_CHECK)) {
  erp_filled = dasd_3990_erp_equip_check(erp, sense);
 }

 if ((erp_filled == ((void*)0)) && (sense[0] & SNS0_DATA_CHECK)) {
  erp_filled = dasd_3990_erp_data_check(erp, sense);
 }

 if ((erp_filled == ((void*)0)) && (sense[0] & SNS0_OVERRUN)) {
  erp_filled = dasd_3990_erp_overrun(erp, sense);
 }

 if ((erp_filled == ((void*)0)) && (sense[1] & SNS1_INV_TRACK_FORMAT)) {
  erp_filled = dasd_3990_erp_inv_format(erp, sense);
 }

 if ((erp_filled == ((void*)0)) && (sense[1] & SNS1_EOC)) {
  erp_filled = dasd_3990_erp_EOC(erp, sense);
 }

 if ((erp_filled == ((void*)0)) && (sense[2] & SNS2_ENV_DATA_PRESENT)) {
  erp_filled = dasd_3990_erp_env_data(erp, sense);
 }

 if ((erp_filled == ((void*)0)) && (sense[1] & SNS1_NO_REC_FOUND)) {
  erp_filled = dasd_3990_erp_no_rec(erp, sense);
 }

 if ((erp_filled == ((void*)0)) && (sense[1] & SNS1_FILE_PROTECTED)) {
  erp_filled = dasd_3990_erp_file_prot(erp);
 }

 if (erp_filled == ((void*)0)) {

  erp_filled = erp;
 }

 return erp_filled;

}
