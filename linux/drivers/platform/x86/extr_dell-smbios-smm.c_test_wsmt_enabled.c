
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct calling_interface_token {int location; } ;
struct calling_interface_buffer {int dummy; } ;
struct TYPE_4__ {int* output; int * input; int cmd_select; int cmd_class; } ;


 int CLASS_TOKEN_READ ;
 int SELECT_TOKEN_STD ;
 int WSMT_EN_TOKEN ;
 TYPE_1__* buffer ;
 struct calling_interface_token* dell_smbios_find_token (int ) ;
 int dell_smbios_smm_call (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static bool test_wsmt_enabled(void)
{
 struct calling_interface_token *wsmt;


 wsmt = dell_smbios_find_token(WSMT_EN_TOKEN);
 if (!wsmt)
  return 0;





 buffer->cmd_class = CLASS_TOKEN_READ;
 buffer->cmd_select = SELECT_TOKEN_STD;
 memset(buffer, 0, sizeof(struct calling_interface_buffer));
 buffer->input[0] = wsmt->location;
 buffer->output[0] = 99;
 dell_smbios_smm_call(buffer);
 if (buffer->output[0] == 99)
  return 1;

 return 0;
}
