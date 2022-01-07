
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct target_cmd {int dummy; } ;
struct hardware_scb {int hscb_busaddr; } ;
struct TYPE_2__ {scalar_t__ physaddr; scalar_t__ vaddr; int dmamap; } ;
struct ahd_softc {int flags; int unit; int features; int bugs; int* overrun_buf; int stat_timer; int init_level; struct hardware_scb* next_queued_hscb; TYPE_1__ shared_data_map; TYPE_1__* next_queued_hscb_map; struct target_cmd* targetcmds; struct ahd_completion* qoutfifo; int shared_data_dmat; int parent_dmat; int * saved_stack; int stack_size; } ;
struct ahd_completion {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_CURRENT_SENSING ;
 int AHD_DEBUG_SEQUENCER ;
 int AHD_INITIATORROLE ;
 int AHD_MODE_SCSI_MSK ;
 int AHD_PKT_BITBUCKET_BUG ;
 size_t AHD_QOUT_SIZE ;
 int AHD_RESET_BUS_A ;
 int AHD_SCB_MAX ;
 int AHD_SEQUENCER_DEBUG ;
 int AHD_SHOW_TERMCTL ;
 int AHD_STAT_UPDATE_US ;
 int AHD_TARGETMODE ;
 int AHD_TMODE_CMDS ;
 int AHD_TMODE_ENABLE ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int CURSENSE_ENB ;
 int ENOMEM ;
 int FLXADDR_CURRENT_STAT ;
 int FLXADDR_FLEXSTAT ;
 int FLXADDR_ROMSTAT_CURSENSECTL ;

 int FLX_CSTAT_MASK ;


 int FLX_CSTAT_SHIFT ;

 int FLX_FSTAT_BUSY ;
 int GFP_ATOMIC ;
 scalar_t__ PKT_OVERRUN_BUFSIZE ;
 int ahd_chip_init (struct ahd_softc*) ;
 int ahd_debug ;
 scalar_t__ ahd_dma_tag_create (struct ahd_softc*,int ,int,scalar_t__,scalar_t__,int ,int *,int *,size_t,int,int ,int ,int *) ;
 int ahd_dmamap_cb ;
 int ahd_dmamap_load (struct ahd_softc*,int ,int ,scalar_t__,size_t,int ,scalar_t__*,int ) ;
 scalar_t__ ahd_dmamem_alloc (struct ahd_softc*,int ,void**,int ,int *) ;
 int ahd_htole32 (scalar_t__) ;
 scalar_t__ ahd_init_scbdata (struct ahd_softc*) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_platform_init (struct ahd_softc*) ;
 int ahd_probe_stack_size (struct ahd_softc*) ;
 int ahd_read_flexport (struct ahd_softc*,int ,int*) ;
 int ahd_restart (struct ahd_softc*) ;
 int ahd_timer_reset (int *,int ) ;
 int ahd_write_flexport (struct ahd_softc*,int ,int ) ;
 int bootverbose ;
 int * channel_strings ;
 int * kmalloc_array (int ,int,int ) ;
 int panic (char*) ;
 int printk (char*,int,...) ;
 int * termstat_strings ;

int
ahd_init(struct ahd_softc *ahd)
{
 uint8_t *next_vaddr;
 dma_addr_t next_baddr;
 size_t driver_data_size;
 int i;
 int error;
 u_int warn_user;
 uint8_t current_sensing;
 uint8_t fstat;

 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);

 ahd->stack_size = ahd_probe_stack_size(ahd);
 ahd->saved_stack = kmalloc_array(ahd->stack_size, sizeof(uint16_t),
      GFP_ATOMIC);
 if (ahd->saved_stack == ((void*)0))
  return (ENOMEM);





 if (sizeof(struct hardware_scb) != 64)
  panic("Hardware SCB size is incorrect");
 ahd->flags |= AHD_INITIATORROLE;




 if ((AHD_TMODE_ENABLE & (0x1 << ahd->unit)) == 0)
  ahd->features &= ~AHD_TARGETMODE;

 ahd->init_level++;
 driver_data_size = AHD_SCB_MAX * sizeof(*ahd->qoutfifo)
    + sizeof(struct hardware_scb);
 if ((ahd->features & AHD_TARGETMODE) != 0)
  driver_data_size += AHD_TMODE_CMDS * sizeof(struct target_cmd);
 if ((ahd->bugs & AHD_PKT_BITBUCKET_BUG) != 0)
  driver_data_size += PKT_OVERRUN_BUFSIZE;
 if (ahd_dma_tag_create(ahd, ahd->parent_dmat, 1,
                      BUS_SPACE_MAXADDR_32BIT + 1,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
          driver_data_size,
                       1,
                      BUS_SPACE_MAXSIZE_32BIT,
                   0, &ahd->shared_data_dmat) != 0) {
  return (ENOMEM);
 }

