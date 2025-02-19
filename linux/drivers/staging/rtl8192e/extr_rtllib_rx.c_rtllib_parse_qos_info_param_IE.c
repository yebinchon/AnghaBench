
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ac_info; } ;
struct rtllib_qos_parameter_info {TYPE_1__ info_element; } ;
struct rtllib_qos_information_element {int ac_info; } ;
struct TYPE_4__ {int param_count; int supported; } ;
struct rtllib_network {TYPE_2__ qos_data; int flags; } ;
struct rtllib_info_element {int dummy; } ;
struct rtllib_device {int dev; } ;


 int NETWORK_HAS_QOS_INFORMATION ;
 int NETWORK_HAS_QOS_PARAMETERS ;
 int netdev_dbg (int ,char*) ;
 int rtllib_qos_convert_ac_to_parameters (struct rtllib_qos_parameter_info*,TYPE_2__*) ;
 int rtllib_read_qos_info_element (struct rtllib_qos_information_element*,struct rtllib_info_element*) ;
 int rtllib_read_qos_param_element (struct rtllib_qos_parameter_info*,struct rtllib_info_element*) ;

__attribute__((used)) static int rtllib_parse_qos_info_param_IE(struct rtllib_device *ieee,
       struct rtllib_info_element
          *info_element,
       struct rtllib_network *network)
{
 int rc = 0;
 struct rtllib_qos_information_element qos_info_element;

 rc = rtllib_read_qos_info_element(&qos_info_element, info_element);

 if (rc == 0) {
  network->qos_data.param_count = qos_info_element.ac_info & 0x0F;
  network->flags |= NETWORK_HAS_QOS_INFORMATION;
 } else {
  struct rtllib_qos_parameter_info param_element;

  rc = rtllib_read_qos_param_element(&param_element,
            info_element);
  if (rc == 0) {
   rtllib_qos_convert_ac_to_parameters(&param_element,
              &(network->qos_data));
   network->flags |= NETWORK_HAS_QOS_PARAMETERS;
   network->qos_data.param_count =
       param_element.info_element.ac_info & 0x0F;
  }
 }

 if (rc == 0) {
  netdev_dbg(ieee->dev, "QoS is supported\n");
  network->qos_data.supported = 1;
 }
 return rc;
}
