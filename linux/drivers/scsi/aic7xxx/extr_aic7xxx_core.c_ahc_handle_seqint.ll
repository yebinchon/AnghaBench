; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_handle_seqint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_handle_seqint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.ahc_softc = type { i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.scb = type { i32, i32, i32, %struct.hardware_scb*, %struct.ahc_dma_seg* }
%struct.hardware_scb = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ahc_dma_seg = type { i32, i32 }
%struct.ahc_devinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.scsi_sense = type { i32, i32, i32, i32*, i32 }
%struct.ahc_initiator_tinfo = type { %struct.ahc_transinfo }
%struct.ahc_transinfo = type { i32 }
%struct.ahc_tmode_tstate = type { i32 }

@CLRINT = common dso_local global i32 0, align 4
@CLRSEQINT = common dso_local global i32 0, align 4
@SEQINT_MASK = common dso_local global i32 0, align 4
@RETURN_1 = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"ahc_intr - referenced scb not valid during seqint 0x%x scb(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"for safety\00", align 1
@SCB_SENSE = common dso_local global i32 0, align 4
@CAM_AUTOSENSE_FAIL = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: Interrupted for status of 0???\0A\00", align 1
@AHC_DMA_LAST_SEG = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SCSI_REV_2 = common dso_local global i32 0, align 4
@AHC_NEG_IF_NON_ASYNC = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@SCB_NEGOTIATE = common dso_local global i32 0, align 4
@SCB_AUTO_NEGOTIATE = common dso_local global i32 0, align 4
@SG_FULL_RESID = common dso_local global i32 0, align 4
@SEND_SENSE = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@ENSELI = common dso_local global i32 0, align 4
@ENRSELI = common dso_local global i32 0, align 4
@ENAUTOATNP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"%s:%c:%d: no active SCB for reconnecting target - issuing BUS DEVICE RESET\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"SAVED_SCSIID == 0x%x, SAVED_LUN == 0x%x, ARG_1 == 0x%x ACCUM = 0x%x\0A\00", align 1
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@ARG_1 = common dso_local global i32 0, align 4
@ACCUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, SINDEX == 0x%x\0A\00", align 1
@SEQ_FLAGS = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i32 0, align 4
@SINDEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [91 x i8] c"SCSIID == 0x%x, SCB_SCSIID == 0x%x, SCB_LUN == 0x%x, SCB_TAG == 0x%x, SCB_CONTROL == 0x%x\0A\00", align 1
@SCSIID = common dso_local global i32 0, align 4
@SCB_SCSIID = common dso_local global i32 0, align 4
@SCB_LUN = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"SCSIBUSL == 0x%x, SCSISIGI == 0x%x\0A\00", align 1
@SCSIBUSL = common dso_local global i32 0, align 4
@SCSISIGI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"SXFRCTL0 == 0x%x\0A\00", align 1
@SXFRCTL0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"SEQCTL == 0x%x\0A\00", align 1
@SEQCTL = common dso_local global i32 0, align 4
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@MSG_TYPE_INITIATOR_MSGOUT = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [77 x i8] c"%s:%c:%d: Warning - unknown message received from target (0x%x).  Rejecting\0A\00", align 1
@LASTPHASE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [80 x i8] c"%s:%c:%d: unknown scsi bus phase %x, lastphase = 0x%x.  Attempting to continue\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"%s:%c:%d: Missed busfree. Lastphase = 0x%x, Curphase = 0x%x\0A\00", align 1
@MSG_TYPE_NONE = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i32 0, align 4
@P_MESGIN = common dso_local global i32 0, align 4
@P_MESGOUT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"ahc_intr: HOST_MSG_LOOP bad phase 0x%x\0A\00", align 1
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"HOST_MSG_LOOP with invalid SCB %x\0A\00", align 1
@MSG_TYPE_INITIATOR_MSGIN = common dso_local global i32 0, align 4
@SCSIINT = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@SCSIPERR = common dso_local global i32 0, align 4
@AHC_DT = common dso_local global i32 0, align 4
@SCSISIGO = common dso_local global i32 0, align 4
@CDI = common dso_local global i32 0, align 4
@MSGI = common dso_local global i32 0, align 4
@SXFRCTL1 = common dso_local global i32 0, align 4
@BITBUCKET = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [47 x i8] c"Unable to clear parity error.  Resetting bus.\0A\00", align 1
@CAM_UNCOR_PARITY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCSIDATL = common dso_local global i32 0, align 4
@num_phases = common dso_local global i32 0, align 4
@ahc_phase_table = common dso_local global %struct.TYPE_10__* null, align 8
@.str.16 = private unnamed_addr constant [41 x i8] c"data overrun detected %s.  Tag == 0x%x.\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"%s seen Data Phase.  Length = %ld.  NumSGs = %d.\0A\00", align 1
@DPHASE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"Have\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Haven't\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"sg[%d] - Addr 0x%x%x : Length %d\0A\00", align 1
@SG_HIGH_ADDR_BITS = common dso_local global i32 0, align 4
@AHC_SG_LEN_MASK = common dso_local global i32 0, align 4
@CAM_DATA_RUN_ERR = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@CLRSTCNT = common dso_local global i32 0, align 4
@CLRCHN = common dso_local global i32 0, align 4
@AHC_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@DSCOMMAND1 = common dso_local global i32 0, align 4
@HADDLDSEL0 = common dso_local global i32 0, align 4
@HADDR = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [46 x i8] c"%s:%c:%d:%d: Attempt to issue message failed\0A\00", align 1
@SCB_RECOVERY_SCB = common dso_local global i32 0, align 4
@SEARCH_REMOVE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [34 x i8] c"%s: No free or disconnected SCBs\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"Bogus TAG after DMA.  SCBPTR %d, tag %d, our tag %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"%s: BTT calculation out of range\0A\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c"SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, SINDEX == 0x%x\0A, A == 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"ahc_intr: seqint, intstat == 0x%x, scsisigi = 0x%x\0A\00", align 1
@AHC_SHOW_SENSE = common dso_local global i32 0, align 4
@MSG_TYPE_TARGET_MSGOUT = common dso_local global i32 0, align 4
@ahc_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, i32)* @ahc_handle_seqint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_handle_seqint(%struct.ahc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scb*, align 8
  %6 = alloca %struct.ahc_devinfo, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hardware_scb*, align 8
  %9 = alloca %struct.ahc_dma_seg*, align 8
  %10 = alloca %struct.scsi_sense*, align 8
  %11 = alloca %struct.ahc_initiator_tinfo*, align 8
  %12 = alloca %struct.ahc_tmode_tstate*, align 8
  %13 = alloca %struct.ahc_transinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scb*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.scb*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %31 = call i32 @ahc_fetch_devinfo(%struct.ahc_softc* %30, %struct.ahc_devinfo* %6)
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %33 = load i32, i32* @CLRINT, align 4
  %34 = load i32, i32* @CLRSEQINT, align 4
  %35 = call i32 @ahc_outb(%struct.ahc_softc* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SEQINT_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %933 [
    i32 144, label %39
    i32 137, label %279
    i32 128, label %382
    i32 133, label %394
    i32 141, label %397
    i32 135, label %400
    i32 145, label %403
    i32 140, label %418
    i32 142, label %435
    i32 134, label %497
    i32 143, label %605
    i32 139, label %795
    i32 138, label %839
    i32 132, label %846
    i32 136, label %868
  ]

39:                                               ; preds = %2
  %40 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %41 = load i32, i32* @RETURN_1, align 4
  %42 = call i32 @ahc_outb(%struct.ahc_softc* %40, i32 %41, i32 0)
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %44 = load i32, i32* @SCB_TAG, align 4
  %45 = call i32 @ahc_inb(%struct.ahc_softc* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %46, i32 %47)
  store %struct.scb* %48, %struct.scb** %5, align 8
  %49 = load %struct.scb*, %struct.scb** %5, align 8
  %50 = icmp eq %struct.scb* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %39
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %53 = call i32 @ahc_print_devinfo(%struct.ahc_softc* %52, %struct.ahc_devinfo* %6)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %58 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %57)
  %59 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %940

60:                                               ; preds = %39
  %61 = load %struct.scb*, %struct.scb** %5, align 8
  %62 = getelementptr inbounds %struct.scb, %struct.scb* %61, i32 0, i32 3
  %63 = load %struct.hardware_scb*, %struct.hardware_scb** %62, align 8
  store %struct.hardware_scb* %63, %struct.hardware_scb** %8, align 8
  %64 = load %struct.scb*, %struct.scb** %5, align 8
  %65 = getelementptr inbounds %struct.scb, %struct.scb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SCB_SENSE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load i32, i32* @SCB_SENSE, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.scb*, %struct.scb** %5, align 8
  %74 = getelementptr inbounds %struct.scb, %struct.scb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.scb*, %struct.scb** %5, align 8
  %78 = load i32, i32* @CAM_AUTOSENSE_FAIL, align 4
  %79 = call i32 @ahc_set_transaction_status(%struct.scb* %77, i32 %78)
  br label %939

80:                                               ; preds = %60
  %81 = load %struct.scb*, %struct.scb** %5, align 8
  %82 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %83 = call i32 @ahc_set_transaction_status(%struct.scb* %81, i32 %82)
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %85 = load %struct.scb*, %struct.scb** %5, align 8
  %86 = call i32 @ahc_freeze_devq(%struct.ahc_softc* %84, %struct.scb* %85)
  %87 = load %struct.scb*, %struct.scb** %5, align 8
  %88 = call i32 @ahc_freeze_scb(%struct.scb* %87)
  %89 = load %struct.scb*, %struct.scb** %5, align 8
  %90 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %91 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ahc_set_scsi_status(%struct.scb* %89, i32 %94)
  %96 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %97 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %277 [
    i32 129, label %101
    i32 130, label %105
    i32 131, label %105
  ]

101:                                              ; preds = %80
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %103 = call i32 @ahc_name(%struct.ahc_softc* %102)
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %278

105:                                              ; preds = %80, %80
  %106 = load %struct.scb*, %struct.scb** %5, align 8
  %107 = call i32 @ahc_perform_autosense(%struct.scb* %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %278

110:                                              ; preds = %105
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %111, i32 %113, i32 %115, i32 %117, %struct.ahc_tmode_tstate** %12)
  store %struct.ahc_initiator_tinfo* %118, %struct.ahc_initiator_tinfo** %11, align 8
  %119 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %120 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %119, i32 0, i32 0
  store %struct.ahc_transinfo* %120, %struct.ahc_transinfo** %13, align 8
  %121 = load %struct.scb*, %struct.scb** %5, align 8
  %122 = getelementptr inbounds %struct.scb, %struct.scb* %121, i32 0, i32 4
  %123 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %122, align 8
  store %struct.ahc_dma_seg* %123, %struct.ahc_dma_seg** %9, align 8
  %124 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %125 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = bitcast i32* %126 to %struct.scsi_sense*
  store %struct.scsi_sense* %127, %struct.scsi_sense** %10, align 8
  %128 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %129 = load %struct.scb*, %struct.scb** %5, align 8
  %130 = call i32 @ahc_update_residual(%struct.ahc_softc* %128, %struct.scb* %129)
  %131 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %132 = load %struct.scb*, %struct.scb** %5, align 8
  %133 = call i32 @ahc_get_sense_bufaddr(%struct.ahc_softc* %131, %struct.scb* %132)
  %134 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %135 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %137 = load %struct.scb*, %struct.scb** %5, align 8
  %138 = call i32 @ahc_get_sense_bufsize(%struct.ahc_softc* %136, %struct.scb* %137)
  %139 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %140 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @AHC_DMA_LAST_SEG, align 4
  %142 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %143 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %147 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @ahc_htole32(i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %152 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %154 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @ahc_htole32(i32 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %159 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @REQUEST_SENSE, align 4
  %161 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %162 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %164 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %13, align 8
  %166 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SCSI_REV_2, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %110
  %171 = load %struct.scb*, %struct.scb** %5, align 8
  %172 = call i32 @SCB_GET_LUN(%struct.scb* %171)
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load %struct.scb*, %struct.scb** %5, align 8
  %176 = call i32 @SCB_GET_LUN(%struct.scb* %175)
  %177 = shl i32 %176, 5
  %178 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %179 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %174, %170, %110
  %181 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %182 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 0, i32* %184, align 4
  %185 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %186 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 0, i32* %188, align 4
  %189 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %190 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %193 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %195 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %194, i32 0, i32 2
  store i32 0, i32* %195, align 8
  %196 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %197 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %196, i32 0, i32 5
  store i32 0, i32* %197, align 4
  %198 = load %struct.scb*, %struct.scb** %5, align 8
  %199 = call i32 @ahc_get_residual(%struct.scb* %198)
  %200 = load %struct.scb*, %struct.scb** %5, align 8
  %201 = call i32 @ahc_get_transfer_length(%struct.scb* %200)
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %180
  %204 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %205 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %12, align 8
  %206 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %207 = load i32, i32* @AHC_NEG_IF_NON_ASYNC, align 4
  %208 = call i32 @ahc_update_neg_request(%struct.ahc_softc* %204, %struct.ahc_devinfo* %6, %struct.ahc_tmode_tstate* %205, %struct.ahc_initiator_tinfo* %206, i32 %207)
  br label %209

209:                                              ; preds = %203, %180
  %210 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %12, align 8
  %211 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %212, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %209
  %218 = load i32, i32* @MK_MESSAGE, align 4
  %219 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %220 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* @SCB_NEGOTIATE, align 4
  %224 = xor i32 %223, -1
  %225 = load %struct.scb*, %struct.scb** %5, align 8
  %226 = getelementptr inbounds %struct.scb, %struct.scb* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* @SCB_AUTO_NEGOTIATE, align 4
  %230 = load %struct.scb*, %struct.scb** %5, align 8
  %231 = getelementptr inbounds %struct.scb, %struct.scb* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %217, %209
  %235 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %236 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %235, i32 0, i32 1
  store i32 32, i32* %236, align 4
  %237 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %238 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %241 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  %242 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %9, align 8
  %243 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %246 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load %struct.scb*, %struct.scb** %5, align 8
  %248 = getelementptr inbounds %struct.scb, %struct.scb* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @SG_FULL_RESID, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %253 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 4
  %254 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %255 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @ahc_htole32(i32 %256)
  %258 = ptrtoint i8* %257 to i32
  %259 = load %struct.hardware_scb*, %struct.hardware_scb** %8, align 8
  %260 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 4
  %261 = load %struct.scb*, %struct.scb** %5, align 8
  %262 = getelementptr inbounds %struct.scb, %struct.scb* %261, i32 0, i32 2
  store i32 1, i32* %262, align 8
  %263 = load i32, i32* @SCB_SENSE, align 4
  %264 = load %struct.scb*, %struct.scb** %5, align 8
  %265 = getelementptr inbounds %struct.scb, %struct.scb* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %269 = load %struct.scb*, %struct.scb** %5, align 8
  %270 = call i32 @ahc_qinfifo_requeue_tail(%struct.ahc_softc* %268, %struct.scb* %269)
  %271 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %272 = load i32, i32* @RETURN_1, align 4
  %273 = load i32, i32* @SEND_SENSE, align 4
  %274 = call i32 @ahc_outb(%struct.ahc_softc* %271, i32 %272, i32 %273)
  %275 = load %struct.scb*, %struct.scb** %5, align 8
  %276 = call i32 @ahc_scb_timer_reset(%struct.scb* %275, i32 5000000)
  br label %278

277:                                              ; preds = %80
  br label %278

278:                                              ; preds = %277, %234, %109, %101
  br label %939

279:                                              ; preds = %2
  %280 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %281 = load i32, i32* @SCSISEQ, align 4
  %282 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %283 = load i32, i32* @SCSISEQ, align 4
  %284 = call i32 @ahc_inb(%struct.ahc_softc* %282, i32 %283)
  %285 = load i32, i32* @ENSELI, align 4
  %286 = load i32, i32* @ENRSELI, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @ENAUTOATNP, align 4
  %289 = or i32 %287, %288
  %290 = and i32 %284, %289
  %291 = call i32 @ahc_outb(%struct.ahc_softc* %280, i32 %281, i32 %290)
  %292 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %293 = call i32 @ahc_name(%struct.ahc_softc* %292)
  %294 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %293, i32 %295, i32 %297)
  %299 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %300 = load i32, i32* @SAVED_SCSIID, align 4
  %301 = call i32 @ahc_inb(%struct.ahc_softc* %299, i32 %300)
  %302 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %303 = load i32, i32* @SAVED_LUN, align 4
  %304 = call i32 @ahc_inb(%struct.ahc_softc* %302, i32 %303)
  %305 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %306 = load i32, i32* @ARG_1, align 4
  %307 = call i32 @ahc_inb(%struct.ahc_softc* %305, i32 %306)
  %308 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %309 = load i32, i32* @ACCUM, align 4
  %310 = call i32 @ahc_inb(%struct.ahc_softc* %308, i32 %309)
  %311 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %301, i32 %304, i32 %307, i32 %310)
  %312 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %313 = load i32, i32* @SEQ_FLAGS, align 4
  %314 = call i32 @ahc_inb(%struct.ahc_softc* %312, i32 %313)
  %315 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %316 = load i32, i32* @SCBPTR, align 4
  %317 = call i32 @ahc_inb(%struct.ahc_softc* %315, i32 %316)
  %318 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %319 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %320 = load i32, i32* @SAVED_SCSIID, align 4
  %321 = call i32 @ahc_inb(%struct.ahc_softc* %319, i32 %320)
  %322 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %323 = load i32, i32* @SAVED_LUN, align 4
  %324 = call i32 @ahc_inb(%struct.ahc_softc* %322, i32 %323)
  %325 = call i32 @BUILD_TCL(i32 %321, i32 %324)
  %326 = call i32 @ahc_index_busy_tcl(%struct.ahc_softc* %318, i32 %325)
  %327 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %328 = load i32, i32* @SINDEX, align 4
  %329 = call i32 @ahc_inb(%struct.ahc_softc* %327, i32 %328)
  %330 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %314, i32 %317, i32 %326, i32 %329)
  %331 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %332 = load i32, i32* @SCSIID, align 4
  %333 = call i32 @ahc_inb(%struct.ahc_softc* %331, i32 %332)
  %334 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %335 = load i32, i32* @SCB_SCSIID, align 4
  %336 = call i32 @ahc_inb(%struct.ahc_softc* %334, i32 %335)
  %337 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %338 = load i32, i32* @SCB_LUN, align 4
  %339 = call i32 @ahc_inb(%struct.ahc_softc* %337, i32 %338)
  %340 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %341 = load i32, i32* @SCB_TAG, align 4
  %342 = call i32 @ahc_inb(%struct.ahc_softc* %340, i32 %341)
  %343 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %344 = load i32, i32* @SCB_CONTROL, align 4
  %345 = call i32 @ahc_inb(%struct.ahc_softc* %343, i32 %344)
  %346 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0), i32 %333, i32 %336, i32 %339, i32 %342, i32 %345)
  %347 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %348 = load i32, i32* @SCSIBUSL, align 4
  %349 = call i32 @ahc_inb(%struct.ahc_softc* %347, i32 %348)
  %350 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %351 = load i32, i32* @SCSISIGI, align 4
  %352 = call i32 @ahc_inb(%struct.ahc_softc* %350, i32 %351)
  %353 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %349, i32 %352)
  %354 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %355 = load i32, i32* @SXFRCTL0, align 4
  %356 = call i32 @ahc_inb(%struct.ahc_softc* %354, i32 %355)
  %357 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %356)
  %358 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %359 = load i32, i32* @SEQCTL, align 4
  %360 = call i32 @ahc_inb(%struct.ahc_softc* %358, i32 %359)
  %361 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %360)
  %362 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %363 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %362)
  %364 = load i32, i32* @MSG_BUS_DEV_RESET, align 4
  %365 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %366 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %365, i32 0, i32 7
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  store i32 %364, i32* %368, align 4
  %369 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %370 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %369, i32 0, i32 0
  store i32 1, i32* %370, align 8
  %371 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %372 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %371, i32 0, i32 6
  store i32 0, i32* %372, align 8
  %373 = load i32, i32* @MSG_TYPE_INITIATOR_MSGOUT, align 4
  %374 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %375 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %374, i32 0, i32 5
  store i32 %373, i32* %375, align 4
  %376 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %377 = load i32, i32* @MSG_OUT, align 4
  %378 = load i32, i32* @HOST_MSG, align 4
  %379 = call i32 @ahc_outb(%struct.ahc_softc* %376, i32 %377, i32 %378)
  %380 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %381 = call i32 @ahc_assert_atn(%struct.ahc_softc* %380)
  br label %939

