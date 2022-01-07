; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_seqint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_seqint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i8*, i32, i32*, i32 }
%struct.scb = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ahd_devinfo = type { i32, i32, i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.ahd_transinfo }
%struct.ahd_transinfo = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }

@SEQINTCODE = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSEQINT = common dso_local global i32 0, align 4
@AHD_INTCOLLISION_BUG = common dso_local global i32 0, align 4
@AHD_MODE_UNKNOWN_MSK = common dso_local global i32 0, align 4
@AHD_MODE_CFG_MSK = common dso_local global i32 0, align 4
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@LQISTAT2 = common dso_local global i32 0, align 4
@LQIPHASE_OUTPKT = common dso_local global i32 0, align 4
@SCSISIGO = common dso_local global i32 0, align 4
@ATNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s: Invalid Sequencer interrupt occurred, resetting channel.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"SCB %d Packetized Status Overrun\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CFG4ISTAT: Free SCB %d referenced\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"For safety\00", align 1
@HADDR = common dso_local global i32 0, align 4
@HCNT = common dso_local global i32 0, align 4
@AHD_SENSE_BUFSIZE = common dso_local global i32 0, align 4
@SG_CACHE_PRE = common dso_local global i32 0, align 4
@SG_LAST_SEG = common dso_local global i32 0, align 4
@DFCNTRL = common dso_local global i32 0, align 4
@PRELOADEN = common dso_local global i32 0, align 4
@SCSIEN = common dso_local global i32 0, align 4
@HDMAEN = common dso_local global i32 0, align 4
@SCSISIGI = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: ILLEGAL_PHASE 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: Issued Bus Reset.\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Invalid phase with no valid SCB.  Resetting bus.\0A\00", align 1
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_ACTIVE = common dso_local global i32 0, align 4
@SCB_CDB_STORE = common dso_local global i32 0, align 4
@SCB_CDB_LEN = common dso_local global i32 0, align 4
@TAG_ENB = common dso_local global i32 0, align 4
@SCB_TAG_TYPE = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i32 0, align 4
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@SCB_EXTERNAL_RESET = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AC_SENT_BDR = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@CLRLQOINT1 = common dso_local global i32 0, align 4
@CLRLQOPHACHGINPKT = common dso_local global i32 0, align 4
@AHD_CLRLQO_AUTOCLR_BUG = common dso_local global i32 0, align 4
@MSG_ABORT_TASK = common dso_local global i32 0, align 4
@MSG_TYPE_INITIATOR_MSGOUT = common dso_local global i8* null, align 8
@STATUS_RCVD = common dso_local global i32 0, align 4
@MSG_TYPE_NONE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"ahd_intr: HOST_MSG_LOOP bad phase 0x%x\0A\00", align 1
@MSG_TYPE_INITIATOR_MSGIN = common dso_local global i8* null, align 8
@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@SCSISEQ0 = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [76 x i8] c"%s:%c:%d: no active SCB for reconnecting target - issuing BUS DEVICE RESET\0A\00", align 1
@SELID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [68 x i8] c"SAVED_SCSIID == 0x%x, SAVED_LUN == 0x%x, REG0 == 0x%x ACCUM = 0x%x\0A\00", align 1
@REG0 = common dso_local global i32 0, align 4
@ACCUM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [64 x i8] c"SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, SINDEX == 0x%x\0A\00", align 1
@SINDEX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [73 x i8] c"SELID == 0x%x, SCB_SCSIID == 0x%x, SCB_LUN == 0x%x, SCB_CONTROL == 0x%x\0A\00", align 1
@SCB_SCSIID = common dso_local global i32 0, align 4
@SCB_LUN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"SCSIBUS[0] == 0x%x, SCSISIGI == 0x%x\0A\00", align 1
@SCSIBUS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"SXFRCTL0 == 0x%x\0A\00", align 1
@SXFRCTL0 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"SEQCTL0 == 0x%x\0A\00", align 1
@SEQCTL0 = common dso_local global i32 0, align 4
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [80 x i8] c"%s:%c:%d: unknown scsi bus phase %x, lastphase = 0x%x.  Attempting to continue\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"%s:%c:%d: Missed busfree. Lastphase = 0x%x, Curphase = 0x%x\0A\00", align 1
@CAM_DATA_RUN_ERR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [46 x i8] c"%s:%c:%d:%d: Attempt to issue message failed\0A\00", align 1
@SCB_RECOVERY_SCB = common dso_local global i32 0, align 4
@SEARCH_REMOVE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [36 x i8] c"Task Management Func 0x%x Complete\0A\00", align 1
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@CAM_BDR_SENT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"Lun Reset\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Target Reset\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Unexpected TaskMgmt Func\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"SCB completes before TMF\0A\00", align 1
@SSTAT0 = common dso_local global i32 0, align 4
@SELDO = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@SELTO = common dso_local global i32 0, align 4
@SCB_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c"%s: Tracepoint %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"%s: Unexpected SEQINTCODE %d\0A\00", align 1
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@AHD_SHOW_RECOVERY = common dso_local global i32 0, align 4
@DPHASE = common dso_local global i32 0, align 4
@MODE_PTR = common dso_local global i32 0, align 4
@MSG_TYPE_TARGET_MSGOUT = common dso_local global i8* null, align 8
@SG_CACHE_SHADOW = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32)* @ahd_handle_seqint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_seqint(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ahd_devinfo, align 4
  %14 = alloca %struct.scb*, align 8
  %15 = alloca %struct.ahd_initiator_tinfo*, align 8
  %16 = alloca %struct.ahd_tmode_tstate*, align 8
  %17 = alloca %struct.ahd_transinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.scb*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ahd_devinfo, align 4
  %22 = alloca %struct.scb*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ahd_devinfo, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.scb*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.ahd_devinfo, align 4
  %31 = alloca %struct.scb*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.scb*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.ahd_devinfo, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %42 = load i32, i32* @SEQINTCODE, align 4
  %43 = call i32 @ahd_inb(%struct.ahd_softc* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %45 = load i32, i32* @CLRINT, align 4
  %46 = load i32, i32* @CLRSEQINT, align 4
  %47 = call i32 @ahd_outb(%struct.ahd_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AHD_INTCOLLISION_BUG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %2
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %56 = call i32 @ahd_unpause(%struct.ahd_softc* %55)
  br label %57

57:                                               ; preds = %62, %54
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %59 = call i32 @ahd_is_paused(%struct.ahd_softc* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %57

63:                                               ; preds = %57
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %65 = load i32, i32* @CLRINT, align 4
  %66 = load i32, i32* @CLRSEQINT, align 4
  %67 = call i32 @ahd_outb(%struct.ahd_softc* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %2
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %70 = call i32 @ahd_update_modes(%struct.ahd_softc* %69)
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %822 [
    i32 159, label %72
    i32 155, label %127
    i32 134, label %134
    i32 163, label %158
    i32 156, label %199
    i32 162, label %382
    i32 160, label %419
    i32 150, label %422
    i32 158, label %425
    i32 152, label %481
    i32 149, label %581
    i32 157, label %584
    i32 164, label %589
    i32 154, label %605
    i32 161, label %623
    i32 153, label %637
    i32 132, label %688
    i32 133, label %756
    i32 131, label %812
    i32 130, label %812
    i32 129, label %812
    i32 128, label %812
    i32 151, label %818
    i32 140, label %819
  ]

72:                                               ; preds = %68
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %74 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %75 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %79 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %73, i32 %77, i32 %81)
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %84 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %83)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %85, i32 %86)
  store %struct.scb* %87, %struct.scb** %6, align 8
  %88 = load %struct.scb*, %struct.scb** %6, align 8
  %89 = icmp eq %struct.scb* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  br label %111

91:                                               ; preds = %72
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %93 = load i32, i32* @SAVED_SCSIID, align 4
  %94 = load %struct.scb*, %struct.scb** %6, align 8
  %95 = getelementptr inbounds %struct.scb, %struct.scb* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ahd_outb(%struct.ahd_softc* %92, i32 %93, i32 %98)
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %101 = load i32, i32* @SAVED_LUN, align 4
  %102 = load %struct.scb*, %struct.scb** %6, align 8
  %103 = getelementptr inbounds %struct.scb, %struct.scb* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ahd_outb(%struct.ahd_softc* %100, i32 %101, i32 %106)
  %108 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %109 = load i32, i32* @SEQ_FLAGS, align 4
  %110 = call i32 @ahd_outb(%struct.ahd_softc* %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %91, %90
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %113 = load i32, i32* @LQISTAT2, align 4
  %114 = call i32 @ahd_inb(%struct.ahd_softc* %112, i32 %113)
  %115 = load i32, i32* @LQIPHASE_OUTPKT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %120 = load i32, i32* @SCSISIGO, align 4
  %121 = call i32 @ahd_inb(%struct.ahd_softc* %119, i32 %120)
  %122 = load i32, i32* @ATNO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %118, %111
  br label %827

127:                                              ; preds = %68
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %129 = call i32 @ahd_name(%struct.ahd_softc* %128)
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %132 = load i32, i32* @TRUE, align 4
  %133 = call i32 @ahd_reset_channel(%struct.ahd_softc* %131, i8 signext 65, i32 %132)
  br label %827

134:                                              ; preds = %68
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %136 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %135)
  store i32 %136, i32* %9, align 4
  %137 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %137, i32 %138)
  store %struct.scb* %139, %struct.scb** %8, align 8
  %140 = load %struct.scb*, %struct.scb** %8, align 8
  %141 = icmp ne %struct.scb* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %144 = load %struct.scb*, %struct.scb** %8, align 8
  %145 = call i32 @ahd_print_path(%struct.ahd_softc* %143, %struct.scb* %144)
  br label %150

146:                                              ; preds = %134
  %147 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %148 = call i32 @ahd_name(%struct.ahd_softc* %147)
  %149 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %154 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %153)
  %155 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %156 = load i32, i32* @TRUE, align 4
  %157 = call i32 @ahd_reset_channel(%struct.ahd_softc* %155, i8 signext 65, i32 %156)
  br label %827

