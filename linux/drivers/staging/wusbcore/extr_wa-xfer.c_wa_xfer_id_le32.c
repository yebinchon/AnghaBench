
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_xfer {int id; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline __le32 wa_xfer_id_le32(struct wa_xfer *xfer)
{
 return cpu_to_le32(xfer->id);
}
