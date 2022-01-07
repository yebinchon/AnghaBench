
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {unsigned int max_speed_hz; } ;


 int BUSRCON0 ;
 int BUSRCON0_AGEN_SERIAL_FLASH ;
 int BUSRCON0_PORTW_8_BIT_MUX ;
 int BUSWCON0 ;
 int BUSWCON0_AGEN_SERIAL_FLASH ;
 unsigned int CLOCK_100M ;
 unsigned int CLOCK_50M ;
 int EBUCC ;
 int EBUCC_EBUDIV_SELF100 ;
 int SFCON ;
 unsigned int SFCON_DEV_SIZE_A23_0 ;
 int SFCON_DEV_SIZE_MASK ;
 int SFIO ;
 int SFIO_UNUSED_WD_MASK ;
 int SFTIME ;
 int SFTIME_SCKF_POS_MASK ;
 int SFTIME_SCKR_POS_MASK ;
 unsigned int SFTIME_SCKR_POS_OFFSET ;
 int SFTIME_SCK_PER_MASK ;
 int SFTIME_SCK_PER_OFFSET ;
 int ebu_lock ;
 int ltq_ebu_w32 (int,int ) ;
 int ltq_ebu_w32_mask (int,unsigned int,int ) ;
 int ltq_sys1_w32_mask (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int falcon_sflash_setup(struct spi_device *spi)
{
 unsigned int i;
 unsigned long flags;

 spin_lock_irqsave(&ebu_lock, flags);

 if (spi->max_speed_hz >= CLOCK_100M) {

  ltq_sys1_w32_mask(0, EBUCC_EBUDIV_SELF100, EBUCC);
  i = 1;
 } else {

  ltq_sys1_w32_mask(EBUCC_EBUDIV_SELF100, 0, EBUCC);


  for (i = 1; i < 7; i++) {
   if (CLOCK_50M / i <= spi->max_speed_hz)
    break;
  }
 }


 ltq_ebu_w32_mask(SFTIME_SCKF_POS_MASK
       | SFTIME_SCKR_POS_MASK
       | SFTIME_SCK_PER_MASK,
       (i << SFTIME_SCKR_POS_OFFSET)
       | (i << (SFTIME_SCK_PER_OFFSET + 1)),
       SFTIME);





 ltq_ebu_w32((SFIO_UNUSED_WD_MASK & (0x8 | 0x4)), SFIO);

 ltq_ebu_w32(BUSRCON0_AGEN_SERIAL_FLASH | BUSRCON0_PORTW_8_BIT_MUX,
   BUSRCON0);
 ltq_ebu_w32(BUSWCON0_AGEN_SERIAL_FLASH, BUSWCON0);

 ltq_ebu_w32_mask(SFCON_DEV_SIZE_MASK, SFCON_DEV_SIZE_A23_0, SFCON);

 spin_unlock_irqrestore(&ebu_lock, flags);

 return 0;
}
