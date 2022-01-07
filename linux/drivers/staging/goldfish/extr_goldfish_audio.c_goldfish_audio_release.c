
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int AUDIO_INT_ENABLE ;
 int atomic_dec (int *) ;
 int audio_data ;
 int audio_write (int ,int ,int ) ;
 int open_count ;

__attribute__((used)) static int goldfish_audio_release(struct inode *ip, struct file *fp)
{
 atomic_dec(&open_count);

 audio_write(audio_data, AUDIO_INT_ENABLE, 0);
 return 0;
}