158:                                              ; preds = %68
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %160 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %159)
  store i32 %160, i32* %11, align 4
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %161, i32 %162)
  store %struct.scb* %163, %struct.scb** %10, align 8
  %164 = load %struct.scb*, %struct.scb** %10, align 8
  %165 = icmp eq %struct.scb* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %168 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %167)
  %169 = load i32, i32* %11, align 4
  %170 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  %171 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %172

172:                                              ; preds = %166, %158
  %173 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %174 = load i32, i32* @HADDR, align 4
  %175 = load %struct.scb*, %struct.scb** %10, align 8
  %176 = getelementptr inbounds %struct.scb, %struct.scb* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ahd_outq(%struct.ahd_softc* %173, i32 %174, i32 %177)
  %179 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %180 = load i32, i32* @HCNT, align 4
  %181 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %182 = call i32 @ahd_outw(%struct.ahd_softc* %179, i32 %180, i32 %181)
  %183 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %184 = load i32, i32* @HCNT, align 4
  %185 = add nsw i32 %184, 2
  %186 = call i32 @ahd_outb(%struct.ahd_softc* %183, i32 %185, i32 0)
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %188 = load i32, i32* @SG_CACHE_PRE, align 4
  %189 = load i32, i32* @SG_LAST_SEG, align 4
  %190 = call i32 @ahd_outb(%struct.ahd_softc* %187, i32 %188, i32 %189)
  %191 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %192 = load i32, i32* @DFCNTRL, align 4
  %193 = load i32, i32* @PRELOADEN, align 4
  %194 = load i32, i32* @SCSIEN, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @HDMAEN, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @ahd_outb(%struct.ahd_softc* %191, i32 %192, i32 %197)
  br label %827

