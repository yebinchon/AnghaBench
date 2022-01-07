
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mux_rx {int offset; int len; int (* callback ) (int *,unsigned int,int,int ,int ) ;scalar_t__ buf; struct mux_dev* mux_dev; } ;
struct mux_pkt_header {int * data; int packet_type; int payload_size; int start_flag; } ;
struct mux_dev {int tty_dev; } ;


 int ALIGN (unsigned int,int) ;
 unsigned int MUX_HEADER_SIZE ;
 int RECV_PACKET_PROCESS_COMPLETE ;
 int RECV_PACKET_PROCESS_CONTINUE ;
 unsigned int START_FLAG ;
 int TO_HOST_BUFFER_REQUEST_FAIL ;
 int TO_HOST_INVALID_PACKET ;
 unsigned short __le16_to_cpu (int ) ;
 unsigned int __le32_to_cpu (int ) ;
 int packet_type_to_index (unsigned short) ;
 int pr_err (char*,int,...) ;
 int stub1 (int *,unsigned int,int,int ,int ) ;
 int stub2 (int *,unsigned int,int,int ,int ) ;

__attribute__((used)) static int up_to_host(struct mux_rx *r)
{
 struct mux_dev *mux_dev = r->mux_dev;
 struct mux_pkt_header *mux_header;
 unsigned int start_flag;
 unsigned int payload_size;
 unsigned short packet_type;
 int total_len;
 u32 packet_size_sum = r->offset;
 int index;
 int ret = TO_HOST_INVALID_PACKET;
 int len = r->len;

 while (1) {
  mux_header = (struct mux_pkt_header *)(r->buf +
             packet_size_sum);
  start_flag = __le32_to_cpu(mux_header->start_flag);
  payload_size = __le32_to_cpu(mux_header->payload_size);
  packet_type = __le16_to_cpu(mux_header->packet_type);

  if (start_flag != START_FLAG) {
   pr_err("invalid START_FLAG %x\n", start_flag);
   break;
  }

  total_len = ALIGN(MUX_HEADER_SIZE + payload_size, 4);

  if (len - packet_size_sum < total_len) {
   pr_err("invalid payload : %d %d %04x\n",
          payload_size, len, packet_type);
   break;
  }

  index = packet_type_to_index(packet_type);
  if (index < 0) {
   pr_err("invalid index %d\n", index);
   break;
  }

  ret = r->callback(mux_header->data,
    payload_size,
    index,
    mux_dev->tty_dev,
    RECV_PACKET_PROCESS_CONTINUE
    );
  if (ret == TO_HOST_BUFFER_REQUEST_FAIL) {
   r->offset += packet_size_sum;
   break;
  }

  packet_size_sum += total_len;
  if (len - packet_size_sum <= MUX_HEADER_SIZE + 2) {
   ret = r->callback(((void*)0),
     0,
     index,
     mux_dev->tty_dev,
     RECV_PACKET_PROCESS_COMPLETE
     );
   break;
  }
 }

 return ret;
}
