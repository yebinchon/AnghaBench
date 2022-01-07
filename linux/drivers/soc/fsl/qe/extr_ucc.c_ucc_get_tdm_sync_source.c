
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum qe_clock { ____Placeholder_qe_clock } qe_clock ;
typedef enum comm_dir { ____Placeholder_comm_dir } comm_dir ;


 int COMM_DIR_RX ;
 int COMM_DIR_TX ;
 int EINVAL ;






 int QE_RSYNC_PIN ;
 int QE_TSYNC_PIN ;

__attribute__((used)) static int ucc_get_tdm_sync_source(u32 tdm_num, enum qe_clock clock,
       enum comm_dir mode)
{
 int source = -EINVAL;

 if (mode == COMM_DIR_RX && clock == QE_RSYNC_PIN) {
  source = 0;
  return source;
 }
 if (mode == COMM_DIR_TX && clock == QE_TSYNC_PIN) {
  source = 0;
  return source;
 }

 switch (tdm_num) {
 case 0:
 case 1:
  switch (clock) {
  case 128:
   source = 1;
   break;
  case 133:
   source = 2;
   break;
  default:
   break;
  }
  break;
 case 2:
 case 3:
  switch (clock) {
  case 128:
   source = 1;
   break;
  case 132:
   source = 2;
   break;
  default:
   break;
  }
  break;
 case 4:
 case 5:
  switch (clock) {
  case 131:
   source = 1;
   break;
  case 130:
   source = 2;
   break;
  default:
   break;
  }
  break;
 case 6:
 case 7:
  switch (clock) {
  case 131:
   source = 1;
   break;
  case 129:
   source = 2;
   break;
  default:
   break;
  }
  break;
 }

 return source;
}