199:                                              ; preds = %68
  %200 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %201 = load i32, i32* @SCSISIGI, align 4
  %202 = call i32 @ahd_inb(%struct.ahd_softc* %200, i32 %201)
  %203 = load i32, i32* @PHASE_MASK, align 4
  %204 = and i32 %202, %203
  store i32 %204, i32* %12, align 4
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %206 = call i32 @ahd_name(%struct.ahd_softc* %205)
  %207 = load i32, i32* %12, align 4
  %208 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %206, i32 %207)
  %209 = load i32, i32* %12, align 4
  switch i32 %209, label %381 [
    i32 145, label %210
    i32 147, label %210
    i32 144, label %210
    i32 146, label %210
    i32 142, label %210
    i32 141, label %210
    i32 143, label %210
    i32 148, label %217
  ]

210:                                              ; preds = %199, %199, %199, %199, %199, %199, %199
  %211 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %212 = load i32, i32* @TRUE, align 4
  %213 = call i32 @ahd_reset_channel(%struct.ahd_softc* %211, i8 signext 65, i32 %212)
  %214 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %215 = call i32 @ahd_name(%struct.ahd_softc* %214)
  %216 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %215)
  br label %381

217:                                              ; preds = %199
  %218 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %219 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %218)
  store i32 %219, i32* %18, align 4
  %220 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %221 = load i32, i32* %18, align 4
  %222 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %220, i32 %221)
  store %struct.scb* %222, %struct.scb** %14, align 8
  %223 = load %struct.scb*, %struct.scb** %14, align 8
  %224 = icmp eq %struct.scb* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %217
  %226 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %228 = load i32, i32* @TRUE, align 4
  %229 = call i32 @ahd_reset_channel(%struct.ahd_softc* %227, i8 signext 65, i32 %228)
  br label %381

230:                                              ; preds = %217
  %231 = load %struct.scb*, %struct.scb** %14, align 8
  %232 = call i32 @SCB_GET_OUR_ID(%struct.scb* %231)
  %233 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %234 = load %struct.scb*, %struct.scb** %14, align 8
  %235 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %233, %struct.scb* %234)
  %236 = load %struct.scb*, %struct.scb** %14, align 8
  %237 = call i32 @SCB_GET_LUN(%struct.scb* %236)
  %238 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %239 = load %struct.scb*, %struct.scb** %14, align 8
  %240 = call i32 @SCB_GET_CHANNEL(%struct.ahd_softc* %238, %struct.scb* %239)
  %241 = load i32, i32* @ROLE_INITIATOR, align 4
  %242 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %13, i32 %232, i32 %235, i32 %237, i32 %240, i32 %241)
  %243 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %244 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %13, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %13, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %13, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %243, i32 %245, i32 %247, i32 %249, %struct.ahd_tmode_tstate** %16)
  store %struct.ahd_initiator_tinfo* %250, %struct.ahd_initiator_tinfo** %15, align 8
  %251 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %252 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %251, i32 0, i32 0
  store %struct.ahd_transinfo* %252, %struct.ahd_transinfo** %17, align 8
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %254 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %255 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %256 = load i32, i32* @TRUE, align 4
  %257 = call i32 @ahd_set_width(%struct.ahd_softc* %253, %struct.ahd_devinfo* %13, i32 %254, i32 %255, i32 %256)
  %258 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %259 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %260 = load i32, i32* @TRUE, align 4
  %261 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %258, %struct.ahd_devinfo* %13, i32 0, i32 0, i32 0, i32 %259, i32 %260)
  %262 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %263 = load i32, i32* @SCB_CDB_STORE, align 4
  %264 = call i32 @ahd_outb(%struct.ahd_softc* %262, i32 %263, i32 0)
  %265 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %266 = load i32, i32* @SCB_CDB_STORE, align 4
  %267 = add nsw i32 %266, 1
  %268 = call i32 @ahd_outb(%struct.ahd_softc* %265, i32 %267, i32 0)
  %269 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %270 = load i32, i32* @SCB_CDB_STORE, align 4
  %271 = add nsw i32 %270, 2
  %272 = call i32 @ahd_outb(%struct.ahd_softc* %269, i32 %271, i32 0)
  %273 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %274 = load i32, i32* @SCB_CDB_STORE, align 4
  %275 = add nsw i32 %274, 3
  %276 = call i32 @ahd_outb(%struct.ahd_softc* %273, i32 %275, i32 0)
  %277 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %278 = load i32, i32* @SCB_CDB_STORE, align 4
  %279 = add nsw i32 %278, 4
  %280 = call i32 @ahd_outb(%struct.ahd_softc* %277, i32 %279, i32 0)
  %281 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %282 = load i32, i32* @SCB_CDB_STORE, align 4
  %283 = add nsw i32 %282, 5
  %284 = call i32 @ahd_outb(%struct.ahd_softc* %281, i32 %283, i32 0)
  %285 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %286 = load i32, i32* @SCB_CDB_LEN, align 4
  %287 = call i32 @ahd_outb(%struct.ahd_softc* %285, i32 %286, i32 6)
  %288 = load i32, i32* @TAG_ENB, align 4
  %289 = load i32, i32* @SCB_TAG_TYPE, align 4
  %290 = or i32 %288, %289
  %291 = xor i32 %290, -1
  %292 = load %struct.scb*, %struct.scb** %14, align 8
  %293 = getelementptr inbounds %struct.scb, %struct.scb* %292, i32 0, i32 1
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, %291
  store i32 %297, i32* %295, align 4
  %298 = load i32, i32* @MK_MESSAGE, align 4
  %299 = load %struct.scb*, %struct.scb** %14, align 8
  %300 = getelementptr inbounds %struct.scb, %struct.scb* %299, i32 0, i32 1
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %298
  store i32 %304, i32* %302, align 4
  %305 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %306 = load i32, i32* @SCB_CONTROL, align 4
  %307 = load %struct.scb*, %struct.scb** %14, align 8
  %308 = getelementptr inbounds %struct.scb, %struct.scb* %307, i32 0, i32 1
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ahd_outb(%struct.ahd_softc* %305, i32 %306, i32 %311)
  %313 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %314 = load i32, i32* @MSG_OUT, align 4
  %315 = load i32, i32* @HOST_MSG, align 4
  %316 = call i32 @ahd_outb(%struct.ahd_softc* %313, i32 %314, i32 %315)
  %317 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %318 = load i32, i32* @SAVED_SCSIID, align 4
  %319 = load %struct.scb*, %struct.scb** %14, align 8
  %320 = getelementptr inbounds %struct.scb, %struct.scb* %319, i32 0, i32 1
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @ahd_outb(%struct.ahd_softc* %317, i32 %318, i32 %323)
  %325 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %326 = load i32, i32* @SAVED_LUN, align 4
  %327 = call i32 @ahd_outb(%struct.ahd_softc* %325, i32 %326, i32 0)
  %328 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %329 = load i32, i32* @SEQ_FLAGS, align 4
  %330 = call i32 @ahd_outb(%struct.ahd_softc* %328, i32 %329, i32 0)
  %331 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %332 = call i32 @ahd_assert_atn(%struct.ahd_softc* %331)
  %333 = load i32, i32* @SCB_PACKETIZED, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.scb*, %struct.scb** %14, align 8
  %336 = getelementptr inbounds %struct.scb, %struct.scb* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load i32, i32* @SCB_ABORT, align 4
  %340 = load i32, i32* @SCB_EXTERNAL_RESET, align 4
  %341 = or i32 %339, %340
  %342 = load %struct.scb*, %struct.scb** %14, align 8
  %343 = getelementptr inbounds %struct.scb, %struct.scb* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 8
  %346 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %347 = load %struct.scb*, %struct.scb** %14, align 8
  %348 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %346, %struct.scb* %347)
  %349 = load %struct.scb*, %struct.scb** %14, align 8
  %350 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %351 = call i32 @ahd_set_transaction_status(%struct.scb* %349, i32 %350)
  %352 = load %struct.scb*, %struct.scb** %14, align 8
  %353 = call i32 @ahd_freeze_scb(%struct.scb* %352)
  %354 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %355 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %13, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %13, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %360 = load i32, i32* @AC_SENT_BDR, align 4
  %361 = call i32 @ahd_send_async(%struct.ahd_softc* %354, i32 %356, i32 %358, i32 %359, i32 %360)
  %362 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %363 = load i32, i32* @AHD_MODE_SCSI, align 4
  %364 = load i32, i32* @AHD_MODE_SCSI, align 4
  %365 = call i32 @ahd_set_modes(%struct.ahd_softc* %362, i32 %363, i32 %364)
  %366 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %367 = load i32, i32* @CLRLQOINT1, align 4
  %368 = load i32, i32* @CLRLQOPHACHGINPKT, align 4
  %369 = call i32 @ahd_outb(%struct.ahd_softc* %366, i32 %367, i32 %368)
  %370 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %371 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @AHD_CLRLQO_AUTOCLR_BUG, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %230
  %377 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %378 = load i32, i32* @CLRLQOINT1, align 4
  %379 = call i32 @ahd_outb(%struct.ahd_softc* %377, i32 %378, i32 0)
  br label %380

