
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_sg_context {scalar_t__ get_phys_addr; int cur_offset; } ;
struct esas2r_request {int comp_cb; } ;
struct esas2r_ioctl_fs {scalar_t__ status; int data; } ;
struct esas2r_adapter {long fs_api_buffer_size; scalar_t__ fs_api_buffer; int fs_api_mutex; scalar_t__ fs_api_command_done; int fs_api_waiter; } ;
typedef scalar_t__ PGETPHYSADDR ;


 scalar_t__ ATTO_STS_OUT_OF_RSRC ;
 int EBUSY ;
 int ENOMEM ;
 struct esas2r_request* esas2r_alloc_request (struct esas2r_adapter*) ;
 int esas2r_debug (char*) ;
 int esas2r_free_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_process_fs_ioctl (struct esas2r_adapter*,struct esas2r_ioctl_fs*,struct esas2r_request*,struct esas2r_sg_context*) ;
 int fs_api_complete_req ;
 scalar_t__ get_physaddr_fs_api ;
 int memcpy (char*,scalar_t__,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible (int ,scalar_t__) ;

int esas2r_read_fs(struct esas2r_adapter *a, char *buf, long off, int count)
{
 if (!a->fs_api_buffer)
  return -ENOMEM;

 if (off == 0) {
  struct esas2r_request *rq;
  struct esas2r_sg_context sgc;
  struct esas2r_ioctl_fs *fs =
   (struct esas2r_ioctl_fs *)a->fs_api_buffer;


  if (mutex_lock_interruptible(&a->fs_api_mutex)) {
busy:
   fs->status = ATTO_STS_OUT_OF_RSRC;
   return -EBUSY;
  }
  rq = esas2r_alloc_request(a);
  if (rq == ((void*)0)) {
   esas2r_debug("esas2r_read_fs: out of requests");
   mutex_unlock(&a->fs_api_mutex);
   goto busy;
  }

  rq->comp_cb = fs_api_complete_req;



  sgc.cur_offset = fs->data;
  sgc.get_phys_addr = (PGETPHYSADDR)get_physaddr_fs_api;

  a->fs_api_command_done = 0;

  if (!esas2r_process_fs_ioctl(a, fs, rq, &sgc)) {
   if (fs->status == ATTO_STS_OUT_OF_RSRC)
    count = -EBUSY;

   goto dont_wait;
  }



  while (!a->fs_api_command_done)
   wait_event_interruptible(a->fs_api_waiter,
       a->fs_api_command_done);
  ;
dont_wait:

  mutex_unlock(&a->fs_api_mutex);
  esas2r_free_request(a, (struct esas2r_request *)rq);


  if (count < 0)
   return count;
 }

 if (off > a->fs_api_buffer_size)
  return 0;

 if (count + off > a->fs_api_buffer_size)
  count = a->fs_api_buffer_size - off;

 if (count < 0)
  return 0;

 memcpy(buf, a->fs_api_buffer + off, count);

 return count;
}
