
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct calling_interface_token {int value; int location; } ;
struct calling_interface_buffer {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int CLASS_TOKEN_WRITE ;
 int EINVAL ;
 int SELECT_TOKEN_STD ;
 int dell_fill_request (struct calling_interface_buffer*,int ,int ,int ,int ) ;
 int dell_send_request (struct calling_interface_buffer*,int ,int ) ;
 struct calling_interface_token* dell_smbios_find_token (int ) ;
 int * kbd_tokens ;

__attribute__((used)) static int kbd_set_token_bit(u8 bit)
{
 struct calling_interface_buffer buffer;
 struct calling_interface_token *token;
 int ret;

 if (bit >= ARRAY_SIZE(kbd_tokens))
  return -EINVAL;

 token = dell_smbios_find_token(kbd_tokens[bit]);
 if (!token)
  return -EINVAL;

 dell_fill_request(&buffer, token->location, token->value, 0, 0);
 ret = dell_send_request(&buffer, CLASS_TOKEN_WRITE, SELECT_TOKEN_STD);

 return ret;
}