382:                                              ; preds = %2
  %383 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %384 = load i32, i32* @ACCUM, align 4
  %385 = call i32 @ahc_inb(%struct.ahc_softc* %383, i32 %384)
  store i32 %385, i32* %14, align 4
  %386 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %387 = call i32 @ahc_name(%struct.ahc_softc* %386)
  %388 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %14, align 4
  %393 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0), i32 %387, i32 %389, i32 %391, i32 %392)
  br label %939

394:                                              ; preds = %2
  %395 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %396 = call i32 @ahc_handle_proto_violation(%struct.ahc_softc* %395)
  br label %939

397:                                              ; preds = %2
  %398 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %399 = call i32 @ahc_handle_ign_wide_residue(%struct.ahc_softc* %398, %struct.ahc_devinfo* %6)
  br label %939

400:                                              ; preds = %2
  %401 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %402 = call i32 @ahc_reinitialize_dataptrs(%struct.ahc_softc* %401)
  br label %939

403:                                              ; preds = %2
  %404 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %405 = load i32, i32* @LASTPHASE, align 4
  %406 = call i32 @ahc_inb(%struct.ahc_softc* %404, i32 %405)
  store i32 %406, i32* %15, align 4
  %407 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %408 = call i32 @ahc_name(%struct.ahc_softc* %407)
  %409 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %15, align 4
  %414 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %415 = load i32, i32* @SCSISIGI, align 4
  %416 = call i32 @ahc_inb(%struct.ahc_softc* %414, i32 %415)
  %417 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i64 0, i64 0), i32 %408, i32 %410, i32 %412, i32 %413, i32 %416)
  br label %939

