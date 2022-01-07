
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_fw_core {struct gb_connection* mgmt_connection; } ;
struct gb_connection {int dummy; } ;
struct device {int dummy; } ;


 struct gb_fw_core* dev_get_drvdata (struct device*) ;

struct gb_connection *to_fw_mgmt_connection(struct device *dev)
{
 struct gb_fw_core *fw_core = dev_get_drvdata(dev);

 return fw_core->mgmt_connection;
}
