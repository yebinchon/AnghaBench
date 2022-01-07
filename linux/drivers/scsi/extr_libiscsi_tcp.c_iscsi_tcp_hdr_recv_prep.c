
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdr_buf; int segment; } ;
struct iscsi_tcp_conn {TYPE_1__ in; TYPE_2__* iscsi_conn; } ;
struct iscsi_hdr {int dummy; } ;
struct TYPE_4__ {scalar_t__ hdrdgst_en; } ;


 int ISCSI_DBG_TCP (TYPE_2__*,char*,char*) ;
 int iscsi_segment_init_linear (int *,int ,int,int ,int *) ;
 int iscsi_tcp_hdr_recv_done ;

void iscsi_tcp_hdr_recv_prep(struct iscsi_tcp_conn *tcp_conn)
{
 ISCSI_DBG_TCP(tcp_conn->iscsi_conn,
        "(%s)\n", tcp_conn->iscsi_conn->hdrdgst_en ?
        "digest enabled" : "digest disabled");
 iscsi_segment_init_linear(&tcp_conn->in.segment,
    tcp_conn->in.hdr_buf, sizeof(struct iscsi_hdr),
    iscsi_tcp_hdr_recv_done, ((void*)0));
}
