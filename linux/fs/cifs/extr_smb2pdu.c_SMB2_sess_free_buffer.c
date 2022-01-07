
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SMB2_sess_data {int buf0_type; TYPE_1__* iov; } ;
struct TYPE_2__ {int iov_base; } ;


 int CIFS_NO_BUFFER ;
 int free_rsp_buf (int ,int ) ;

__attribute__((used)) static void
SMB2_sess_free_buffer(struct SMB2_sess_data *sess_data)
{
 free_rsp_buf(sess_data->buf0_type, sess_data->iov[0].iov_base);
 sess_data->buf0_type = CIFS_NO_BUFFER;
}
