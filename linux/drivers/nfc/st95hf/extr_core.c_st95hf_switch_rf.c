
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st95hf_context {int dummy; } ;
struct nfc_digital_dev {int curr_rf_tech; } ;


 struct st95hf_context* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int rf_off (struct st95hf_context*) ;
 int st95hf_select_protocol (struct st95hf_context*,int ) ;

__attribute__((used)) static int st95hf_switch_rf(struct nfc_digital_dev *ddev, bool on)
{
 u8 rf_tech;
 struct st95hf_context *stcontext = nfc_digital_get_drvdata(ddev);

 rf_tech = ddev->curr_rf_tech;

 if (on)

  return st95hf_select_protocol(stcontext, rf_tech);


 return rf_off(stcontext);
}
