
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink_pipe {int dummy; } ;
struct glink_rpm_pipe {int head; } ;


 size_t ALIGN (size_t,int) ;
 size_t ALIGN_DOWN (size_t,int) ;
 scalar_t__ WARN (size_t,char*) ;
 unsigned int glink_rpm_tx_write_one (struct glink_rpm_pipe*,unsigned int,char*,size_t) ;
 int memcpy (char*,void const*,size_t) ;
 unsigned int readl (int ) ;
 struct glink_rpm_pipe* to_rpm_pipe (struct qcom_glink_pipe*) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void glink_rpm_tx_write(struct qcom_glink_pipe *glink_pipe,
          const void *hdr, size_t hlen,
          const void *data, size_t dlen)
{
 struct glink_rpm_pipe *pipe = to_rpm_pipe(glink_pipe);
 size_t tlen = hlen + dlen;
 size_t aligned_dlen;
 unsigned int head;
 char padding[8] = {0};
 size_t pad;


 if (WARN(hlen % 4, "Glink Header length must be 4 bytes aligned\n"))
  return;





 aligned_dlen = ALIGN_DOWN(dlen, 4);
 if (aligned_dlen != dlen)
  memcpy(padding, data + aligned_dlen, dlen - aligned_dlen);

 head = readl(pipe->head);
 head = glink_rpm_tx_write_one(pipe, head, hdr, hlen);
 head = glink_rpm_tx_write_one(pipe, head, data, aligned_dlen);

 pad = ALIGN(tlen, 8) - ALIGN_DOWN(tlen, 4);
 if (pad)
  head = glink_rpm_tx_write_one(pipe, head, padding, pad);
 writel(head, pipe->head);
}
