
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_cmd {int ecx; int ebx; int command_code; int command_address; int magic; } ;
struct calling_interface_buffer {int dummy; } ;


 int SMI_CMD_MAGIC ;
 struct calling_interface_buffer* buffer ;
 int da_command_address ;
 int da_command_code ;
 int dcdbas_smi_request (struct smi_cmd*) ;
 int memcpy (struct calling_interface_buffer*,struct calling_interface_buffer*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smm_mutex ;
 int virt_to_phys (struct calling_interface_buffer*) ;

__attribute__((used)) static int dell_smbios_smm_call(struct calling_interface_buffer *input)
{
 struct smi_cmd command;
 size_t size;

 size = sizeof(struct calling_interface_buffer);
 command.magic = SMI_CMD_MAGIC;
 command.command_address = da_command_address;
 command.command_code = da_command_code;
 command.ebx = virt_to_phys(buffer);
 command.ecx = 0x42534931;

 mutex_lock(&smm_mutex);
 memcpy(buffer, input, size);
 dcdbas_smi_request(&command);
 memcpy(input, buffer, size);
 mutex_unlock(&smm_mutex);
 return 0;
}
