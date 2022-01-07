
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int paddr; int vaddr; } ;
struct allegro_dev {int regmap; int v4l2_dev; TYPE_1__ firmware; } ;
typedef int dma_addr_t ;


 int AL5_DCACHE_ADDR_OFFSET_LSB ;
 int AL5_DCACHE_ADDR_OFFSET_MSB ;
 int AL5_ICACHE_ADDR_OFFSET_LSB ;
 int AL5_ICACHE_ADDR_OFFSET_MSB ;
 int AXI_ADDR_OFFSET_IP ;
 int MCU_CACHE_OFFSET ;
 int allegro_alloc_buffer (struct allegro_dev*,TYPE_1__*,size_t) ;
 int debug ;
 int lower_32_bits (int) ;
 int memcpy (int ,int const* const,size_t) ;
 int regmap_write (int ,int ,int ) ;
 int upper_32_bits (int) ;
 int v4l2_dbg (int,int ,int *,char*,size_t,int*) ;
 int v4l2_err (int *,char*,size_t) ;

__attribute__((used)) static void allegro_copy_fw_codec(struct allegro_dev *dev,
      const u8 * const buf, size_t size)
{
 int err;
 dma_addr_t icache_offset, dcache_offset;







 err = allegro_alloc_buffer(dev, &dev->firmware, size);
 if (err) {
  v4l2_err(&dev->v4l2_dev,
    "failed to allocate %zu bytes for firmware\n", size);
  return;
 }

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "copy codec firmware (%zd B) to phys %pad\n",
   size, &dev->firmware.paddr);
 memcpy(dev->firmware.vaddr, buf, size);

 regmap_write(dev->regmap, AXI_ADDR_OFFSET_IP,
       upper_32_bits(dev->firmware.paddr));

 icache_offset = dev->firmware.paddr - MCU_CACHE_OFFSET;
 v4l2_dbg(2, debug, &dev->v4l2_dev,
   "icache_offset: msb = 0x%x, lsb = 0x%x\n",
   upper_32_bits(icache_offset), lower_32_bits(icache_offset));
 regmap_write(dev->regmap, AL5_ICACHE_ADDR_OFFSET_MSB,
       upper_32_bits(icache_offset));
 regmap_write(dev->regmap, AL5_ICACHE_ADDR_OFFSET_LSB,
       lower_32_bits(icache_offset));

 dcache_offset =
     (dev->firmware.paddr & 0xffffffff00000000ULL) - MCU_CACHE_OFFSET;
 v4l2_dbg(2, debug, &dev->v4l2_dev,
   "dcache_offset: msb = 0x%x, lsb = 0x%x\n",
   upper_32_bits(dcache_offset), lower_32_bits(dcache_offset));
 regmap_write(dev->regmap, AL5_DCACHE_ADDR_OFFSET_MSB,
       upper_32_bits(dcache_offset));
 regmap_write(dev->regmap, AL5_DCACHE_ADDR_OFFSET_LSB,
       lower_32_bits(dcache_offset));
}
