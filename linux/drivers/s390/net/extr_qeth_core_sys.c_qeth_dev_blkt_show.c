
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t qeth_dev_blkt_show(char *buf, struct qeth_card *card, int value)
{

 if (!card)
  return -EINVAL;

 return sprintf(buf, "%i\n", value);
}
