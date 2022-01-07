
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inter_packet; } ;
struct TYPE_4__ {TYPE_1__ blkt; } ;
struct qeth_card {TYPE_2__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct qeth_card* dev_get_drvdata (struct device*) ;
 int qeth_dev_blkt_show (char*,struct qeth_card*,int ) ;

__attribute__((used)) static ssize_t qeth_dev_blkt_inter_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 return qeth_dev_blkt_show(buf, card, card->info.blkt.inter_packet);
}