380:                                              ; preds = %376, %230
  br label %381

381:                                              ; preds = %199, %380, %225, %210
  br label %827

382:                                              ; preds = %68
  %383 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %384 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %383)
  store i32 %384, i32* %20, align 4
  %385 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %386 = load i32, i32* %20, align 4
  %387 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %385, i32 %386)
  store %struct.scb* %387, %struct.scb** %19, align 8
  %388 = load %struct.scb*, %struct.scb** %19, align 8
  %389 = icmp eq %struct.scb* %388, null
  br i1 %389, label %390, label %418

390:                                              ; preds = %382
  %391 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %392 = call i32 @ahd_assert_atn(%struct.ahd_softc* %391)
  %393 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %394 = load i32, i32* @MSG_OUT, align 4
  %395 = load i32, i32* @HOST_MSG, align 4
  %396 = call i32 @ahd_outb(%struct.ahd_softc* %393, i32 %394, i32 %395)
  %397 = load i32, i32* @MSG_ABORT_TASK, align 4
  %398 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %399 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %398, i32 0, i32 4
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 0
  store i32 %397, i32* %401, align 4
  %402 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %403 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %402, i32 0, i32 1
  store i32 1, i32* %403, align 4
  %404 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %405 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %404, i32 0, i32 3
  store i32 0, i32* %405, align 8
  %406 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGOUT, align 8
  %407 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %408 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %407, i32 0, i32 2
  store i8* %406, i8** %408, align 8
  %409 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %410 = load i32, i32* @SCB_CONTROL, align 4
  %411 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %412 = load i32, i32* @SCB_CONTROL, align 4
  %413 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %411, i32 %412)
  %414 = load i32, i32* @STATUS_RCVD, align 4
  %415 = xor i32 %414, -1
  %416 = and i32 %413, %415
  %417 = call i32 @ahd_outb(%struct.ahd_softc* %409, i32 %410, i32 %416)
  br label %418

418:                                              ; preds = %390, %382
  br label %827

419:                                              ; preds = %68
  %420 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %421 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %420)
  br label %827

422:                                              ; preds = %68
  %423 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %424 = call i32 @ahd_reinitialize_dataptrs(%struct.ahd_softc* %423)
  br label %827

