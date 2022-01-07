
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {char* transfer_buffer; int transfer_buffer_length; } ;
struct dlfb_data {int render_mutex; int cpu_kcycles_used; int bytes_rendered; int bytes_identical; int bytes_sent; TYPE_3__* info; int usb_active; } ;
typedef int cycles_t ;
struct TYPE_5__ {int line_length; scalar_t__ smem_start; } ;
struct TYPE_4__ {int xres; int yres; } ;
struct TYPE_6__ {TYPE_2__ fix; TYPE_1__ var; } ;


 int BPP ;
 int DL_ALIGN_DOWN (int,int) ;
 int DL_ALIGN_UP (int,int) ;
 int EINVAL ;
 int atomic_add (unsigned int,int *) ;
 int atomic_read (int *) ;
 struct urb* dlfb_get_urb (struct dlfb_data*) ;
 scalar_t__ dlfb_render_hline (struct dlfb_data*,struct urb**,char*,char**,int const,int,int*,int*) ;
 int dlfb_submit_urb (struct dlfb_data*,struct urb*,int) ;
 int dlfb_urb_completion (struct urb*) ;
 int get_cycles () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dlfb_handle_damage(struct dlfb_data *dlfb, int x, int y, int width, int height)
{
 int i, ret;
 char *cmd;
 cycles_t start_cycles, end_cycles;
 int bytes_sent = 0;
 int bytes_identical = 0;
 struct urb *urb;
 int aligned_x;

 start_cycles = get_cycles();

 mutex_lock(&dlfb->render_mutex);

 aligned_x = DL_ALIGN_DOWN(x, sizeof(unsigned long));
 width = DL_ALIGN_UP(width + (x-aligned_x), sizeof(unsigned long));
 x = aligned_x;

 if ((width <= 0) ||
     (x + width > dlfb->info->var.xres) ||
     (y + height > dlfb->info->var.yres)) {
  ret = -EINVAL;
  goto unlock_ret;
 }

 if (!atomic_read(&dlfb->usb_active)) {
  ret = 0;
  goto unlock_ret;
 }

 urb = dlfb_get_urb(dlfb);
 if (!urb) {
  ret = 0;
  goto unlock_ret;
 }
 cmd = urb->transfer_buffer;

 for (i = y; i < y + height ; i++) {
  const int line_offset = dlfb->info->fix.line_length * i;
  const int byte_offset = line_offset + (x * BPP);

  if (dlfb_render_hline(dlfb, &urb,
          (char *) dlfb->info->fix.smem_start,
          &cmd, byte_offset, width * BPP,
          &bytes_identical, &bytes_sent))
   goto error;
 }

 if (cmd > (char *) urb->transfer_buffer) {
  int len;
  if (cmd < (char *) urb->transfer_buffer + urb->transfer_buffer_length)
   *cmd++ = 0xAF;

  len = cmd - (char *) urb->transfer_buffer;
  dlfb_submit_urb(dlfb, urb, len);
  bytes_sent += len;
 } else
  dlfb_urb_completion(urb);

error:
 atomic_add(bytes_sent, &dlfb->bytes_sent);
 atomic_add(bytes_identical, &dlfb->bytes_identical);
 atomic_add(width*height*2, &dlfb->bytes_rendered);
 end_cycles = get_cycles();
 atomic_add(((unsigned int) ((end_cycles - start_cycles)
      >> 10)),
     &dlfb->cpu_kcycles_used);

 ret = 0;

unlock_ret:
 mutex_unlock(&dlfb->render_mutex);
 return ret;
}
