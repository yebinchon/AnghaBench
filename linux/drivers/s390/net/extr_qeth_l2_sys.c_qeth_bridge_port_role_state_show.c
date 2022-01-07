
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int role; scalar_t__ supported_funcs; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {TYPE_2__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum qeth_sbp_states { ____Placeholder_qeth_sbp_states } qeth_sbp_states ;


 int EINVAL ;
 int EIO ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int,int) ;






 struct qeth_card* dev_get_drvdata (struct device*) ;
 int qeth_bridgeport_query_ports (struct qeth_card*,int*,int*) ;
 scalar_t__ qeth_card_hw_is_reachable (struct qeth_card*) ;
 scalar_t__ qeth_l2_vnicc_is_in_use (struct qeth_card*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t qeth_bridge_port_role_state_show(struct device *dev,
    struct device_attribute *attr, char *buf,
    int show_state)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 enum qeth_sbp_states state = 129;
 int rc = 0;
 char *word;

 if (!card)
  return -EINVAL;

 if (qeth_l2_vnicc_is_in_use(card))
  return sprintf(buf, "n/a (VNIC characteristics)\n");

 if (qeth_card_hw_is_reachable(card) &&
     card->options.sbp.supported_funcs)
  rc = qeth_bridgeport_query_ports(card,
   &card->options.sbp.role, &state);
 if (!rc) {
  if (show_state)
   switch (state) {
   case 129:
    word = "inactive"; break;
   case 128:
    word = "standby"; break;
   case 130:
    word = "active"; break;
   default:
    rc = -EIO;
   }
  else
   switch (card->options.sbp.role) {
   case 133:
    word = "none"; break;
   case 132:
    word = "primary"; break;
   case 131:
    word = "secondary"; break;
   default:
    rc = -EIO;
   }
  if (rc)
   QETH_CARD_TEXT_(card, 2, "SBP%02x:%02x",
    card->options.sbp.role, state);
  else
   rc = sprintf(buf, "%s\n", word);
 }

 return rc;
}
