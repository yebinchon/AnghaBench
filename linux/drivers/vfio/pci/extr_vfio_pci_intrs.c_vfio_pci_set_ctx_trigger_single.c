
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct eventfd_ctx {int dummy; } ;
typedef int int32_t ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct eventfd_ctx*) ;
 int PTR_ERR (struct eventfd_ctx*) ;
 int VFIO_IRQ_SET_DATA_BOOL ;
 int VFIO_IRQ_SET_DATA_EVENTFD ;
 int VFIO_IRQ_SET_DATA_NONE ;
 struct eventfd_ctx* eventfd_ctx_fdget (int) ;
 int eventfd_ctx_put (struct eventfd_ctx*) ;
 int eventfd_signal (struct eventfd_ctx*,int) ;

__attribute__((used)) static int vfio_pci_set_ctx_trigger_single(struct eventfd_ctx **ctx,
        unsigned int count, uint32_t flags,
        void *data)
{

 if (flags & VFIO_IRQ_SET_DATA_NONE) {
  if (*ctx) {
   if (count) {
    eventfd_signal(*ctx, 1);
   } else {
    eventfd_ctx_put(*ctx);
    *ctx = ((void*)0);
   }
   return 0;
  }
 } else if (flags & VFIO_IRQ_SET_DATA_BOOL) {
  uint8_t trigger;

  if (!count)
   return -EINVAL;

  trigger = *(uint8_t *)data;
  if (trigger && *ctx)
   eventfd_signal(*ctx, 1);

  return 0;
 } else if (flags & VFIO_IRQ_SET_DATA_EVENTFD) {
  int32_t fd;

  if (!count)
   return -EINVAL;

  fd = *(int32_t *)data;
  if (fd == -1) {
   if (*ctx)
    eventfd_ctx_put(*ctx);
   *ctx = ((void*)0);
  } else if (fd >= 0) {
   struct eventfd_ctx *efdctx;

   efdctx = eventfd_ctx_fdget(fd);
   if (IS_ERR(efdctx))
    return PTR_ERR(efdctx);

   if (*ctx)
    eventfd_ctx_put(*ctx);

   *ctx = efdctx;
  }
  return 0;
 }

 return -EINVAL;
}
