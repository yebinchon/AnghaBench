
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {int f_pos; } ;
struct autofs_sb_info {int pipe_mutex; } ;
typedef int ssize_t ;
struct TYPE_4__ {int signal; } ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__ pending; } ;
struct TYPE_5__ {int siglock; } ;


 int EIO ;
 int EPIPE ;
 int SIGPIPE ;
 int __kernel_write (struct file*,char const*,int,int *) ;
 TYPE_3__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int recalc_sigpending () ;
 int sigdelset (int *,int ) ;
 unsigned long sigismember (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int autofs_write(struct autofs_sb_info *sbi,
   struct file *file, const void *addr, int bytes)
{
 unsigned long sigpipe, flags;
 const char *data = (const char *)addr;
 ssize_t wr = 0;

 sigpipe = sigismember(&current->pending.signal, SIGPIPE);

 mutex_lock(&sbi->pipe_mutex);
 while (bytes) {
  wr = __kernel_write(file, data, bytes, &file->f_pos);
  if (wr <= 0)
   break;
  data += wr;
  bytes -= wr;
 }
 mutex_unlock(&sbi->pipe_mutex);




 if (wr == -EPIPE && !sigpipe) {
  spin_lock_irqsave(&current->sighand->siglock, flags);
  sigdelset(&current->pending.signal, SIGPIPE);
  recalc_sigpending();
  spin_unlock_irqrestore(&current->sighand->siglock, flags);
 }


 return bytes == 0 ? 0 : wr < 0 ? wr : -EIO;
}