418:                                              ; preds = %2
  %419 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %420 = load i32, i32* @LASTPHASE, align 4
  %421 = call i32 @ahc_inb(%struct.ahc_softc* %419, i32 %420)
  store i32 %421, i32* %16, align 4
  %422 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %423 = call i32 @ahc_name(%struct.ahc_softc* %422)
  %424 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %16, align 4
  %429 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %430 = load i32, i32* @SCSISIGI, align 4
  %431 = call i32 @ahc_inb(%struct.ahc_softc* %429, i32 %430)
  %432 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i32 %423, i32 %425, i32 %427, i32 %428, i32 %431)
  %433 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %434 = call i32 @ahc_restart(%struct.ahc_softc* %433)
  br label %943

435:                                              ; preds = %2
  %436 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %437 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %436, i32 0, i32 5
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @MSG_TYPE_NONE, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %494

441:                                              ; preds = %435
  %442 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %443 = load i32, i32* @SCSISIGI, align 4
  %444 = call i32 @ahc_inb(%struct.ahc_softc* %442, i32 %443)
  %445 = load i32, i32* @PHASE_MASK, align 4
  %446 = and i32 %444, %445
  store i32 %446, i32* %19, align 4
  %447 = load i32, i32* %19, align 4
  %448 = load i32, i32* @P_MESGIN, align 4
  %449 = icmp ne i32 %447, %448
  br i1 %449, label %450, label %461

