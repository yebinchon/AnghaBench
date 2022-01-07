
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla27xx_image_status {int generation; } ;
typedef int int16_t ;


 int le16_to_cpu (int ) ;
 int ql_dbg (int ,int *,int,char*,int) ;
 int ql_dbg_init ;

__attribute__((used)) static int
qla27xx_compare_image_generation(
    struct qla27xx_image_status *pri_image_status,
    struct qla27xx_image_status *sec_image_status)
{

 int16_t delta =
     le16_to_cpu(pri_image_status->generation) -
     le16_to_cpu(sec_image_status->generation);

 ql_dbg(ql_dbg_init, ((void*)0), 0x0180, "generation delta = %d\n", delta);

 return delta;
}
