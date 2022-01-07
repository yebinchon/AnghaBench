
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDRTAS_SURVEILLANCE_IND ;
 int pr_err (char*,int,long) ;
 long rtas_call (int ,int,int,int *,int ,int ,int) ;
 int wdrtas_token_set_indicator ;

__attribute__((used)) static int wdrtas_set_interval(int interval)
{
 long result;
 static int print_msg = 10;


 interval = (interval + 59) / 60;

 result = rtas_call(wdrtas_token_set_indicator, 3, 1, ((void*)0),
      WDRTAS_SURVEILLANCE_IND, 0, interval);
 if (result < 0 && print_msg) {
  pr_err("setting the watchdog to %i timeout failed: %li\n",
         interval, result);
  print_msg--;
 }

 return result;
}