425:                                              ; preds = %68
  %426 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %427 = call i32 @ahd_fetch_devinfo(%struct.ahd_softc* %426, %struct.ahd_devinfo* %21)
  %428 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %429 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %428, i32 0, i32 2
  %430 = load i8*, i8** %429, align 8
  %431 = load i8*, i8** @MSG_TYPE_NONE, align 8
  %432 = icmp eq i8* %430, %431
  br i1 %432, label %433, label %478

433:                                              ; preds = %425
  %434 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %435 = load i32, i32* @SCSISIGI, align 4
  %436 = call i32 @ahd_inb(%struct.ahd_softc* %434, i32 %435)
  %437 = load i32, i32* @PHASE_MASK, align 4
  %438 = and i32 %436, %437
  store i32 %438, i32* %24, align 4
  %439 = load i32, i32* %24, align 4
  %440 = icmp ne i32 %439, 143
  br i1 %440, label %441, label %453

441:                                              ; preds = %433
  %442 = load i32, i32* %24, align 4
  %443 = icmp ne i32 %442, 142
  br i1 %443, label %444, label %453

444:                                              ; preds = %441
  %445 = load i32, i32* %24, align 4
  %446 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %445)
  %447 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %448 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %447)
  %449 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %450 = call i32 @ahd_clear_intstat(%struct.ahd_softc* %449)
  %451 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %452 = call i32 @ahd_restart(%struct.ahd_softc* %451)
  br label %830

453:                                              ; preds = %441, %433
  %454 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %455 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %454)
  store i32 %455, i32* %23, align 4
  %456 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %457 = load i32, i32* %23, align 4
  %458 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %456, i32 %457)
  store %struct.scb* %458, %struct.scb** %22, align 8
  %459 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %21, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @ROLE_INITIATOR, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %477

463:                                              ; preds = %453
  %464 = load i32, i32* %24, align 4
  %465 = icmp eq i32 %464, 142
  br i1 %465, label %466, label %470

466:                                              ; preds = %463
  %467 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %468 = load %struct.scb*, %struct.scb** %22, align 8
  %469 = call i32 @ahd_setup_initiator_msgout(%struct.ahd_softc* %467, %struct.ahd_devinfo* %21, %struct.scb* %468)
  br label %476

470:                                              ; preds = %463
  %471 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGIN, align 8
  %472 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %473 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %472, i32 0, i32 2
  store i8* %471, i8** %473, align 8
  %474 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %475 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %474, i32 0, i32 5
  store i32 0, i32* %475, align 8
  br label %476

476:                                              ; preds = %470, %466
  br label %477

477:                                              ; preds = %476, %453
  br label %478

478:                                              ; preds = %477, %425
  %479 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %480 = call i32 @ahd_handle_message_phase(%struct.ahd_softc* %479)
  br label %827

481:                                              ; preds = %68
  %482 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %483 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %484 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %485 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %482, i32 %483, i32 %484)
  %486 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %487 = load i32, i32* @SCSISEQ0, align 4
  %488 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %489 = load i32, i32* @SCSISEQ0, align 4
  %490 = call i32 @ahd_inb(%struct.ahd_softc* %488, i32 %489)
  %491 = load i32, i32* @ENSELO, align 4
  %492 = xor i32 %491, -1
  %493 = and i32 %490, %492
  %494 = call i32 @ahd_outb(%struct.ahd_softc* %486, i32 %487, i32 %493)
  %495 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %496 = call i32 @ahd_name(%struct.ahd_softc* %495)
  %497 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %498 = load i32, i32* @SELID, align 4
  %499 = call i32 @ahd_inb(%struct.ahd_softc* %497, i32 %498)
  %500 = ashr i32 %499, 4
  %501 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0), i32 %496, i32 65, i32 %500)
  %502 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %503 = load i32, i32* @SAVED_SCSIID, align 4
  %504 = call i32 @ahd_inb(%struct.ahd_softc* %502, i32 %503)
  %505 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %506 = load i32, i32* @SAVED_LUN, align 4
  %507 = call i32 @ahd_inb(%struct.ahd_softc* %505, i32 %506)
  %508 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %509 = load i32, i32* @REG0, align 4
  %510 = call i32 @ahd_inw(%struct.ahd_softc* %508, i32 %509)
  %511 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %512 = load i32, i32* @ACCUM, align 4
  %513 = call i32 @ahd_inb(%struct.ahd_softc* %511, i32 %512)
  %514 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), i32 %504, i32 %507, i32 %510, i32 %513)
  %515 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %516 = load i32, i32* @SEQ_FLAGS, align 4
  %517 = call i32 @ahd_inb(%struct.ahd_softc* %515, i32 %516)
  %518 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %519 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %518)
  %520 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %521 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %522 = load i32, i32* @SAVED_SCSIID, align 4
  %523 = call i32 @ahd_inb(%struct.ahd_softc* %521, i32 %522)
  %524 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %525 = load i32, i32* @SAVED_LUN, align 4
  %526 = call i32 @ahd_inb(%struct.ahd_softc* %524, i32 %525)
  %527 = call i32 @BUILD_TCL(i32 %523, i32 %526)
  %528 = call i32 @ahd_find_busy_tcl(%struct.ahd_softc* %520, i32 %527)
  %529 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %530 = load i32, i32* @SINDEX, align 4
  %531 = call i32 @ahd_inw(%struct.ahd_softc* %529, i32 %530)
  %532 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i32 %517, i32 %519, i32 %528, i32 %531)
  %533 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %534 = load i32, i32* @SELID, align 4
  %535 = call i32 @ahd_inb(%struct.ahd_softc* %533, i32 %534)
  %536 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %537 = load i32, i32* @SCB_SCSIID, align 4
  %538 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %536, i32 %537)
  %539 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %540 = load i32, i32* @SCB_LUN, align 4
  %541 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %539, i32 %540)
  %542 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %543 = load i32, i32* @SCB_CONTROL, align 4
  %544 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %542, i32 %543)
  %545 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i32 %535, i32 %538, i32 %541, i32 %544)
  %546 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %547 = load i32, i32* @SCSIBUS, align 4
  %548 = call i32 @ahd_inb(%struct.ahd_softc* %546, i32 %547)
  %549 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %550 = load i32, i32* @SCSISIGI, align 4
  %551 = call i32 @ahd_inb(%struct.ahd_softc* %549, i32 %550)
  %552 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %548, i32 %551)
  %553 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %554 = load i32, i32* @SXFRCTL0, align 4
  %555 = call i32 @ahd_inb(%struct.ahd_softc* %553, i32 %554)
  %556 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %555)
  %557 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %558 = load i32, i32* @SEQCTL0, align 4
  %559 = call i32 @ahd_inb(%struct.ahd_softc* %557, i32 %558)
  %560 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %559)
  %561 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %562 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %561)
  %563 = load i32, i32* @MSG_BUS_DEV_RESET, align 4
  %564 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %565 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %564, i32 0, i32 4
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 0
  store i32 %563, i32* %567, align 4
  %568 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %569 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %568, i32 0, i32 1
  store i32 1, i32* %569, align 4
  %570 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %571 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %570, i32 0, i32 3
  store i32 0, i32* %571, align 8
  %572 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGOUT, align 8
  %573 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %574 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %573, i32 0, i32 2
  store i8* %572, i8** %574, align 8
  %575 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %576 = load i32, i32* @MSG_OUT, align 4
  %577 = load i32, i32* @HOST_MSG, align 4
  %578 = call i32 @ahd_outb(%struct.ahd_softc* %575, i32 %576, i32 %577)
  %579 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %580 = call i32 @ahd_assert_atn(%struct.ahd_softc* %579)
  br label %827

