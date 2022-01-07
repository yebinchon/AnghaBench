
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {scalar_t__ ser; int dev_name; } ;
typedef int dev_t ;


 int SYNTH_DEFAULT_DEV ;
 scalar_t__ SYNTH_DEFAULT_SER ;
 int ser_to_dev (scalar_t__,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int tty_dev_name_to_number (int ,int *) ;

__attribute__((used)) static int get_dev_to_use(struct spk_synth *synth, dev_t *dev_no)
{

 if (strcmp(synth->dev_name, SYNTH_DEFAULT_DEV) ||
     synth->ser == SYNTH_DEFAULT_SER)
  return tty_dev_name_to_number(synth->dev_name, dev_no);

 return ser_to_dev(synth->ser, dev_no);
}