450:                                              ; preds = %441
  %451 = load i32, i32* %19, align 4
  %452 = load i32, i32* @P_MESGOUT, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %461

454:                                              ; preds = %450
  %455 = load i32, i32* %19, align 4
  %456 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %455)
  %457 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %458 = call i32 @ahc_clear_intstat(%struct.ahc_softc* %457)
  %459 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %460 = call i32 @ahc_restart(%struct.ahc_softc* %459)
  br label %943

461:                                              ; preds = %450, %441
  %462 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %463 = load i32, i32* @SCB_TAG, align 4
  %464 = call i32 @ahc_inb(%struct.ahc_softc* %462, i32 %463)
  store i32 %464, i32* %18, align 4
  %465 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %466 = load i32, i32* %18, align 4
  %467 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %465, i32 %466)
  store %struct.scb* %467, %struct.scb** %17, align 8
  %468 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 4
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* @ROLE_INITIATOR, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %493

472:                                              ; preds = %461
  %473 = load i32, i32* %19, align 4
  %474 = load i32, i32* @P_MESGOUT, align 4
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %486

476:                                              ; preds = %472
  %477 = load %struct.scb*, %struct.scb** %17, align 8
  %478 = icmp eq %struct.scb* %477, null
  br i1 %478, label %479, label %482

479:                                              ; preds = %476
  %480 = load i32, i32* %18, align 4
  %481 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %480)
  br label %482