 ahd->init_level++;


 if (ahd_dmamem_alloc(ahd, ahd->shared_data_dmat,
        (void **)&ahd->shared_data_map.vaddr,
        BUS_DMA_NOWAIT,
        &ahd->shared_data_map.dmamap) != 0) {
  return (ENOMEM);
 }

 ahd->init_level++;


 ahd_dmamap_load(ahd, ahd->shared_data_dmat, ahd->shared_data_map.dmamap,
   ahd->shared_data_map.vaddr, driver_data_size,
   ahd_dmamap_cb, &ahd->shared_data_map.physaddr,
            0);
 ahd->qoutfifo = (struct ahd_completion *)ahd->shared_data_map.vaddr;
 next_vaddr = (uint8_t *)&ahd->qoutfifo[AHD_QOUT_SIZE];
 next_baddr = ahd->shared_data_map.physaddr
     + AHD_QOUT_SIZE*sizeof(struct ahd_completion);
 if ((ahd->features & AHD_TARGETMODE) != 0) {
  ahd->targetcmds = (struct target_cmd *)next_vaddr;
  next_vaddr += AHD_TMODE_CMDS * sizeof(struct target_cmd);
  next_baddr += AHD_TMODE_CMDS * sizeof(struct target_cmd);
 }

 if ((ahd->bugs & AHD_PKT_BITBUCKET_BUG) != 0) {
  ahd->overrun_buf = next_vaddr;
  next_vaddr += PKT_OVERRUN_BUFSIZE;
  next_baddr += PKT_OVERRUN_BUFSIZE;
 }
 ahd->next_queued_hscb = (struct hardware_scb *)next_vaddr;
 ahd->next_queued_hscb_map = &ahd->shared_data_map;
 ahd->next_queued_hscb->hscb_busaddr = ahd_htole32(next_baddr);

 ahd->init_level++;


 if (ahd_init_scbdata(ahd) != 0)
  return (ENOMEM);

 if ((ahd->flags & AHD_INITIATORROLE) == 0)
  ahd->flags &= ~AHD_RESET_BUS_A;





 ahd_platform_init(ahd);


 ahd_chip_init(ahd);

 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);

 if ((ahd->flags & AHD_CURRENT_SENSING) == 0)
  goto init_done;





 error = ahd_write_flexport(ahd, FLXADDR_ROMSTAT_CURSENSECTL,
       CURSENSE_ENB);
 if (error != 0) {
  printk("%s: current sensing timeout 1\n", ahd_name(ahd));
  goto init_done;
 }
 for (i = 20, fstat = FLX_FSTAT_BUSY;
      (fstat & FLX_FSTAT_BUSY) != 0 && i; i--) {
  error = ahd_read_flexport(ahd, FLXADDR_FLEXSTAT, &fstat);
  if (error != 0) {
   printk("%s: current sensing timeout 2\n",
          ahd_name(ahd));
   goto init_done;
  }
 }
 if (i == 0) {
  printk("%s: Timedout during current-sensing test\n",
         ahd_name(ahd));
  goto init_done;
 }


 error = ahd_read_flexport(ahd, FLXADDR_CURRENT_STAT, &current_sensing);
 if (error != 0) {
  printk("%s: current sensing timeout 3\n", ahd_name(ahd));
  goto init_done;
 }


 ahd_write_flexport(ahd, FLXADDR_ROMSTAT_CURSENSECTL, 0);







 warn_user = 0;
 for (i = 0; i < 4; i++, current_sensing >>= FLX_CSTAT_SHIFT) {
  u_int term_stat;

  term_stat = (current_sensing & FLX_CSTAT_MASK);
  switch (term_stat) {
  case 129:
  case 128:
   warn_user++;

  case 131:
  case 130:
   if (warn_user == 0 && bootverbose == 0)
    break;
   printk("%s: %s Channel %s\n", ahd_name(ahd),
          channel_strings[i], termstat_strings[term_stat]);
   break;
  }
 }
 if (warn_user) {
  printk("%s: WARNING. Termination is not configured correctly.\n"
         "%s: WARNING. SCSI bus operations may FAIL.\n",
         ahd_name(ahd), ahd_name(ahd));
 }
init_done:
 ahd_restart(ahd);
 ahd_timer_reset(&ahd->stat_timer, AHD_STAT_UPDATE_US);
 return (0);
}