581:                                              ; preds = %68
  %582 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %583 = call i32 @ahd_handle_proto_violation(%struct.ahd_softc* %582)
  br label %827

584:                                              ; preds = %68
  %585 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %586 = call i32 @ahd_fetch_devinfo(%struct.ahd_softc* %585, %struct.ahd_devinfo* %25)
  %587 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %588 = call i32 @ahd_handle_ign_wide_residue(%struct.ahd_softc* %587, %struct.ahd_devinfo* %25)
  br label %827

589:                                              ; preds = %68
  %590 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %591 = load i32, i32* @LASTPHASE, align 4
  %592 = call i32 @ahd_inb(%struct.ahd_softc* %590, i32 %591)
  store i32 %592, i32* %26, align 4
  %593 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %594 = call i32 @ahd_name(%struct.ahd_softc* %593)
  %595 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %596 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %597 = load i32, i32* @SAVED_SCSIID, align 4
  %598 = call i32 @ahd_inb(%struct.ahd_softc* %596, i32 %597)
  %599 = call i32 @SCSIID_TARGET(%struct.ahd_softc* %595, i32 %598)
  %600 = load i32, i32* %26, align 4
  %601 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %602 = load i32, i32* @SCSISIGI, align 4
  %603 = call i32 @ahd_inb(%struct.ahd_softc* %601, i32 %602)
  %604 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.16, i64 0, i64 0), i32 %594, i32 65, i32 %599, i32 %600, i32 %603)
  br label %827

605:                                              ; preds = %68
  %606 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %607 = load i32, i32* @LASTPHASE, align 4
  %608 = call i32 @ahd_inb(%struct.ahd_softc* %606, i32 %607)
  store i32 %608, i32* %27, align 4
  %609 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %610 = call i32 @ahd_name(%struct.ahd_softc* %609)
  %611 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %612 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %613 = load i32, i32* @SAVED_SCSIID, align 4
  %614 = call i32 @ahd_inb(%struct.ahd_softc* %612, i32 %613)
  %615 = call i32 @SCSIID_TARGET(%struct.ahd_softc* %611, i32 %614)
  %616 = load i32, i32* %27, align 4
  %617 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %618 = load i32, i32* @SCSISIGI, align 4
  %619 = call i32 @ahd_inb(%struct.ahd_softc* %617, i32 %618)
  %620 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i32 %610, i32 65, i32 %615, i32 %616, i32 %619)
  %621 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %622 = call i32 @ahd_restart(%struct.ahd_softc* %621)
  br label %830

623:                                              ; preds = %68
  %624 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %625 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %624)
  store i32 %625, i32* %29, align 4
  %626 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %627 = load i32, i32* %29, align 4
  %628 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %626, i32 %627)
  store %struct.scb* %628, %struct.scb** %28, align 8
  %629 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %630 = load %struct.scb*, %struct.scb** %28, align 8
  %631 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %629, %struct.scb* %630)
  %632 = load %struct.scb*, %struct.scb** %28, align 8
  %633 = load i32, i32* @CAM_DATA_RUN_ERR, align 4
  %634 = call i32 @ahd_set_transaction_status(%struct.scb* %632, i32 %633)
  %635 = load %struct.scb*, %struct.scb** %28, align 8
  %636 = call i32 @ahd_freeze_scb(%struct.scb* %635)
  br label %827

637:                                              ; preds = %68
  %638 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %639 = call i32 @ahd_fetch_devinfo(%struct.ahd_softc* %638, %struct.ahd_devinfo* %30)
  %640 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %641 = call i32 @ahd_name(%struct.ahd_softc* %640)
  %642 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %30, i32 0, i32 2
  %643 = load i32, i32* %642, align 4
  %644 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %30, i32 0, i32 1
  %645 = load i32, i32* %644, align 4
  %646 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %30, i32 0, i32 0
  %647 = load i32, i32* %646, align 4
  %648 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %641, i32 %643, i32 %645, i32 %647)
  %649 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %650 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %649)
  store i32 %650, i32* %32, align 4
  %651 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %652 = load i32, i32* %32, align 4
  %653 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %651, i32 %652)
  store %struct.scb* %653, %struct.scb** %31, align 8
  %654 = load %struct.scb*, %struct.scb** %31, align 8
  %655 = icmp ne %struct.scb* %654, null
  br i1 %655, label %656, label %678

