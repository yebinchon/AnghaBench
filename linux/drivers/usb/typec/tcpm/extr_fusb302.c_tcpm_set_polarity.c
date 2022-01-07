
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpc_dev {int dummy; } ;
typedef enum typec_cc_polarity { ____Placeholder_typec_cc_polarity } typec_cc_polarity ;



__attribute__((used)) static int tcpm_set_polarity(struct tcpc_dev *dev,
        enum typec_cc_polarity polarity)
{
 return 0;
}
