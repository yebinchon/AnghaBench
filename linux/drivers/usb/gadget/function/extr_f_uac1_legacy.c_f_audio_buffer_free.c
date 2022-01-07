
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_audio_buf {struct f_audio_buf* buf; } ;


 int kfree (struct f_audio_buf*) ;

__attribute__((used)) static void f_audio_buffer_free(struct f_audio_buf *audio_buf)
{
 kfree(audio_buf->buf);
 kfree(audio_buf);
}