656:                                              ; preds = %637
  %657 = load %struct.scb*, %struct.scb** %31, align 8
  %658 = getelementptr inbounds %struct.scb, %struct.scb* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = load i32, i32* @SCB_RECOVERY_SCB, align 4
  %661 = and i32 %659, %660
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %678

663:                                              ; preds = %656
  %664 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %665 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %666 = load %struct.scb*, %struct.scb** %31, align 8
  %667 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %665, %struct.scb* %666)
  %668 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %669 = load %struct.scb*, %struct.scb** %31, align 8
  %670 = call i32 @SCB_GET_CHANNEL(%struct.ahd_softc* %668, %struct.scb* %669)
  %671 = load %struct.scb*, %struct.scb** %31, align 8
  %672 = call i32 @SCB_GET_LUN(%struct.scb* %671)
  %673 = load %struct.scb*, %struct.scb** %31, align 8
  %674 = call i32 @SCB_GET_TAG(%struct.scb* %673)
  %675 = load i32, i32* @ROLE_INITIATOR, align 4
  %676 = load i32, i32* @SEARCH_REMOVE, align 4
  %677 = call i32 @ahd_search_qinfifo(%struct.ahd_softc* %664, i32 %667, i32 %670, i32 %672, i32 %674, i32 %675, i32 0, i32 %676)
  br label %678

678:                                              ; preds = %663, %656, %637
  %679 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %680 = load i32, i32* @SCB_CONTROL, align 4
  %681 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %682 = load i32, i32* @SCB_CONTROL, align 4
  %683 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %681, i32 %682)
  %684 = load i32, i32* @MK_MESSAGE, align 4
  %685 = xor i32 %684, -1
  %686 = and i32 %683, %685
  %687 = call i32 @ahd_outb(%struct.ahd_softc* %679, i32 %680, i32 %686)
  br label %827

688:                                              ; preds = %68
  %689 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %690 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %689)
  store i32 %690, i32* %33, align 4
  %691 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %692 = load i32, i32* %33, align 4
  %693 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %691, i32 %692)
  store %struct.scb* %693, %struct.scb** %34, align 8
  %694 = load %struct.scb*, %struct.scb** %34, align 8
  %695 = icmp ne %struct.scb* %694, null
  br i1 %695, label %696, label %755

696:                                              ; preds = %688
  %697 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %698 = load %struct.scb*, %struct.scb** %34, align 8
  %699 = call i32 @ahd_print_path(%struct.ahd_softc* %697, %struct.scb* %698)
  %700 = load %struct.scb*, %struct.scb** %34, align 8
  %701 = getelementptr inbounds %struct.scb, %struct.scb* %700, i32 0, i32 1
  %702 = load %struct.TYPE_3__*, %struct.TYPE_3__** %701, align 8
  %703 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %702, i32 0, i32 3
  %704 = load i32, i32* %703, align 4
  %705 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i32 %704)
  %706 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  store i32 %706, i32* %35, align 4
  %707 = load i32, i32* @SCB_LIST_NULL, align 4
  store i32 %707, i32* %36, align 4
  %708 = load %struct.scb*, %struct.scb** %34, align 8
  %709 = getelementptr inbounds %struct.scb, %struct.scb* %708, i32 0, i32 1
  %710 = load %struct.TYPE_3__*, %struct.TYPE_3__** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %710, i32 0, i32 3
  %712 = load i32, i32* %711, align 4
  switch i32 %712, label %752 [
    i32 139, label %713
    i32 138, label %716
    i32 137, label %716
    i32 136, label %732
    i32 135, label %738
  ]

713:                                              ; preds = %696
  %714 = load %struct.scb*, %struct.scb** %34, align 8
  %715 = call i32 @SCB_GET_TAG(%struct.scb* %714)
  store i32 %715, i32* %36, align 4
  br label %716

716:                                              ; preds = %696, %696, %713
  %717 = load %struct.scb*, %struct.scb** %34, align 8
  %718 = getelementptr inbounds %struct.scb, %struct.scb* %717, i32 0, i32 1
  %719 = load %struct.TYPE_3__*, %struct.TYPE_3__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %719, i32 0, i32 1
  %721 = load i32, i32* %720, align 4
  store i32 %721, i32* %35, align 4
  %722 = load i32, i32* @CAM_REQ_ABORTED, align 4
  store i32 %722, i32* %37, align 4
  %723 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %724 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %725 = load %struct.scb*, %struct.scb** %34, align 8
  %726 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %724, %struct.scb* %725)
  %727 = load i32, i32* %35, align 4
  %728 = load i32, i32* %36, align 4
  %729 = load i32, i32* @ROLE_INITIATOR, align 4
  %730 = load i32, i32* %37, align 4
  %731 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %723, i32 %726, i8 signext 65, i32 %727, i32 %728, i32 %729, i32 %730)
  br label %754

732:                                              ; preds = %696
  %733 = load %struct.scb*, %struct.scb** %34, align 8
  %734 = getelementptr inbounds %struct.scb, %struct.scb* %733, i32 0, i32 1
  %735 = load %struct.TYPE_3__*, %struct.TYPE_3__** %734, align 8
  %736 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 4
  store i32 %737, i32* %35, align 4
  br label %738

738:                                              ; preds = %696, %732
  %739 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %740 = load %struct.scb*, %struct.scb** %34, align 8
  %741 = call i32 @ahd_scb_devinfo(%struct.ahd_softc* %739, %struct.ahd_devinfo* %38, %struct.scb* %740)
  %742 = load i32, i32* @CAM_BDR_SENT, align 4
  store i32 %742, i32* %37, align 4
  %743 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %744 = load i32, i32* %35, align 4
  %745 = load i32, i32* @CAM_BDR_SENT, align 4
  %746 = load i32, i32* %35, align 4
  %747 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %748 = icmp ne i32 %746, %747
  %749 = zext i1 %748 to i64
  %750 = select i1 %748, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)
  %751 = call i32 @ahd_handle_devreset(%struct.ahd_softc* %743, %struct.ahd_devinfo* %38, i32 %744, i32 %745, i8* %750, i32 0)
  br label %754

