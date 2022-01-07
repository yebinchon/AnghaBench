
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct calling_interface_buffer {void** input; } ;


 int memset (struct calling_interface_buffer*,int ,int) ;

__attribute__((used)) static void dell_fill_request(struct calling_interface_buffer *buffer,
          u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
 memset(buffer, 0, sizeof(struct calling_interface_buffer));
 buffer->input[0] = arg0;
 buffer->input[1] = arg1;
 buffer->input[2] = arg2;
 buffer->input[3] = arg3;
}
