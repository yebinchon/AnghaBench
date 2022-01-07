
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct goldfish_audio {scalar_t__ irq; int buffer_phys; scalar_t__ read_supported; scalar_t__ buffer_virt; scalar_t__ read_buffer; scalar_t__ write_buffer2; scalar_t__ write_buffer1; int reg_base; int wait; int lock; } ;
typedef int dma_addr_t ;


 int AUDIO_READ_SUPPORTED ;
 int AUDIO_SET_READ_BUFFER ;
 int AUDIO_SET_READ_BUFFER_HIGH ;
 int AUDIO_SET_WRITE_BUFFER_1 ;
 int AUDIO_SET_WRITE_BUFFER_1_HIGH ;
 int AUDIO_SET_WRITE_BUFFER_2 ;
 int AUDIO_SET_WRITE_BUFFER_2_HIGH ;
 int COMBINED_BUFFER_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int PAGE_SIZE ;
 int WRITE_BUFFER_SIZE ;
 struct goldfish_audio* audio_data ;
 scalar_t__ audio_read (struct goldfish_audio*,int ) ;
 int audio_write64 (struct goldfish_audio*,int ,int ,int) ;
 int dev_err (int *,char*,...) ;
 int devm_ioremap (int *,int ,int ) ;
 struct goldfish_audio* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,int ,struct goldfish_audio*) ;
 scalar_t__ dmam_alloc_coherent (int *,int ,int*,int ) ;
 int goldfish_audio_device ;
 int goldfish_audio_interrupt ;
 int init_waitqueue_head (int *) ;
 int misc_register (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct goldfish_audio*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int goldfish_audio_probe(struct platform_device *pdev)
{
 int ret;
 struct resource *r;
 struct goldfish_audio *data;
 dma_addr_t buf_addr;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 spin_lock_init(&data->lock);
 init_waitqueue_head(&data->wait);
 platform_set_drvdata(pdev, data);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r) {
  dev_err(&pdev->dev, "platform_get_resource failed\n");
  return -ENODEV;
 }
 data->reg_base = devm_ioremap(&pdev->dev, r->start, PAGE_SIZE);
 if (!data->reg_base)
  return -ENOMEM;

 data->irq = platform_get_irq(pdev, 0);
 if (data->irq < 0)
  return -ENODEV;
 data->buffer_virt = dmam_alloc_coherent(&pdev->dev,
      COMBINED_BUFFER_SIZE,
      &buf_addr, GFP_KERNEL);
 if (!data->buffer_virt) {
  dev_err(&pdev->dev, "allocate buffer failed\n");
  return -ENOMEM;
 }
 data->buffer_phys = buf_addr;
 data->write_buffer1 = data->buffer_virt;
 data->write_buffer2 = data->buffer_virt + WRITE_BUFFER_SIZE;
 data->read_buffer = data->buffer_virt + 2 * WRITE_BUFFER_SIZE;

 ret = devm_request_irq(&pdev->dev, data->irq, goldfish_audio_interrupt,
          IRQF_SHARED, pdev->name, data);
 if (ret) {
  dev_err(&pdev->dev, "request_irq failed\n");
  return ret;
 }

 ret = misc_register(&goldfish_audio_device);
 if (ret) {
  dev_err(&pdev->dev,
   "misc_register returned %d in goldfish_audio_init\n",
        ret);
  return ret;
 }

 audio_write64(data, AUDIO_SET_WRITE_BUFFER_1,
        AUDIO_SET_WRITE_BUFFER_1_HIGH, buf_addr);
 buf_addr += WRITE_BUFFER_SIZE;

 audio_write64(data, AUDIO_SET_WRITE_BUFFER_2,
        AUDIO_SET_WRITE_BUFFER_2_HIGH, buf_addr);

 buf_addr += WRITE_BUFFER_SIZE;

 data->read_supported = audio_read(data, AUDIO_READ_SUPPORTED);
 if (data->read_supported)
  audio_write64(data, AUDIO_SET_READ_BUFFER,
         AUDIO_SET_READ_BUFFER_HIGH, buf_addr);

 audio_data = data;
 return 0;
}
