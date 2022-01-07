
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_audio_buf {void* buf; } ;


 int ENOMEM ;
 struct f_audio_buf* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int kfree (struct f_audio_buf*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static struct f_audio_buf *f_audio_buffer_alloc(int buf_size)
{
 struct f_audio_buf *copy_buf;

 copy_buf = kzalloc(sizeof *copy_buf, GFP_ATOMIC);
 if (!copy_buf)
  return ERR_PTR(-ENOMEM);

 copy_buf->buf = kzalloc(buf_size, GFP_ATOMIC);
 if (!copy_buf->buf) {
  kfree(copy_buf);
  return ERR_PTR(-ENOMEM);
 }

 return copy_buf;
}
