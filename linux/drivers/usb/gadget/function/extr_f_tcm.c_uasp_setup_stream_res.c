
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uas_stream {TYPE_1__* req_status; TYPE_3__* req_out; TYPE_2__* req_in; } ;
struct f_uas {struct uas_stream* stream; } ;
struct TYPE_6__ {int stream_id; } ;
struct TYPE_5__ {int stream_id; } ;
struct TYPE_4__ {int stream_id; } ;



__attribute__((used)) static void uasp_setup_stream_res(struct f_uas *fu, int max_streams)
{
 int i;

 for (i = 0; i < max_streams; i++) {
  struct uas_stream *s = &fu->stream[i];

  s->req_in->stream_id = i + 1;
  s->req_out->stream_id = i + 1;
  s->req_status->stream_id = i + 1;
 }
}
