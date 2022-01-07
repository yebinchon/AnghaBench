
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_async_handle {int link; scalar_t__ in_use; scalar_t__ buffer_len; scalar_t__ is_final; } ;
struct hd_async_context {int dummy; } ;


 int list_del_init (int *) ;

__attribute__((used)) static inline void
beiscsi_hdl_put_handle(struct hd_async_context *pasync_ctx,
    struct hd_async_handle *pasync_handle)
{
 pasync_handle->is_final = 0;
 pasync_handle->buffer_len = 0;
 pasync_handle->in_use = 0;
 list_del_init(&pasync_handle->link);
}