482:                                              ; preds = %479, %476
  %483 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %484 = load %struct.scb*, %struct.scb** %17, align 8
  %485 = call i32 @ahc_setup_initiator_msgout(%struct.ahc_softc* %483, %struct.ahc_devinfo* %6, %struct.scb* %484)
  br label %492

486:                                              ; preds = %472
  %487 = load i32, i32* @MSG_TYPE_INITIATOR_MSGIN, align 4
  %488 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %489 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %488, i32 0, i32 5
  store i32 %487, i32* %489, align 4
  %490 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %491 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %490, i32 0, i32 4
  store i32 0, i32* %491, align 8
  br label %492

492:                                              ; preds = %486, %482
  br label %493

493:                                              ; preds = %492, %461
  br label %494

494:                                              ; preds = %493, %435
  %495 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %496 = call i32 @ahc_handle_message_phase(%struct.ahc_softc* %495)
  br label %939

497:                                              ; preds = %2
  %498 = load i32, i32* %4, align 4
  %499 = load i32, i32* @SCSIINT, align 4
  %500 = and i32 %498, %499
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %604

502:                                              ; preds = %497
  %503 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %504 = load i32, i32* @SSTAT1, align 4
  %505 = call i32 @ahc_inb(%struct.ahc_softc* %503, i32 %504)
  %506 = load i32, i32* @SCSIPERR, align 4
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %604

509:                                              ; preds = %502
  %510 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %511 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* @AHC_DT, align 4
  %514 = and i32 %512, %513
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %530

516:                                              ; preds = %509
  %517 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %518 = load i32, i32* @SCSISIGI, align 4
  %519 = call i32 @ahc_inb(%struct.ahc_softc* %517, i32 %518)
  %520 = load i32, i32* @PHASE_MASK, align 4
  %521 = and i32 %519, %520
  store i32 %521, i32* %20, align 4
  %522 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %523 = load i32, i32* @LASTPHASE, align 4
  %524 = load i32, i32* %20, align 4
  %525 = call i32 @ahc_outb(%struct.ahc_softc* %522, i32 %523, i32 %524)
  %526 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %527 = load i32, i32* @SCSISIGO, align 4
  %528 = load i32, i32* %20, align 4
  %529 = call i32 @ahc_outb(%struct.ahc_softc* %526, i32 %527, i32 %528)
  br label %530

530:                                              ; preds = %516, %509
  %531 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %532 = load i32, i32* @SCSISIGI, align 4
  %533 = call i32 @ahc_inb(%struct.ahc_softc* %531, i32 %532)
  %534 = load i32, i32* @CDI, align 4
  %535 = load i32, i32* @MSGI, align 4
  %536 = or i32 %534, %535
  %537 = and i32 %533, %536
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %599

539:                                              ; preds = %530
  %540 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %541 = load i32, i32* @SXFRCTL1, align 4
  %542 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %543 = load i32, i32* @SXFRCTL1, align 4
  %544 = call i32 @ahc_inb(%struct.ahc_softc* %542, i32 %543)
  %545 = load i32, i32* @BITBUCKET, align 4
  %546 = or i32 %544, %545
  %547 = call i32 @ahc_outb(%struct.ahc_softc* %540, i32 %541, i32 %546)
  store i32 5000, i32* %21, align 4
  br label %548

548:                                              ; preds = %562, %539
  %549 = load i32, i32* %21, align 4
  %550 = add nsw i32 %549, -1
  store i32 %550, i32* %21, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %564

552:                                              ; preds = %548
  %553 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %554 = load i32, i32* @SCSISIGI, align 4
  %555 = call i32 @ahc_inb(%struct.ahc_softc* %553, i32 %554)
  %556 = load i32, i32* @CDI, align 4
  %557 = load i32, i32* @MSGI, align 4
  %558 = or i32 %556, %557
  %559 = and i32 %555, %558
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %552
  br label %564

562:                                              ; preds = %552
  %563 = call i32 @ahc_delay(i32 100)
  br label %548

564:                                              ; preds = %561, %548
  %565 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %566 = load i32, i32* @SXFRCTL1, align 4
  %567 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %568 = load i32, i32* @SXFRCTL1, align 4
  %569 = call i32 @ahc_inb(%struct.ahc_softc* %567, i32 %568)
  %570 = load i32, i32* @BITBUCKET, align 4
  %571 = xor i32 %570, -1
  %572 = and i32 %569, %571
  %573 = call i32 @ahc_outb(%struct.ahc_softc* %565, i32 %566, i32 %572)
  %574 = load i32, i32* %21, align 4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %598

576:                                              ; preds = %564
  %577 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %578 = call i32 @ahc_print_devinfo(%struct.ahc_softc* %577, %struct.ahc_devinfo* %6)
  %579 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %580 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %581 = load i32, i32* @SCB_TAG, align 4
  %582 = call i32 @ahc_inb(%struct.ahc_softc* %580, i32 %581)
  store i32 %582, i32* %23, align 4
  %583 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %584 = load i32, i32* %23, align 4
  %585 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %583, i32 %584)
  store %struct.scb* %585, %struct.scb** %22, align 8
  %586 = load %struct.scb*, %struct.scb** %22, align 8
  %587 = icmp ne %struct.scb* %586, null
  br i1 %587, label %588, label %592

588:                                              ; preds = %576
  %589 = load %struct.scb*, %struct.scb** %22, align 8
  %590 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %591 = call i32 @ahc_set_transaction_status(%struct.scb* %589, i32 %590)
  br label %592

592:                                              ; preds = %588, %576
  %593 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %594 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 3
  %595 = load i32, i32* %594, align 4
  %596 = load i32, i32* @TRUE, align 4
  %597 = call i32 @ahc_reset_channel(%struct.ahc_softc* %593, i32 %595, i32 %596)
  br label %598

598:                                              ; preds = %592, %564
  br label %603

599:                                              ; preds = %530
  %600 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %601 = load i32, i32* @SCSIDATL, align 4
  %602 = call i32 @ahc_inb(%struct.ahc_softc* %600, i32 %601)
  br label %603

603:                                              ; preds = %599, %598
  br label %604

604:                                              ; preds = %603, %502, %497
  br label %939

