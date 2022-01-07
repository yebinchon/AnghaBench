
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_3__ {int buffer_status; } ;


 int AUDIO_INT_ENABLE ;
 int AUDIO_INT_MASK ;
 int AUDIO_INT_WRITE_BUFFER_1_EMPTY ;
 int AUDIO_INT_WRITE_BUFFER_2_EMPTY ;
 int EBUSY ;
 int ENODEV ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 TYPE_1__* audio_data ;
 int audio_write (TYPE_1__*,int ,int ) ;
 int open_count ;

__attribute__((used)) static int goldfish_audio_open(struct inode *ip, struct file *fp)
{
 if (!audio_data)
  return -ENODEV;

 if (atomic_inc_return(&open_count) == 1) {
  fp->private_data = audio_data;
  audio_data->buffer_status = (AUDIO_INT_WRITE_BUFFER_1_EMPTY |
          AUDIO_INT_WRITE_BUFFER_2_EMPTY);
  audio_write(audio_data, AUDIO_INT_ENABLE, AUDIO_INT_MASK);
  return 0;
 }

 atomic_dec(&open_count);
 return -EBUSY;
}
