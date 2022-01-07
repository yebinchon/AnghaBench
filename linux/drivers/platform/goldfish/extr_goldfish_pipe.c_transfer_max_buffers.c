
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct goldfish_pipe {int lock; int pages; TYPE_2__* command_buffer; } ;
typedef int s32 ;
struct TYPE_3__ {int consumed_size; } ;
struct TYPE_4__ {TYPE_1__ rw_params; } ;


 int ERESTARTSYS ;
 unsigned long PAGE_MASK ;
 int PIPE_CMD_READ ;
 int PIPE_CMD_WRITE ;
 int goldfish_pipe_cmd_locked (struct goldfish_pipe*,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pin_user_pages (unsigned long,unsigned long,unsigned int,int,int ,unsigned int*) ;
 int populate_rw_params (int ,int,unsigned long,unsigned long,unsigned long,unsigned long,unsigned int,int,TYPE_2__*) ;
 int release_user_pages (int ,int,int,int ) ;

__attribute__((used)) static int transfer_max_buffers(struct goldfish_pipe *pipe,
    unsigned long address,
    unsigned long address_end,
    int is_write,
    unsigned long last_page,
    unsigned int last_page_size,
    s32 *consumed_size,
    int *status)
{
 unsigned long first_page = address & PAGE_MASK;
 unsigned int iter_last_page_size;
 int pages_count;


 if (mutex_lock_interruptible(&pipe->lock))
  return -ERESTARTSYS;

 pages_count = pin_user_pages(first_page, last_page,
         last_page_size, is_write,
         pipe->pages, &iter_last_page_size);
 if (pages_count < 0) {
  mutex_unlock(&pipe->lock);
  return pages_count;
 }

 populate_rw_params(pipe->pages, pages_count, address, address_end,
      first_page, last_page, iter_last_page_size, is_write,
      pipe->command_buffer);


 *status = goldfish_pipe_cmd_locked(pipe,
    is_write ? PIPE_CMD_WRITE : PIPE_CMD_READ);

 *consumed_size = pipe->command_buffer->rw_params.consumed_size;

 release_user_pages(pipe->pages, pages_count, is_write, *consumed_size);

 mutex_unlock(&pipe->lock);
 return 0;
}