605:                                              ; preds = %2
  %606 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %607 = load i32, i32* @SCB_TAG, align 4
  %608 = call i32 @ahc_inb(%struct.ahc_softc* %606, i32 %607)
  store i32 %608, i32* %24, align 4
  %609 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %610 = load i32, i32* @LASTPHASE, align 4
  %611 = call i32 @ahc_inb(%struct.ahc_softc* %609, i32 %610)
  store i32 %611, i32* %25, align 4
  %612 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %613 = load i32, i32* %24, align 4
  %614 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %612, i32 %613)
  store %struct.scb* %614, %struct.scb** %5, align 8
  store i32 0, i32* %26, align 4
  br label %615

615:                                              ; preds = %630, %605
  %616 = load i32, i32* %26, align 4
  %617 = load i32, i32* @num_phases, align 4
  %618 = icmp slt i32 %616, %617
  br i1 %618, label %619, label %633

619:                                              ; preds = %615
  %620 = load i32, i32* %25, align 4
  %621 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ahc_phase_table, align 8
  %622 = load i32, i32* %26, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %621, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 4
  %627 = icmp eq i32 %620, %626
  br i1 %627, label %628, label %629

628:                                              ; preds = %619
  br label %633

629:                                              ; preds = %619
  br label %630

630:                                              ; preds = %629
  %631 = load i32, i32* %26, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %26, align 4
  br label %615

633:                                              ; preds = %628, %615
  %634 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %635 = load %struct.scb*, %struct.scb** %5, align 8
  %636 = call i32 @ahc_print_path(%struct.ahc_softc* %634, %struct.scb* %635)
  %637 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ahc_phase_table, align 8
  %638 = load i32, i32* %26, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %637, i64 %639
  %641 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 4
  %643 = load %struct.scb*, %struct.scb** %5, align 8
  %644 = getelementptr inbounds %struct.scb, %struct.scb* %643, i32 0, i32 3
  %645 = load %struct.hardware_scb*, %struct.hardware_scb** %644, align 8
  %646 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 4
  %648 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %642, i32 %647)
  %649 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %650 = load %struct.scb*, %struct.scb** %5, align 8
  %651 = call i32 @ahc_print_path(%struct.ahc_softc* %649, %struct.scb* %650)
  %652 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %653 = load i32, i32* @SEQ_FLAGS, align 4
  %654 = call i32 @ahc_inb(%struct.ahc_softc* %652, i32 %653)
  %655 = load i32, i32* @DPHASE, align 4
  %656 = and i32 %654, %655
  %657 = icmp ne i32 %656, 0
  %658 = zext i1 %657 to i64
  %659 = select i1 %657, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)
  %660 = load %struct.scb*, %struct.scb** %5, align 8
  %661 = call i32 @ahc_get_transfer_length(%struct.scb* %660)
  %662 = load %struct.scb*, %struct.scb** %5, align 8
  %663 = getelementptr inbounds %struct.scb, %struct.scb* %662, i32 0, i32 2
  %664 = load i32, i32* %663, align 8
  %665 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i8* %659, i32 %661, i32 %664)
  %666 = load %struct.scb*, %struct.scb** %5, align 8
  %667 = getelementptr inbounds %struct.scb, %struct.scb* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 8
  %669 = icmp sgt i32 %668, 0
  br i1 %669, label %670, label %716

670:                                              ; preds = %633
  store i32 0, i32* %26, align 4
  br label %671

671:                                              ; preds = %712, %670
  %672 = load i32, i32* %26, align 4
  %673 = load %struct.scb*, %struct.scb** %5, align 8
  %674 = getelementptr inbounds %struct.scb, %struct.scb* %673, i32 0, i32 2
  %675 = load i32, i32* %674, align 8
  %676 = icmp slt i32 %672, %675
  br i1 %676, label %677, label %715

677:                                              ; preds = %671
  %678 = load i32, i32* %26, align 4
  %679 = load %struct.scb*, %struct.scb** %5, align 8
  %680 = getelementptr inbounds %struct.scb, %struct.scb* %679, i32 0, i32 4
  %681 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %680, align 8
  %682 = load i32, i32* %26, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %681, i64 %683
  %685 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %684, i32 0, i32 1
  %686 = load i32, i32* %685, align 4
  %687 = call i32 @ahc_le32toh(i32 %686)
  %688 = ashr i32 %687, 24
  %689 = load i32, i32* @SG_HIGH_ADDR_BITS, align 4
  %690 = and i32 %688, %689
  %691 = load %struct.scb*, %struct.scb** %5, align 8
  %692 = getelementptr inbounds %struct.scb, %struct.scb* %691, i32 0, i32 4
  %693 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %692, align 8
  %694 = load i32, i32* %26, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %693, i64 %695
  %697 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 4
  %699 = call i32 @ahc_le32toh(i32 %698)
  %700 = load %struct.scb*, %struct.scb** %5, align 8
  %701 = getelementptr inbounds %struct.scb, %struct.scb* %700, i32 0, i32 4
  %702 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %701, align 8
  %703 = load i32, i32* %26, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %702, i64 %704
  %706 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %705, i32 0, i32 1
  %707 = load i32, i32* %706, align 4
  %708 = call i32 @ahc_le32toh(i32 %707)
  %709 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %710 = and i32 %708, %709
  %711 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %678, i32 %690, i32 %699, i32 %710)
  br label %712

712:                                              ; preds = %677
  %713 = load i32, i32* %26, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %26, align 4
  br label %671

715:                                              ; preds = %671
  br label %716

716:                                              ; preds = %715, %633
  %717 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %718 = load %struct.scb*, %struct.scb** %5, align 8
  %719 = call i32 @ahc_freeze_devq(%struct.ahc_softc* %717, %struct.scb* %718)
  %720 = load %struct.scb*, %struct.scb** %5, align 8
  %721 = getelementptr inbounds %struct.scb, %struct.scb* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 8
  %723 = load i32, i32* @SCB_SENSE, align 4
  %724 = and i32 %722, %723
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %726, label %730

726:                                              ; preds = %716
  %727 = load %struct.scb*, %struct.scb** %5, align 8
  %728 = load i32, i32* @CAM_DATA_RUN_ERR, align 4
  %729 = call i32 @ahc_set_transaction_status(%struct.scb* %727, i32 %728)
  br label %740

730:                                              ; preds = %716
  %731 = load i32, i32* @SCB_SENSE, align 4
  %732 = xor i32 %731, -1
  %733 = load %struct.scb*, %struct.scb** %5, align 8
  %734 = getelementptr inbounds %struct.scb, %struct.scb* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 8
  %736 = and i32 %735, %732
  store i32 %736, i32* %734, align 8
  %737 = load %struct.scb*, %struct.scb** %5, align 8
  %738 = load i32, i32* @CAM_AUTOSENSE_FAIL, align 4
  %739 = call i32 @ahc_set_transaction_status(%struct.scb* %737, i32 %738)
  br label %740

