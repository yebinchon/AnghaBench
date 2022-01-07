; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nspintr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nspintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, i32*, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8, i8 }
%struct.TYPE_15__ = type { i32, i64, i64, i32, i32*, %struct.TYPE_11__*, %struct.scsi_cmnd* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@NSP_DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"host data wrong\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQCONTROL = common dso_local global i32 0, align 4
@IRQCONTROL_IRQDISABLE = common dso_local global i32 0, align 4
@IRQSTATUS = common dso_local global i32 0, align 4
@IRQSTATUS_MASK = common dso_local global i8 0, align 1
@SCSIBUSMON = common dso_local global i32 0, align 4
@IRQSTATUS_SCSI = common dso_local global i8 0, align 1
@IRQPHASESENCE = common dso_local global i32 0, align 4
@TIMERCOUNT = common dso_local global i32 0, align 4
@IRQSTATUS_TIMER = common dso_local global i8 0, align 1
@IRQCONTROL_TIMER_CLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQCONTROL_FIFO_CLEAR = common dso_local global i32 0, align 4
@SCSI_RESET_IRQ = common dso_local global i8 0, align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bus reset (power off?)\00", align 1
@DID_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [97 x i8] c"CurrentSC==NULL irq_status=0x%x phase=0x%x irq_phase=0x%x this can't be happen. reset everything\00", align 1
@RESELECT_IRQ = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"reselect\00", align 1
@IRQCONTROL_RESELECT_CLEAR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PHASE_CHANGE_IRQ = common dso_local global i8 0, align 1
@LATCHED_BUS_FREE = common dso_local global i8 0, align 1
@BUSMON_BSY = common dso_local global i8 0, align 1
@NSP_SELTIMEOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"selection time out\00", align 1
@SCSIBUSCTRL = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@PH_SELECTED = common dso_local global i32 0, align 4
@SCSI_ATN = common dso_local global i32 0, align 4
@AUTODIRECTION = common dso_local global i32 0, align 4
@ACKENB = common dso_local global i32 0, align 4
@BUSMON_PHASE_MASK = common dso_local global i8 0, align 1
@DID_ABORT = common dso_local global i32 0, align 4
@IRQSTATUS_FIFO = common dso_local global i8 0, align 1
@PH_MSG_IN = common dso_local global i32 0, align 4
@PH_MSG_OUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"normal disconnect irq_status=0x%x, phase=0x%x, irq_phase=0x%x\00", align 1
@MSG_COMMAND_COMPLETE = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"command complete result=0x%x\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [65 x i8] c"unexpected bus free. irq_status=0x%x, phase=0x%x, irq_phase=0x%x\00", align 1
@SYNC_NG = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"BUSPHASE_COMMAND\00", align 1
@BUSMON_REQ = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"REQ == 0\00", align 1
@PH_COMMAND = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"cmd_len=%d\00", align 1
@COMMANDCTRL = common dso_local global i32 0, align 4
@CLEAR_COMMAND_POINTER = common dso_local global i32 0, align 4
@COMMANDDATA = common dso_local global i32 0, align 4
@AUTO_COMMAND_GO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"BUSPHASE_DATA_OUT\00", align 1
@PH_DATA = common dso_local global i8* null, align 8
@IO_OUT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"BUSPHASE_DATA_IN\00", align 1
@IO_IN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"BUSPHASE_STATUS\00", align 1
@PH_STATUS = common dso_local global i32 0, align 4
@SCSIDATAWITHACK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"message=0x%x status=0x%x\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"BUSPHASE_MESSAGE_OUT\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SYNC_NOT_YET = common dso_local global i32 0, align 4
@MSG_EXTENDED = common dso_local global i32 0, align 4
@MSG_EXT_SDTR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"BUSPHASE_MESSAGE_IN\00", align 1
@SYNC_OK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"message=0x%x len=%d\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"BUSPHASE other\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nspintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nspintr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_14__*
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %17, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %16, align 8
  br label %39

35:                                               ; preds = %20, %2
  %36 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %37 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %811

39:                                               ; preds = %26
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @IRQCONTROL, align 4
  %45 = load i32, i32* @IRQCONTROL_IRQDISABLE, align 4
  %46 = call i32 @nsp_write(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @IRQSTATUS, align 4
  %49 = call zeroext i8 @nsp_read(i32 %47, i32 %48)
  store i8 %49, i8* %7, align 1
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %60, label %53

53:                                               ; preds = %39
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @IRQSTATUS_MASK, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53, %39
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @IRQCONTROL, align 4
  %63 = call i32 @nsp_write(i32 %61, i32 %62, i32 0)
  %64 = load i32, i32* @IRQ_NONE, align 4
  store i32 %64, i32* %3, align 4
  br label %811

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SCSIBUSMON, align 4
  %68 = call i8* @nsp_index_read(i32 %66, i32 %67)
  %69 = ptrtoint i8* %68 to i8
  store i8 %69, i8* %9, align 1
  %70 = load i8, i8* %7, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @IRQSTATUS_SCSI, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @IRQPHASESENCE, align 4
  %79 = call i8* @nsp_index_read(i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i8
  store i8 %80, i8* %8, align 1
  br label %82

81:                                               ; preds = %65
  store i8 0, i8* %8, align 1
  br label %82

82:                                               ; preds = %81, %76
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @TIMERCOUNT, align 4
  %90 = call i32 @nsp_index_write(i32 %88, i32 %89, i32 0)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @TIMERCOUNT, align 4
  %93 = call i32 @nsp_index_write(i32 %91, i32 %92, i32 0)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %87, %82
  %97 = load i8, i8* %7, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @IRQSTATUS_MASK, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %98, %100
  %102 = load i8, i8* @IRQSTATUS_TIMER, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @IRQCONTROL, align 4
  %113 = load i32, i32* @IRQCONTROL_TIMER_CLEAR, align 4
  %114 = call i32 @nsp_write(i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %3, align 4
  br label %811

116:                                              ; preds = %105, %96
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @IRQCONTROL, align 4
  %119 = load i32, i32* @IRQCONTROL_TIMER_CLEAR, align 4
  %120 = load i32, i32* @IRQCONTROL_FIFO_CLEAR, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @nsp_write(i32 %117, i32 %118, i32 %121)
  %123 = load i8, i8* %7, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @IRQSTATUS_SCSI, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %173

129:                                              ; preds = %116
  %130 = load i8, i8* %8, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* @SCSI_RESET_IRQ, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %173

136:                                              ; preds = %129
  %137 = load i32, i32* @KERN_ERR, align 4
  %138 = call i32 (i32, i8*, ...) @nsp_msg(i32 %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %140 = call i32 @nsphw_init(%struct.TYPE_15__* %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %142 = call i32 @nsp_bus_reset(%struct.TYPE_15__* %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 6
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %144, align 8
  %146 = icmp ne %struct.scsi_cmnd* %145, null
  br i1 %146, label %147, label %171

147:                                              ; preds = %136
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 6
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %149, align 8
  store %struct.scsi_cmnd* %150, %struct.scsi_cmnd** %10, align 8
  %151 = load i32, i32* @DID_RESET, align 4
  %152 = shl i32 %151, 16
  %153 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %154 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 255
  %158 = shl i32 %157, 8
  %159 = or i32 %152, %158
  %160 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %161 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 255
  %165 = shl i32 %164, 0
  %166 = or i32 %159, %165
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %168 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %170 = call i32 @nsp_scsi_done(%struct.scsi_cmnd* %169)
  br label %171

171:                                              ; preds = %147, %136
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %172, i32* %3, align 4
  br label %811

173:                                              ; preds = %129, %116
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 6
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %175, align 8
  %177 = icmp eq %struct.scsi_cmnd* %176, null
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = load i32, i32* @KERN_ERR, align 4
  %180 = load i8, i8* %7, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* %9, align 1
  %183 = zext i8 %182 to i32
  %184 = load i8, i8* %8, align 1
  %185 = zext i8 %184 to i32
  %186 = call i32 (i32, i8*, ...) @nsp_msg(i32 %179, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %183, i32 %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %188 = call i32 @nsphw_init(%struct.TYPE_15__* %187)
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %190 = call i32 @nsp_bus_reset(%struct.TYPE_15__* %189)
  %191 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %191, i32* %3, align 4
  br label %811

192:                                              ; preds = %173
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 6
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %194, align 8
  store %struct.scsi_cmnd* %195, %struct.scsi_cmnd** %10, align 8
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %197 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %196, i32 0, i32 4
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i8, i8* %199, align 1
  store i8 %200, i8* %11, align 1
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %202 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %201, i32 0, i32 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i8, i8* %204, align 1
  store i8 %205, i8* %12, align 1
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = load i8, i8* %11, align 1
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  store i32* %212, i32** %13, align 8
  %213 = load i8, i8* %7, align 1
  %214 = zext i8 %213 to i32
  %215 = load i8, i8* @IRQSTATUS_SCSI, align 1
  %216 = zext i8 %215 to i32
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %253

219:                                              ; preds = %192
  %220 = load i8, i8* %8, align 1
  %221 = zext i8 %220 to i32
  %222 = load i8, i8* @RESELECT_IRQ, align 1
  %223 = zext i8 %222 to i32
  %224 = and i32 %221, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %219
  %227 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %228 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @IRQCONTROL, align 4
  %231 = load i32, i32* @IRQCONTROL_RESELECT_CLEAR, align 4
  %232 = call i32 @nsp_write(i32 %229, i32 %230, i32 %231)
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %234 = call i64 @nsp_reselected(%struct.scsi_cmnd* %233)
  %235 = load i64, i64* @FALSE, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %226
  %238 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %238, i32* %3, align 4
  br label %811

239:                                              ; preds = %226
  br label %240

240:                                              ; preds = %239, %219
  %241 = load i8, i8* %8, align 1
  %242 = zext i8 %241 to i32
  %243 = load i8, i8* @PHASE_CHANGE_IRQ, align 1
  %244 = zext i8 %243 to i32
  %245 = load i8, i8* @LATCHED_BUS_FREE, align 1
  %246 = zext i8 %245 to i32
  %247 = or i32 %244, %246
  %248 = and i32 %242, %247
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %240
  %251 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %251, i32* %3, align 4
  br label %811

252:                                              ; preds = %240
  br label %253

253:                                              ; preds = %252, %192
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %255 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  switch i32 %257, label %331 [
    i32 128, label %258
    i32 129, label %315
  ]

258:                                              ; preds = %253
  %259 = load i8, i8* %9, align 1
  %260 = zext i8 %259 to i32
  %261 = load i8, i8* @BUSMON_BSY, align 1
  %262 = zext i8 %261 to i32
  %263 = and i32 %260, %262
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %294

265:                                              ; preds = %258
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @NSP_SELTIMEOUT, align 8
  %270 = icmp sge i64 %268, %269
  br i1 %270, label %271, label %286

271:                                              ; preds = %265
  %272 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %273 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 2
  store i64 0, i64* %275, align 8
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* @SCSIBUSCTRL, align 4
  %278 = call i32 @nsp_index_write(i32 %276, i32 %277, i32 0)
  %279 = load i32, i32* @DID_TIME_OUT, align 4
  %280 = shl i32 %279, 16
  %281 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %282 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %284 = call i32 @nsp_scsi_done(%struct.scsi_cmnd* %283)
  %285 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %285, i32* %3, align 4
  br label %811

286:                                              ; preds = %265
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %288, align 8
  %291 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %292 = call i32 @nsp_start_timer(%struct.scsi_cmnd* %291, i32 19)
  %293 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %293, i32* %3, align 4
  br label %811

294:                                              ; preds = %258
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 2
  store i64 0, i64* %296, align 8
  %297 = load i32, i32* @PH_SELECTED, align 4
  %298 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %299 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 2
  store i32 %297, i32* %300, align 8
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* @SCSIBUSCTRL, align 4
  %303 = load i32, i32* @SCSI_ATN, align 4
  %304 = call i32 @nsp_index_write(i32 %301, i32 %302, i32 %303)
  %305 = call i32 @udelay(i32 1)
  %306 = load i32, i32* %6, align 4
  %307 = load i32, i32* @SCSIBUSCTRL, align 4
  %308 = load i32, i32* @SCSI_ATN, align 4
  %309 = load i32, i32* @AUTODIRECTION, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @ACKENB, align 4
  %312 = or i32 %310, %311
  %313 = call i32 @nsp_index_write(i32 %306, i32 %307, i32 %312)
  %314 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %314, i32* %3, align 4
  br label %811

315:                                              ; preds = %253
  %316 = load i8, i8* %9, align 1
  %317 = zext i8 %316 to i32
  %318 = load i8, i8* @BUSMON_PHASE_MASK, align 1
  %319 = zext i8 %318 to i32
  %320 = and i32 %317, %319
  %321 = icmp ne i32 %320, 133
  br i1 %321, label %322, label %330

322:                                              ; preds = %315
  %323 = load i32, i32* @DID_ABORT, align 4
  %324 = shl i32 %323, 16
  %325 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %326 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  %327 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %328 = call i32 @nsp_scsi_done(%struct.scsi_cmnd* %327)
  %329 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %329, i32* %3, align 4
  br label %811

330:                                              ; preds = %315
  br label %331

331:                                              ; preds = %253, %330
  %332 = load i8, i8* %7, align 1
  %333 = zext i8 %332 to i32
  %334 = load i8, i8* @IRQSTATUS_SCSI, align 1
  %335 = zext i8 %334 to i32
  %336 = load i8, i8* @IRQSTATUS_FIFO, align 1
  %337 = zext i8 %336 to i32
  %338 = or i32 %335, %337
  %339 = and i32 %333, %338
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %331
  %342 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %342, i32* %3, align 4
  br label %811

343:                                              ; preds = %331
  br label %344

344:                                              ; preds = %343
  %345 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %346 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @PH_MSG_IN, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %358, label %351

351:                                              ; preds = %344
  %352 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %353 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @PH_MSG_OUT, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %410

358:                                              ; preds = %351, %344
  %359 = load i8, i8* %8, align 1
  %360 = zext i8 %359 to i32
  %361 = load i8, i8* @LATCHED_BUS_FREE, align 1
  %362 = zext i8 %361 to i32
  %363 = and i32 %360, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %410

365:                                              ; preds = %358
  %366 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %367 = load i8, i8* %7, align 1
  %368 = zext i8 %367 to i32
  %369 = load i8, i8* %9, align 1
  %370 = zext i8 %369 to i32
  %371 = load i8, i8* %8, align 1
  %372 = zext i8 %371 to i32
  %373 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %366, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %368, i32 %370, i32 %372)
  %374 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %375 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = load i64, i64* @MSG_COMMAND_COMPLETE, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %408

381:                                              ; preds = %365
  %382 = load i32, i32* @DID_OK, align 4
  %383 = shl i32 %382, 16
  %384 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %385 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = and i32 %387, 255
  %389 = shl i32 %388, 8
  %390 = or i32 %383, %389
  %391 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %392 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, 255
  %396 = shl i32 %395, 0
  %397 = or i32 %390, %396
  %398 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %399 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %398, i32 0, i32 0
  store i32 %397, i32* %399, align 8
  %400 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %401 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %402 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %400, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %403)
  %405 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %406 = call i32 @nsp_scsi_done(%struct.scsi_cmnd* %405)
  %407 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %407, i32* %3, align 4
  br label %811

408:                                              ; preds = %365
  %409 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %409, i32* %3, align 4
  br label %811

410:                                              ; preds = %358, %351
  %411 = load i8, i8* %9, align 1
  %412 = zext i8 %411 to i32
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %432

414:                                              ; preds = %410
  %415 = load i32, i32* @KERN_DEBUG, align 4
  %416 = load i8, i8* %7, align 1
  %417 = zext i8 %416 to i32
  %418 = load i8, i8* %9, align 1
  %419 = zext i8 %418 to i32
  %420 = load i8, i8* %8, align 1
  %421 = zext i8 %420 to i32
  %422 = call i32 (i32, i8*, ...) @nsp_msg(i32 %415, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %417, i32 %419, i32 %421)
  %423 = load i32, i32* @SYNC_NG, align 4
  %424 = load i32*, i32** %13, align 8
  store i32 %423, i32* %424, align 4
  %425 = load i32, i32* @DID_ERROR, align 4
  %426 = shl i32 %425, 16
  %427 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %428 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %427, i32 0, i32 0
  store i32 %426, i32* %428, align 8
  %429 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %430 = call i32 @nsp_scsi_done(%struct.scsi_cmnd* %429)
  %431 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %431, i32* %3, align 4
  br label %811

432:                                              ; preds = %410
  %433 = load i8, i8* %9, align 1
  %434 = zext i8 %433 to i32
  %435 = load i8, i8* @BUSMON_PHASE_MASK, align 1
  %436 = zext i8 %435 to i32
  %437 = and i32 %434, %436
  switch i32 %437, label %802 [
    i32 136, label %438
    i32 134, label %494
    i32 135, label %508
    i32 130, label %522
    i32 132, label %548
    i32 133, label %647
    i32 131, label %801
  ]

438:                                              ; preds = %432
  %439 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %440 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %439, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %441 = load i8, i8* %9, align 1
  %442 = zext i8 %441 to i32
  %443 = load i8, i8* @BUSMON_REQ, align 1
  %444 = zext i8 %443 to i32
  %445 = and i32 %442, %444
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %438
  %448 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %449 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %448, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %450 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %450, i32* %3, align 4
  br label %811

451:                                              ; preds = %438
  %452 = load i32, i32* @PH_COMMAND, align 4
  %453 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %454 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %453, i32 0, i32 3
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 2
  store i32 %452, i32* %455, align 8
  %456 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %457 = call i32 @nsp_nexus(%struct.scsi_cmnd* %456)
  %458 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %459 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %460 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %458, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %461)
  %463 = load i32, i32* %6, align 4
  %464 = load i32, i32* @COMMANDCTRL, align 4
  %465 = load i32, i32* @CLEAR_COMMAND_POINTER, align 4
  %466 = call i32 @nsp_index_write(i32 %463, i32 %464, i32 %465)
  store i32 0, i32* %14, align 4
  br label %467

467:                                              ; preds = %484, %451
  %468 = load i32, i32* %14, align 4
  %469 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %470 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = icmp slt i32 %468, %471
  br i1 %472, label %473, label %487

473:                                              ; preds = %467
  %474 = load i32, i32* %6, align 4
  %475 = load i32, i32* @COMMANDDATA, align 4
  %476 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %477 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %476, i32 0, i32 2
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %14, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @nsp_index_write(i32 %474, i32 %475, i32 %482)
  br label %484

484:                                              ; preds = %473
  %485 = load i32, i32* %14, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %14, align 4
  br label %467

487:                                              ; preds = %467
  %488 = load i32, i32* %6, align 4
  %489 = load i32, i32* @COMMANDCTRL, align 4
  %490 = load i32, i32* @CLEAR_COMMAND_POINTER, align 4
  %491 = load i32, i32* @AUTO_COMMAND_GO, align 4
  %492 = or i32 %490, %491
  %493 = call i32 @nsp_index_write(i32 %488, i32 %489, i32 %492)
  br label %805

494:                                              ; preds = %432
  %495 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %496 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %495, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %497 = load i8*, i8** @PH_DATA, align 8
  %498 = ptrtoint i8* %497 to i32
  %499 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %500 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %499, i32 0, i32 3
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i32 0, i32 2
  store i32 %498, i32* %501, align 8
  %502 = load i32, i32* @IO_OUT, align 4
  %503 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %504 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %503, i32 0, i32 3
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 3
  store i32 %502, i32* %505, align 4
  %506 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %507 = call i32 @nsp_pio_write(%struct.scsi_cmnd* %506)
  br label %805

508:                                              ; preds = %432
  %509 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %510 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %509, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %511 = load i8*, i8** @PH_DATA, align 8
  %512 = ptrtoint i8* %511 to i32
  %513 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %514 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %513, i32 0, i32 3
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i32 0, i32 2
  store i32 %512, i32* %515, align 8
  %516 = load i32, i32* @IO_IN, align 4
  %517 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %518 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %517, i32 0, i32 3
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 3
  store i32 %516, i32* %519, align 4
  %520 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %521 = call i32 @nsp_pio_read(%struct.scsi_cmnd* %520)
  br label %805

522:                                              ; preds = %432
  %523 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %524 = call i32 @nsp_dataphase_bypass(%struct.scsi_cmnd* %523)
  %525 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %526 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %525, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %527 = load i32, i32* @PH_STATUS, align 4
  %528 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %529 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %528, i32 0, i32 3
  %530 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i32 0, i32 2
  store i32 %527, i32* %530, align 8
  %531 = load i32, i32* %6, align 4
  %532 = load i32, i32* @SCSIDATAWITHACK, align 4
  %533 = call i8* @nsp_index_read(i32 %531, i32 %532)
  %534 = ptrtoint i8* %533 to i32
  %535 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %536 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %535, i32 0, i32 3
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %536, i32 0, i32 1
  store i32 %534, i32* %537, align 4
  %538 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %539 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %540 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %539, i32 0, i32 3
  %541 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %544 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %543, i32 0, i32 3
  %545 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %538, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %542, i32 %546)
  br label %805

548:                                              ; preds = %432
  %549 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %550 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %549, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %551 = load i8, i8* %9, align 1
  %552 = zext i8 %551 to i32
  %553 = load i8, i8* @BUSMON_REQ, align 1
  %554 = zext i8 %553 to i32
  %555 = and i32 %552, %554
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %558

557:                                              ; preds = %548
  br label %807

558:                                              ; preds = %548
  %559 = load i32, i32* @PH_MSG_OUT, align 4
  %560 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %561 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %560, i32 0, i32 3
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 2
  store i32 %559, i32* %562, align 8
  store i32 0, i32* %14, align 4
  %563 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %564 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %563, i32 0, i32 3
  store i32 0, i32* %564, align 8
  %565 = load i32, i32* @TRUE, align 4
  %566 = load i8, i8* %12, align 1
  %567 = call i32 @IDENTIFY(i32 %565, i8 zeroext %566)
  %568 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %569 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %568, i32 0, i32 4
  %570 = load i32*, i32** %569, align 8
  %571 = load i32, i32* %14, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32* %570, i64 %572
  store i32 %567, i32* %573, align 4
  %574 = load i32, i32* %14, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %14, align 4
  %576 = load i32*, i32** %13, align 8
  %577 = load i32, i32* %576, align 4
  %578 = load i32, i32* @SYNC_NOT_YET, align 4
  %579 = icmp eq i32 %577, %578
  br i1 %579, label %580, label %637

580:                                              ; preds = %558
  %581 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %582 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %581, i32 0, i32 5
  %583 = load %struct.TYPE_11__*, %struct.TYPE_11__** %582, align 8
  %584 = load i8, i8* %11, align 1
  %585 = zext i8 %584 to i64
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %583, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %586, i32 0, i32 1
  store i32 0, i32* %587, align 4
  %588 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %589 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %588, i32 0, i32 5
  %590 = load %struct.TYPE_11__*, %struct.TYPE_11__** %589, align 8
  %591 = load i8, i8* %11, align 1
  %592 = zext i8 %591 to i64
  %593 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i64 %592
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %593, i32 0, i32 2
  store i32 0, i32* %594, align 4
  %595 = load i32, i32* @MSG_EXTENDED, align 4
  %596 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %597 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %596, i32 0, i32 4
  %598 = load i32*, i32** %597, align 8
  %599 = load i32, i32* %14, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %598, i64 %600
  store i32 %595, i32* %601, align 4
  %602 = load i32, i32* %14, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %14, align 4
  %604 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %605 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %604, i32 0, i32 4
  %606 = load i32*, i32** %605, align 8
  %607 = load i32, i32* %14, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32, i32* %606, i64 %608
  store i32 3, i32* %609, align 4
  %610 = load i32, i32* %14, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %14, align 4
  %612 = load i32, i32* @MSG_EXT_SDTR, align 4
  %613 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %614 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %613, i32 0, i32 4
  %615 = load i32*, i32** %614, align 8
  %616 = load i32, i32* %14, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i32, i32* %615, i64 %617
  store i32 %612, i32* %618, align 4
  %619 = load i32, i32* %14, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %14, align 4
  %621 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %622 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %621, i32 0, i32 4
  %623 = load i32*, i32** %622, align 8
  %624 = load i32, i32* %14, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, i32* %623, i64 %625
  store i32 12, i32* %626, align 4
  %627 = load i32, i32* %14, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %14, align 4
  %629 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %630 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %629, i32 0, i32 4
  %631 = load i32*, i32** %630, align 8
  %632 = load i32, i32* %14, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i32, i32* %631, i64 %633
  store i32 15, i32* %634, align 4
  %635 = load i32, i32* %14, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %14, align 4
  br label %637

637:                                              ; preds = %580, %558
  %638 = load i32, i32* %14, align 4
  %639 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %640 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %639, i32 0, i32 3
  store i32 %638, i32* %640, align 8
  %641 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %642 = call i32 @nsp_analyze_sdtr(%struct.scsi_cmnd* %641)
  %643 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %644 = call i32 @show_message(%struct.TYPE_15__* %643)
  %645 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %646 = call i32 @nsp_message_out(%struct.scsi_cmnd* %645)
  br label %805

647:                                              ; preds = %432
  %648 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %649 = call i32 @nsp_dataphase_bypass(%struct.scsi_cmnd* %648)
  %650 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %651 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %650, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %652 = load i8, i8* %9, align 1
  %653 = zext i8 %652 to i32
  %654 = load i8, i8* @BUSMON_REQ, align 1
  %655 = zext i8 %654 to i32
  %656 = and i32 %653, %655
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %659

658:                                              ; preds = %647
  br label %807

659:                                              ; preds = %647
  %660 = load i32, i32* @PH_MSG_IN, align 4
  %661 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %662 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %661, i32 0, i32 3
  %663 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %662, i32 0, i32 2
  store i32 %660, i32* %663, align 8
  %664 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %665 = call i32 @nsp_message_in(%struct.scsi_cmnd* %664)
  %666 = load i32*, i32** %13, align 8
  %667 = load i32, i32* %666, align 4
  %668 = load i32, i32* @SYNC_NOT_YET, align 4
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %670, label %745

670:                                              ; preds = %659
  %671 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %672 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %671, i32 0, i32 3
  %673 = load i32, i32* %672, align 8
  %674 = icmp sge i32 %673, 5
  br i1 %674, label %675, label %725

675:                                              ; preds = %670
  %676 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %677 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %676, i32 0, i32 4
  %678 = load i32*, i32** %677, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 0
  %680 = load i32, i32* %679, align 4
  %681 = load i32, i32* @MSG_EXTENDED, align 4
  %682 = icmp eq i32 %680, %681
  br i1 %682, label %683, label %725

683:                                              ; preds = %675
  %684 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %685 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %684, i32 0, i32 4
  %686 = load i32*, i32** %685, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 1
  %688 = load i32, i32* %687, align 4
  %689 = icmp eq i32 %688, 3
  br i1 %689, label %690, label %725

690:                                              ; preds = %683
  %691 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %692 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %691, i32 0, i32 4
  %693 = load i32*, i32** %692, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 2
  %695 = load i32, i32* %694, align 4
  %696 = load i32, i32* @MSG_EXT_SDTR, align 4
  %697 = icmp eq i32 %695, %696
  br i1 %697, label %698, label %725

698:                                              ; preds = %690
  %699 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %700 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %699, i32 0, i32 4
  %701 = load i32*, i32** %700, align 8
  %702 = getelementptr inbounds i32, i32* %701, i64 3
  %703 = load i32, i32* %702, align 4
  %704 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %705 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %704, i32 0, i32 5
  %706 = load %struct.TYPE_11__*, %struct.TYPE_11__** %705, align 8
  %707 = load i8, i8* %11, align 1
  %708 = zext i8 %707 to i64
  %709 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %706, i64 %708
  %710 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %709, i32 0, i32 1
  store i32 %703, i32* %710, align 4
  %711 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %712 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %711, i32 0, i32 4
  %713 = load i32*, i32** %712, align 8
  %714 = getelementptr inbounds i32, i32* %713, i64 4
  %715 = load i32, i32* %714, align 4
  %716 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %717 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %716, i32 0, i32 5
  %718 = load %struct.TYPE_11__*, %struct.TYPE_11__** %717, align 8
  %719 = load i8, i8* %11, align 1
  %720 = zext i8 %719 to i64
  %721 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %718, i64 %720
  %722 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %721, i32 0, i32 2
  store i32 %715, i32* %722, align 4
  %723 = load i32, i32* @SYNC_OK, align 4
  %724 = load i32*, i32** %13, align 8
  store i32 %723, i32* %724, align 4
  br label %742

725:                                              ; preds = %690, %683, %675, %670
  %726 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %727 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %726, i32 0, i32 5
  %728 = load %struct.TYPE_11__*, %struct.TYPE_11__** %727, align 8
  %729 = load i8, i8* %11, align 1
  %730 = zext i8 %729 to i64
  %731 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %728, i64 %730
  %732 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %731, i32 0, i32 1
  store i32 0, i32* %732, align 4
  %733 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %734 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %733, i32 0, i32 5
  %735 = load %struct.TYPE_11__*, %struct.TYPE_11__** %734, align 8
  %736 = load i8, i8* %11, align 1
  %737 = zext i8 %736 to i64
  %738 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %735, i64 %737
  %739 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %738, i32 0, i32 2
  store i32 0, i32* %739, align 4
  %740 = load i32, i32* @SYNC_NG, align 4
  %741 = load i32*, i32** %13, align 8
  store i32 %740, i32* %741, align 4
  br label %742

742:                                              ; preds = %725, %698
  %743 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %744 = call i32 @nsp_analyze_sdtr(%struct.scsi_cmnd* %743)
  br label %745

745:                                              ; preds = %742, %659
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %746

746:                                              ; preds = %782, %745
  %747 = load i32, i32* %14, align 4
  %748 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %749 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %748, i32 0, i32 3
  %750 = load i32, i32* %749, align 8
  %751 = icmp slt i32 %747, %750
  br i1 %751, label %752, label %785

752:                                              ; preds = %746
  %753 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %754 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %753, i32 0, i32 4
  %755 = load i32*, i32** %754, align 8
  %756 = load i32, i32* %14, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds i32, i32* %755, i64 %757
  %759 = load i32, i32* %758, align 4
  store i32 %759, i32* %15, align 4
  %760 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %761 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %760, i32 0, i32 4
  %762 = load i32*, i32** %761, align 8
  %763 = load i32, i32* %14, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i32, i32* %762, i64 %764
  %766 = load i32, i32* %765, align 4
  %767 = load i32, i32* @MSG_EXTENDED, align 4
  %768 = icmp eq i32 %766, %767
  br i1 %768, label %769, label %781

769:                                              ; preds = %752
  %770 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %771 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %770, i32 0, i32 4
  %772 = load i32*, i32** %771, align 8
  %773 = load i32, i32* %14, align 4
  %774 = add nsw i32 %773, 1
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds i32, i32* %772, i64 %775
  %777 = load i32, i32* %776, align 4
  %778 = add nsw i32 1, %777
  %779 = load i32, i32* %14, align 4
  %780 = add nsw i32 %779, %778
  store i32 %780, i32* %14, align 4
  br label %781

781:                                              ; preds = %769, %752
  br label %782

782:                                              ; preds = %781
  %783 = load i32, i32* %14, align 4
  %784 = add nsw i32 %783, 1
  store i32 %784, i32* %14, align 4
  br label %746

785:                                              ; preds = %746
  %786 = load i32, i32* %15, align 4
  %787 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %788 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %787, i32 0, i32 3
  %789 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %788, i32 0, i32 0
  store i32 %786, i32* %789, align 8
  %790 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %791 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %792 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %791, i32 0, i32 3
  %793 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %792, i32 0, i32 0
  %794 = load i32, i32* %793, align 8
  %795 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %796 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %795, i32 0, i32 3
  %797 = load i32, i32* %796, align 8
  %798 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %790, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %794, i32 %797)
  %799 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %800 = call i32 @show_message(%struct.TYPE_15__* %799)
  br label %805

801:                                              ; preds = %432
  br label %802

802:                                              ; preds = %432, %801
  %803 = load i32, i32* @NSP_DEBUG_INTR, align 4
  %804 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %803, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  br label %805

805:                                              ; preds = %802, %785, %637, %522, %508, %494, %487
  %806 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %806, i32* %3, align 4
  br label %811

807:                                              ; preds = %658, %557
  %808 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %809 = call i32 @nsp_start_timer(%struct.scsi_cmnd* %808, i32 9)
  %810 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %810, i32* %3, align 4
  br label %811

811:                                              ; preds = %807, %805, %447, %414, %408, %381, %341, %322, %294, %286, %271, %250, %237, %178, %171, %110, %60, %35
  %812 = load i32, i32* %3, align 4
  ret i32 %812
}

declare dso_local i32 @nsp_dbg(i32, i8*, ...) #1

declare dso_local i32 @nsp_write(i32, i32, i32) #1

declare dso_local zeroext i8 @nsp_read(i32, i32) #1

declare dso_local i8* @nsp_index_read(i32, i32) #1

declare dso_local i32 @nsp_index_write(i32, i32, i32) #1

declare dso_local i32 @nsp_msg(i32, i8*, ...) #1

declare dso_local i32 @nsphw_init(%struct.TYPE_15__*) #1

declare dso_local i32 @nsp_bus_reset(%struct.TYPE_15__*) #1

declare dso_local i32 @nsp_scsi_done(%struct.scsi_cmnd*) #1

declare dso_local i64 @nsp_reselected(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_start_timer(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nsp_nexus(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_pio_write(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_pio_read(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_dataphase_bypass(%struct.scsi_cmnd*) #1

declare dso_local i32 @IDENTIFY(i32, i8 zeroext) #1

declare dso_local i32 @nsp_analyze_sdtr(%struct.scsi_cmnd*) #1

declare dso_local i32 @show_message(%struct.TYPE_15__*) #1

declare dso_local i32 @nsp_message_out(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_message_in(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
