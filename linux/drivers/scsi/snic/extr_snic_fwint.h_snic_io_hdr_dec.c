
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u8 ;
typedef int u32 ;
struct snic_io_hdr {int init_ctx; int cmnd_id; int hid; int status; int type; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline void
snic_io_hdr_dec(struct snic_io_hdr *hdr, u8 *typ, u8 *stat, u32 *cmnd_id,
  u32 *hid, ulong *ctx)
{
 *typ = hdr->type;
 *stat = hdr->status;
 *hid = le32_to_cpu(hdr->hid);
 *cmnd_id = le32_to_cpu(hdr->cmnd_id);
 *ctx = hdr->init_ctx;
}