740:                                              ; preds = %730, %726
  %741 = load %struct.scb*, %struct.scb** %5, align 8
  %742 = call i32 @ahc_freeze_scb(%struct.scb* %741)
  %743 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %744 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %743, i32 0, i32 1
  %745 = load i32, i32* %744, align 4
  %746 = load i32, i32* @AHC_ULTRA2, align 4
  %747 = and i32 %745, %746
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %770

749:                                              ; preds = %740
  %750 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %751 = load i32, i32* @SXFRCTL0, align 4
  %752 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %753 = load i32, i32* @SXFRCTL0, align 4
  %754 = call i32 @ahc_inb(%struct.ahc_softc* %752, i32 %753)
  %755 = load i32, i32* @CLRSTCNT, align 4
  %756 = or i32 %754, %755
  %757 = load i32, i32* @CLRCHN, align 4
  %758 = or i32 %756, %757
  %759 = call i32 @ahc_outb(%struct.ahc_softc* %750, i32 %751, i32 %758)
  %760 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %761 = load i32, i32* @SXFRCTL0, align 4
  %762 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %763 = load i32, i32* @SXFRCTL0, align 4
  %764 = call i32 @ahc_inb(%struct.ahc_softc* %762, i32 %763)
  %765 = load i32, i32* @CLRSTCNT, align 4
  %766 = or i32 %764, %765
  %767 = load i32, i32* @CLRCHN, align 4
  %768 = or i32 %766, %767
  %769 = call i32 @ahc_outb(%struct.ahc_softc* %760, i32 %761, i32 %768)
  br label %770

770:                                              ; preds = %749, %740
  %771 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %772 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %771, i32 0, i32 2
  %773 = load i32, i32* %772, align 8
  %774 = load i32, i32* @AHC_39BIT_ADDRESSING, align 4
  %775 = and i32 %773, %774
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %794

777:                                              ; preds = %770
  %778 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %779 = load i32, i32* @DSCOMMAND1, align 4
  %780 = call i32 @ahc_inb(%struct.ahc_softc* %778, i32 %779)
  store i32 %780, i32* %27, align 4
  %781 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %782 = load i32, i32* @DSCOMMAND1, align 4
  %783 = load i32, i32* %27, align 4
  %784 = load i32, i32* @HADDLDSEL0, align 4
  %785 = or i32 %783, %784
  %786 = call i32 @ahc_outb(%struct.ahc_softc* %781, i32 %782, i32 %785)
  %787 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %788 = load i32, i32* @HADDR, align 4
  %789 = call i32 @ahc_outb(%struct.ahc_softc* %787, i32 %788, i32 0)
  %790 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %791 = load i32, i32* @DSCOMMAND1, align 4
  %792 = load i32, i32* %27, align 4
  %793 = call i32 @ahc_outb(%struct.ahc_softc* %790, i32 %791, i32 %792)
  br label %794

794:                                              ; preds = %777, %770
  br label %939

795:                                              ; preds = %2
  %796 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %797 = call i32 @ahc_name(%struct.ahc_softc* %796)
  %798 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 3
  %799 = load i32, i32* %798, align 4
  %800 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 2
  %801 = load i32, i32* %800, align 4
  %802 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %6, i32 0, i32 1
  %803 = load i32, i32* %802, align 4
  %804 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i32 %797, i32 %799, i32 %801, i32 %803)
  %805 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %806 = load i32, i32* @SCB_TAG, align 4
  %807 = call i32 @ahc_inb(%struct.ahc_softc* %805, i32 %806)
  store i32 %807, i32* %28, align 4
  %808 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %809 = load i32, i32* %28, align 4
  %810 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %808, i32 %809)
  store %struct.scb* %810, %struct.scb** %5, align 8
  %811 = load %struct.scb*, %struct.scb** %5, align 8
  %812 = icmp ne %struct.scb* %811, null
  br i1 %812, label %813, label %838

813:                                              ; preds = %795
  %814 = load %struct.scb*, %struct.scb** %5, align 8
  %815 = getelementptr inbounds %struct.scb, %struct.scb* %814, i32 0, i32 0
  %816 = load i32, i32* %815, align 8
  %817 = load i32, i32* @SCB_RECOVERY_SCB, align 4
  %818 = and i32 %816, %817
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %820, label %838

820:                                              ; preds = %813
  %821 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %822 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %823 = load %struct.scb*, %struct.scb** %5, align 8
  %824 = call i32 @SCB_GET_TARGET(%struct.ahc_softc* %822, %struct.scb* %823)
  %825 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %826 = load %struct.scb*, %struct.scb** %5, align 8
  %827 = call i32 @SCB_GET_CHANNEL(%struct.ahc_softc* %825, %struct.scb* %826)
  %828 = load %struct.scb*, %struct.scb** %5, align 8
  %829 = call i32 @SCB_GET_LUN(%struct.scb* %828)
  %830 = load %struct.scb*, %struct.scb** %5, align 8
  %831 = getelementptr inbounds %struct.scb, %struct.scb* %830, i32 0, i32 3
  %832 = load %struct.hardware_scb*, %struct.hardware_scb** %831, align 8
  %833 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %832, i32 0, i32 0
  %834 = load i32, i32* %833, align 4
  %835 = load i32, i32* @ROLE_INITIATOR, align 4
  %836 = load i32, i32* @SEARCH_REMOVE, align 4
  %837 = call i32 @ahc_search_qinfifo(%struct.ahc_softc* %821, i32 %824, i32 %827, i32 %829, i32 %834, i32 %835, i32 0, i32 %836)
  br label %838

838:                                              ; preds = %820, %813, %795
  br label %939

839:                                              ; preds = %2
  %840 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %841 = call i32 @ahc_name(%struct.ahc_softc* %840)
  %842 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 %841)
  %843 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %844 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %843)
  %845 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %939

