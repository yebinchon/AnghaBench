
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sess_data {TYPE_1__* iov; int buf0_type; } ;
struct TYPE_2__ {int iov_base; } ;


 int CIFS_NO_BUFFER ;
 int free_rsp_buf (int ,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void
sess_free_buffer(struct sess_data *sess_data)
{

 free_rsp_buf(sess_data->buf0_type, sess_data->iov[0].iov_base);
 sess_data->buf0_type = CIFS_NO_BUFFER;
 kfree(sess_data->iov[2].iov_base);
}
