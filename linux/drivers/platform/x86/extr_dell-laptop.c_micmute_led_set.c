
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct calling_interface_token {int value; int location; } ;
struct calling_interface_buffer {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int CLASS_TOKEN_WRITE ;
 int ENODEV ;
 int GLOBAL_MIC_MUTE_DISABLE ;
 int GLOBAL_MIC_MUTE_ENABLE ;
 int LED_OFF ;
 int SELECT_TOKEN_STD ;
 int dell_fill_request (struct calling_interface_buffer*,int ,int ,int ,int ) ;
 int dell_send_request (struct calling_interface_buffer*,int ,int ) ;
 struct calling_interface_token* dell_smbios_find_token (int ) ;

__attribute__((used)) static int micmute_led_set(struct led_classdev *led_cdev,
      enum led_brightness brightness)
{
 struct calling_interface_buffer buffer;
 struct calling_interface_token *token;
 int state = brightness != LED_OFF;

 if (state == 0)
  token = dell_smbios_find_token(GLOBAL_MIC_MUTE_DISABLE);
 else
  token = dell_smbios_find_token(GLOBAL_MIC_MUTE_ENABLE);

 if (!token)
  return -ENODEV;

 dell_fill_request(&buffer, token->location, token->value, 0, 0);
 dell_send_request(&buffer, CLASS_TOKEN_WRITE, SELECT_TOKEN_STD);

 return 0;
}
