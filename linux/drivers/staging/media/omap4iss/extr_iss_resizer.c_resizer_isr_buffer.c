
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_resizer_device {int video_out; } ;
struct iss_buffer {int iss_addr; } ;


 struct iss_buffer* omap4iss_video_buffer_next (int *) ;
 int resizer_enable (struct iss_resizer_device*,int) ;
 int resizer_set_outaddr (struct iss_resizer_device*,int ) ;

__attribute__((used)) static void resizer_isr_buffer(struct iss_resizer_device *resizer)
{
 struct iss_buffer *buffer;




 resizer_enable(resizer, 0);

 buffer = omap4iss_video_buffer_next(&resizer->video_out);
 if (!buffer)
  return;

 resizer_set_outaddr(resizer, buffer->iss_addr);

 resizer_enable(resizer, 1);
}
