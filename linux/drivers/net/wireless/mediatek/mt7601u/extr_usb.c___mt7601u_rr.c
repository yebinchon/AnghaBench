
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dev; int vend_buf; } ;


 int MT_VEND_BUF ;
 int MT_VEND_MULTI_READ ;
 int USB_DIR_IN ;
 int USHRT_MAX ;
 int WARN_ONCE (int,char*,int ) ;
 int dev_err (int ,char*,int,int ) ;
 int get_unaligned_le32 (int ) ;
 int mt7601u_vendor_request (struct mt7601u_dev*,int ,int ,int ,int ,int ,int) ;
 int trace_reg_read (struct mt7601u_dev*,int ,int ) ;

__attribute__((used)) static u32 __mt7601u_rr(struct mt7601u_dev *dev, u32 offset)
{
 int ret;
 u32 val = ~0;

 WARN_ONCE(offset > USHRT_MAX, "read high off:%08x", offset);

 ret = mt7601u_vendor_request(dev, MT_VEND_MULTI_READ, USB_DIR_IN,
         0, offset, dev->vend_buf, MT_VEND_BUF);
 if (ret == MT_VEND_BUF)
  val = get_unaligned_le32(dev->vend_buf);
 else if (ret > 0)
  dev_err(dev->dev, "Error: wrong size read:%d off:%08x\n",
   ret, offset);

 trace_reg_read(dev, offset, val);
 return val;
}