752:                                              ; preds = %696
  %753 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  br label %754

754:                                              ; preds = %752, %738, %716
  br label %755

755:                                              ; preds = %754, %688
  br label %827

756:                                              ; preds = %68
  %757 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %758 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %757)
  store i32 %758, i32* %39, align 4
  %759 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %760 = load i32, i32* %39, align 4
  %761 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %759, i32 %760)
  store %struct.scb* %761, %struct.scb** %40, align 8
  %762 = load %struct.scb*, %struct.scb** %40, align 8
  %763 = icmp ne %struct.scb* %762, null
  br i1 %763, label %764, label %811

764:                                              ; preds = %756
  %765 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %766 = load %struct.scb*, %struct.scb** %40, align 8
  %767 = call i32 @ahd_print_path(%struct.ahd_softc* %765, %struct.scb* %766)
  %768 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  br label %769

769:                                              ; preds = %792, %764
  %770 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %771 = load i32, i32* @SCSISEQ0, align 4
  %772 = call i32 @ahd_inb(%struct.ahd_softc* %770, i32 %771)
  %773 = load i32, i32* @ENSELO, align 4
  %774 = and i32 %772, %773
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %790

776:                                              ; preds = %769
  %777 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %778 = load i32, i32* @SSTAT0, align 4
  %779 = call i32 @ahd_inb(%struct.ahd_softc* %777, i32 %778)
  %780 = load i32, i32* @SELDO, align 4
  %781 = and i32 %779, %780
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %790

783:                                              ; preds = %776
  %784 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %785 = load i32, i32* @SSTAT1, align 4
  %786 = call i32 @ahd_inb(%struct.ahd_softc* %784, i32 %785)
  %787 = load i32, i32* @SELTO, align 4
  %788 = and i32 %786, %787
  %789 = icmp eq i32 %788, 0
  br label %790

790:                                              ; preds = %783, %776, %769
  %791 = phi i1 [ false, %776 ], [ false, %769 ], [ %789, %783 ]
  br i1 %791, label %792, label %793

792:                                              ; preds = %790
  br label %769

793:                                              ; preds = %790
  %794 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %795 = load i32, i32* @SCB_TASK_MANAGEMENT, align 4
  %796 = call i32 @ahd_outb(%struct.ahd_softc* %794, i32 %795, i32 0)
  %797 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %798 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %799 = load %struct.scb*, %struct.scb** %40, align 8
  %800 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %798, %struct.scb* %799)
  %801 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %802 = load %struct.scb*, %struct.scb** %40, align 8
  %803 = call i32 @SCB_GET_CHANNEL(%struct.ahd_softc* %801, %struct.scb* %802)
  %804 = load %struct.scb*, %struct.scb** %40, align 8
  %805 = call i32 @SCB_GET_LUN(%struct.scb* %804)
  %806 = load %struct.scb*, %struct.scb** %40, align 8
  %807 = call i32 @SCB_GET_TAG(%struct.scb* %806)
  %808 = load i32, i32* @ROLE_INITIATOR, align 4
  %809 = load i32, i32* @SEARCH_REMOVE, align 4
  %810 = call i32 @ahd_search_qinfifo(%struct.ahd_softc* %797, i32 %800, i32 %803, i32 %805, i32 %807, i32 %808, i32 0, i32 %809)
  br label %811

811:                                              ; preds = %793, %756
  br label %827

812:                                              ; preds = %68, %68, %68, %68
  %813 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %814 = call i32 @ahd_name(%struct.ahd_softc* %813)
  %815 = load i32, i32* %5, align 4
  %816 = sub nsw i32 %815, 131
  %817 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %814, i32 %816)
  br label %827

818:                                              ; preds = %68
  br label %827

819:                                              ; preds = %68
  %820 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %821 = call i32 @ahd_handle_hwerrint(%struct.ahd_softc* %820)
  br label %827

822:                                              ; preds = %68
  %823 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %824 = call i32 @ahd_name(%struct.ahd_softc* %823)
  %825 = load i32, i32* %5, align 4
  %826 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i32 %824, i32 %825)
  br label %827

827:                                              ; preds = %822, %819, %818, %812, %811, %755, %678, %623, %589, %584, %581, %481, %478, %422, %419, %418, %381, %172, %150, %127, %126
  %828 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %829 = call i32 @ahd_unpause(%struct.ahd_softc* %828)
  br label %830

830:                                              ; preds = %827, %605, %444
  ret void
}

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_update_modes(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahd_outq(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_OUR_ID(%struct.scb*) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @SCB_GET_CHANNEL(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_assert_atn(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_freeze_scb(%struct.scb*) #1

declare dso_local i32 @ahd_send_async(%struct.ahd_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_reinitialize_dataptrs(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_fetch_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @ahd_clear_intstat(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_restart(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_setup_initiator_msgout(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.scb*) #1

declare dso_local i32 @ahd_handle_message_phase(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_find_busy_tcl(%struct.ahd_softc*, i32) #1

declare dso_local i32 @BUILD_TCL(i32, i32) #1

declare dso_local i32 @ahd_handle_proto_violation(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_ign_wide_residue(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @SCSIID_TARGET(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_search_qinfifo(%struct.ahd_softc*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_abort_scbs(%struct.ahd_softc*, i32, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_scb_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.scb*) #1

declare dso_local i32 @ahd_handle_devreset(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i8*, i32) #1

declare dso_local i32 @ahd_handle_hwerrint(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
