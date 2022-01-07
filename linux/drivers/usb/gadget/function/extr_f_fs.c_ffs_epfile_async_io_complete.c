
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {struct ffs_io_data* context; } ;
struct usb_ep {int dummy; } ;
struct ffs_io_data {int work; struct ffs_data* ffs; } ;
struct ffs_data {int io_completion_wq; } ;


 int ENTER () ;
 int INIT_WORK (int *,int ) ;
 int ffs_user_copy_worker ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void ffs_epfile_async_io_complete(struct usb_ep *_ep,
      struct usb_request *req)
{
 struct ffs_io_data *io_data = req->context;
 struct ffs_data *ffs = io_data->ffs;

 ENTER();

 INIT_WORK(&io_data->work, ffs_user_copy_worker);
 queue_work(ffs->io_completion_wq, &io_data->work);
}
