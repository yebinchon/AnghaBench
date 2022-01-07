
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int dummy; } ;






 int fw_run_transaction (struct fw_card*,int,int,int,int,unsigned long long,void*,size_t) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sbp_run_transaction(struct fw_card *card, int tcode, int destination_id,
  int generation, int speed, unsigned long long offset,
  void *payload, size_t length)
{
 int attempt, ret, delay;

 for (attempt = 1; attempt <= 5; attempt++) {
  ret = fw_run_transaction(card, tcode, destination_id,
    generation, speed, offset, payload, length);

  switch (ret) {
  case 130:
  case 128:
  case 131:
  case 129:
   return ret;

  default:
   delay = 5 * attempt * attempt;
   usleep_range(delay, delay * 2);
  }
 }

 return ret;
}
