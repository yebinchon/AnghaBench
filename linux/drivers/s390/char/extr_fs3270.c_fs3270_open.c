
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tty_struct {int index; TYPE_1__* driver; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int rows; int cols; } ;
struct idal_buffer {TYPE_2__ view; struct idal_buffer* rdbuf; int fs_pid; int wait; } ;
struct fs3270 {TYPE_2__ view; struct fs3270* rdbuf; int fs_pid; int wait; } ;
struct file {struct idal_buffer* private_data; } ;
struct TYPE_7__ {scalar_t__ major; } ;


 int EBUSY ;
 int ENODEV ;
 scalar_t__ IBM_FS3270_MAJOR ;
 scalar_t__ IBM_TTY3270_MAJOR ;
 scalar_t__ IS_ERR (struct idal_buffer*) ;
 int PTR_ERR (struct idal_buffer*) ;
 int RAW3270_VIEW_LOCK_BH ;
 int current ;
 int file_inode (struct file*) ;
 struct idal_buffer* fs3270_alloc_view () ;
 int fs3270_fn ;
 int fs3270_free_view (TYPE_2__*) ;
 int fs3270_mutex ;
 struct tty_struct* get_current_tty () ;
 int get_pid (int ) ;
 struct idal_buffer* idal_buffer_alloc (int,int ) ;
 scalar_t__ imajor (int ) ;
 int iminor (int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int raw3270_activate_view (TYPE_2__*) ;
 int raw3270_add_view (TYPE_2__*,int *,int,int ) ;
 int raw3270_del_view (TYPE_2__*) ;
 scalar_t__ raw3270_find_view (int *,int) ;
 int raw3270_put_view (TYPE_2__*) ;
 int stream_open (struct inode*,struct file*) ;
 int task_pid (int ) ;
 int tty_kref_put (struct tty_struct*) ;

__attribute__((used)) static int
fs3270_open(struct inode *inode, struct file *filp)
{
 struct fs3270 *fp;
 struct idal_buffer *ib;
 int minor, rc = 0;

 if (imajor(file_inode(filp)) != IBM_FS3270_MAJOR)
  return -ENODEV;
 minor = iminor(file_inode(filp));

 if (minor == 0) {
  struct tty_struct *tty = get_current_tty();
  if (!tty || tty->driver->major != IBM_TTY3270_MAJOR) {
   tty_kref_put(tty);
   return -ENODEV;
  }
  minor = tty->index;
  tty_kref_put(tty);
 }
 mutex_lock(&fs3270_mutex);

 fp = (struct fs3270 *) raw3270_find_view(&fs3270_fn, minor);
 if (!IS_ERR(fp)) {
  raw3270_put_view(&fp->view);
  rc = -EBUSY;
  goto out;
 }

 fp = fs3270_alloc_view();
 if (IS_ERR(fp)) {
  rc = PTR_ERR(fp);
  goto out;
 }

 init_waitqueue_head(&fp->wait);
 fp->fs_pid = get_pid(task_pid(current));
 rc = raw3270_add_view(&fp->view, &fs3270_fn, minor,
         RAW3270_VIEW_LOCK_BH);
 if (rc) {
  fs3270_free_view(&fp->view);
  goto out;
 }


 ib = idal_buffer_alloc(2*fp->view.rows*fp->view.cols + 5, 0);
 if (IS_ERR(ib)) {
  raw3270_put_view(&fp->view);
  raw3270_del_view(&fp->view);
  rc = PTR_ERR(ib);
  goto out;
 }
 fp->rdbuf = ib;

 rc = raw3270_activate_view(&fp->view);
 if (rc) {
  raw3270_put_view(&fp->view);
  raw3270_del_view(&fp->view);
  goto out;
 }
 stream_open(inode, filp);
 filp->private_data = fp;
out:
 mutex_unlock(&fs3270_mutex);
 return rc;
}