846:                                              ; preds = %2
  %847 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %848 = load i32, i32* @SCBPTR, align 4
  %849 = call i32 @ahc_inb(%struct.ahc_softc* %847, i32 %848)
  store i32 %849, i32* %29, align 4
  %850 = load i32, i32* %29, align 4
  %851 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %852 = load i32, i32* @ARG_1, align 4
  %853 = call i32 @ahc_inb(%struct.ahc_softc* %851, i32 %852)
  %854 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %855 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %854, i32 0, i32 3
  %856 = load %struct.TYPE_9__*, %struct.TYPE_9__** %855, align 8
  %857 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %856, i32 0, i32 0
  %858 = load %struct.TYPE_8__*, %struct.TYPE_8__** %857, align 8
  %859 = load i32, i32* %29, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %858, i64 %860
  %862 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %861, i32 0, i32 0
  %863 = load i32, i32* %862, align 4
  %864 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0), i32 %850, i32 %853, i32 %863)
  %865 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %866 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %865)
  %867 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %939

868:                                              ; preds = %2
  %869 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %870 = call i32 @ahc_name(%struct.ahc_softc* %869)
  %871 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i32 %870)
  %872 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %873 = load i32, i32* @SAVED_SCSIID, align 4
  %874 = call i32 @ahc_inb(%struct.ahc_softc* %872, i32 %873)
  %875 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %876 = load i32, i32* @SAVED_LUN, align 4
  %877 = call i32 @ahc_inb(%struct.ahc_softc* %875, i32 %876)
  %878 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %879 = load i32, i32* @ARG_1, align 4
  %880 = call i32 @ahc_inb(%struct.ahc_softc* %878, i32 %879)
  %881 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %882 = load i32, i32* @ACCUM, align 4
  %883 = call i32 @ahc_inb(%struct.ahc_softc* %881, i32 %882)
  %884 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %874, i32 %877, i32 %880, i32 %883)
  %885 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %886 = load i32, i32* @SEQ_FLAGS, align 4
  %887 = call i32 @ahc_inb(%struct.ahc_softc* %885, i32 %886)
  %888 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %889 = load i32, i32* @SCBPTR, align 4
  %890 = call i32 @ahc_inb(%struct.ahc_softc* %888, i32 %889)
  %891 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %892 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %893 = load i32, i32* @SAVED_SCSIID, align 4
  %894 = call i32 @ahc_inb(%struct.ahc_softc* %892, i32 %893)
  %895 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %896 = load i32, i32* @SAVED_LUN, align 4
  %897 = call i32 @ahc_inb(%struct.ahc_softc* %895, i32 %896)
  %898 = call i32 @BUILD_TCL(i32 %894, i32 %897)
  %899 = call i32 @ahc_index_busy_tcl(%struct.ahc_softc* %891, i32 %898)
  %900 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %901 = load i32, i32* @SINDEX, align 4
  %902 = call i32 @ahc_inb(%struct.ahc_softc* %900, i32 %901)
  %903 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %904 = load i32, i32* @ACCUM, align 4
  %905 = call i32 @ahc_inb(%struct.ahc_softc* %903, i32 %904)
  %906 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i64 0, i64 0), i32 %887, i32 %890, i32 %899, i32 %902, i32 %905)
  %907 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %908 = load i32, i32* @SCSIID, align 4
  %909 = call i32 @ahc_inb(%struct.ahc_softc* %907, i32 %908)
  %910 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %911 = load i32, i32* @SCB_SCSIID, align 4
  %912 = call i32 @ahc_inb(%struct.ahc_softc* %910, i32 %911)
  %913 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %914 = load i32, i32* @SCB_LUN, align 4
  %915 = call i32 @ahc_inb(%struct.ahc_softc* %913, i32 %914)
  %916 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %917 = load i32, i32* @SCB_TAG, align 4
  %918 = call i32 @ahc_inb(%struct.ahc_softc* %916, i32 %917)
  %919 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %920 = load i32, i32* @SCB_CONTROL, align 4
  %921 = call i32 @ahc_inb(%struct.ahc_softc* %919, i32 %920)
  %922 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0), i32 %909, i32 %912, i32 %915, i32 %918, i32 %921)
  %923 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %924 = load i32, i32* @SCSIBUSL, align 4
  %925 = call i32 @ahc_inb(%struct.ahc_softc* %923, i32 %924)
  %926 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %927 = load i32, i32* @SCSISIGI, align 4
  %928 = call i32 @ahc_inb(%struct.ahc_softc* %926, i32 %927)
  %929 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %925, i32 %928)
  %930 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %931 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %930)
  %932 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %939

933:                                              ; preds = %2
  %934 = load i32, i32* %4, align 4
  %935 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %936 = load i32, i32* @SCSISIGI, align 4
  %937 = call i32 @ahc_inb(%struct.ahc_softc* %935, i32 %936)
  %938 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0), i32 %934, i32 %937)
  br label %939

939:                                              ; preds = %933, %868, %846, %839, %838, %794, %604, %494, %403, %400, %397, %394, %382, %279, %278, %70
  br label %940

940:                                              ; preds = %939, %51
  %941 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %942 = call i32 @ahc_unpause(%struct.ahc_softc* %941)
  br label %943

943:                                              ; preds = %940, %454, %418
  ret void
}

declare dso_local i32 @ahc_fetch_devinfo(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_print_devinfo(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ahc_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_freeze_devq(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_freeze_scb(%struct.scb*) #1

declare dso_local i32 @ahc_set_scsi_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_perform_autosense(%struct.scb*) #1

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @ahc_update_residual(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_get_sense_bufaddr(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_get_sense_bufsize(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i8* @ahc_htole32(i32) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @ahc_get_residual(%struct.scb*) #1

declare dso_local i32 @ahc_get_transfer_length(%struct.scb*) #1

declare dso_local i32 @ahc_update_neg_request(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_tmode_tstate*, %struct.ahc_initiator_tinfo*, i32) #1

declare dso_local i32 @ahc_qinfifo_requeue_tail(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_scb_timer_reset(%struct.scb*, i32) #1

declare dso_local i32 @ahc_index_busy_tcl(%struct.ahc_softc*, i32) #1

declare dso_local i32 @BUILD_TCL(i32, i32) #1

declare dso_local i32 @ahc_assert_atn(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_handle_proto_violation(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_handle_ign_wide_residue(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @ahc_reinitialize_dataptrs(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_restart(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_clear_intstat(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_setup_initiator_msgout(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.scb*) #1

declare dso_local i32 @ahc_handle_message_phase(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_delay(i32) #1

declare dso_local i32 @ahc_reset_channel(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_print_path(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_le32toh(i32) #1

declare dso_local i32 @ahc_search_qinfifo(%struct.ahc_softc*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_CHANNEL(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
