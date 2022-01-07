
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_device {unsigned int size; unsigned int bits_per_pin; unsigned int width; scalar_t__ bits_per_mux; int dev; } ;


 unsigned int BITS_PER_BYTE ;
 int EINVAL ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int pcs_get_pin_by_offset(struct pcs_device *pcs, unsigned offset)
{
 unsigned index;

 if (offset >= pcs->size) {
  dev_err(pcs->dev, "mux offset out of range: 0x%x (0x%x)\n",
   offset, pcs->size);
  return -EINVAL;
 }

 if (pcs->bits_per_mux)
  index = (offset * BITS_PER_BYTE) / pcs->bits_per_pin;
 else
  index = offset / (pcs->width / BITS_PER_BYTE);

 return index;
}
