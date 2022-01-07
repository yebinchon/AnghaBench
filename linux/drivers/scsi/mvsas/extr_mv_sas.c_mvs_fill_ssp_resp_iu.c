
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssp_response_iu {int datapres; int sense_data_len; int status; int sense_data; scalar_t__ response_data_len; } ;


 int mvs_set_sense (int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static void mvs_fill_ssp_resp_iu(struct ssp_response_iu *iu,
    u8 key, u8 asc, u8 asc_q)
{
 iu->datapres = 2;
 iu->response_data_len = 0;
 iu->sense_data_len = 17;
 iu->status = 02;
 mvs_set_sense(iu->sense_data, 17, 0,
   key, asc, asc_q);
}
