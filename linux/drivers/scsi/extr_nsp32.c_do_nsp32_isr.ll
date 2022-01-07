; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_do_nsp32_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_do_nsp32_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.scsi_cmnd*, %struct.Scsi_Host* }
%struct.scsi_cmnd = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.Scsi_Host = type { i32 }

@IRQ_STATUS = common dso_local global i32 0, align 4
@NSP32_DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"enter IRQ: %d, IRQstatus: 0x%x\00", align 1
@IRQSTATUS_ANY_IRQ = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [33 x i8] c"shared interrupt: irq other 0x%x\00", align 1
@IRQ_CONTROL = common dso_local global i32 0, align 4
@IRQ_CONTROL_ALL_IRQ_MASK = common dso_local global i32 0, align 4
@SCSI_BUS_MONITOR = common dso_local global i32 0, align 4
@BUSMON_PHASE_MASK = common dso_local global i8 0, align 1
@TRANSFER_STATUS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"card disconnect\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"clean up current SCSI command\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@IRQSTATUS_TIMER_IRQ = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [11 x i8] c"timer stop\00", align 1
@TIMER_SET = common dso_local global i32 0, align 4
@TIMER_STOP = common dso_local global i32 0, align 4
@IRQSTATUS_SCSIRESET_IRQ = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [30 x i8] c"detected someone do bus reset\00", align 1
@DID_RESET = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"SCpnt==NULL this can't be happened\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"irq_stat=0x%x trans_stat=0x%x\00", align 1
@IRQSTATUS_AUTOSCSI_IRQ = common dso_local global i16 0, align 2
@SCSI_EXECUTE_PHASE = common dso_local global i32 0, align 4
@SELECTION_TIMEOUT = common dso_local global i16 0, align 2
@.str.8 = private unnamed_addr constant [27 x i8] c"selection timeout occurred\00", align 1
@DID_TIME_OUT = common dso_local global i32 0, align 4
@MSGOUT_PHASE = common dso_local global i16 0, align 2
@MSG_IN_OCCUER = common dso_local global i16 0, align 2
@.str.9 = private unnamed_addr constant [23 x i8] c"MsgOut phase processed\00", align 1
@DATA_IN_PHASE = common dso_local global i16 0, align 2
@FIFO_REST_CNT = common dso_local global i32 0, align 4
@FIFO_REST_MASK = common dso_local global i16 0, align 2
@.str.10 = private unnamed_addr constant [11 x i8] c"auto+fifo\0A\00", align 1
@DATA_OUT_PHASE = common dso_local global i16 0, align 2
@.str.11 = private unnamed_addr constant [28 x i8] c"Data in/out phase processed\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"BMCNT=0x%lx\00", align 1
@BM_CNT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"addr=0x%lx\00", align 1
@SGT_ADR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"SACK=0x%lx\00", align 1
@SACK_CNT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"SSACK=0x%lx\00", align 1
@SAVED_SACK_CNT = common dso_local global i32 0, align 4
@MSG_OUT_OCCUER = common dso_local global i16 0, align 2
@BUS_FREE_OCCUER = common dso_local global i16 0, align 2
@TRUE = common dso_local global i32 0, align 4
@STATUS_PHASE = common dso_local global i16 0, align 2
@SCSI_CSB_IN = common dso_local global i32 0, align 4
@ILLEGAL_PHASE = common dso_local global i16 0, align 2
@.str.16 = private unnamed_addr constant [34 x i8] c"AUTO SCSI ILLEGAL PHASE OCCUR!!!!\00", align 1
@NEGATE = common dso_local global i32 0, align 4
@COMMAND_PHASE = common dso_local global i16 0, align 2
@.str.17 = private unnamed_addr constant [24 x i8] c"Command phase processed\00", align 1
@AUTOSCSI_BUSY = common dso_local global i16 0, align 2
@IRQSTATUS_FIFO_SHLD_IRQ = common dso_local global i16 0, align 2
@.str.18 = private unnamed_addr constant [9 x i8] c"FIFO IRQ\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"fifo/write\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"fifo/read\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"fifo/status\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"fifo/other phase\00", align 1
@IRQSTATUS_PHASE_CHANGE_IRQ = common dso_local global i16 0, align 2
@.str.23 = private unnamed_addr constant [17 x i8] c"phase change IRQ\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"phase chg/msg in\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"phase chg/other phase?\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"irq_stat=0x%x trans_stat=0x%x\0A\00", align 1
@IRQSTATUS_PCI_IRQ = common dso_local global i16 0, align 2
@.str.27 = private unnamed_addr constant [17 x i8] c"PCI IRQ occurred\00", align 1
@IRQSTATUS_BMCNTERR_IRQ = common dso_local global i16 0, align 2
@KERN_ERR = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [35 x i8] c"Received unexpected BMCNTERR IRQ! \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_nsp32_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_nsp32_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.Scsi_Host*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  store %struct.scsi_cmnd* %24, %struct.scsi_cmnd** %7, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %26, align 8
  store %struct.Scsi_Host* %27, %struct.Scsi_Host** %16, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @spin_lock_irqsave(i32 %30, i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @IRQ_STATUS, align 4
  %35 = call zeroext i16 @nsp32_read2(i32 %33, i32 %34)
  store i16 %35, i16* %9, align 2
  %36 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i16, i16* %9, align 2
  %39 = zext i16 %38 to i32
  %40 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39)
  %41 = load i16, i16* %9, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @IRQSTATUS_ANY_IRQ, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %49 = load i16, i16* %9, align 2
  %50 = zext i16 %49 to i32
  %51 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %437

52:                                               ; preds = %2
  store i32 1, i32* %15, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IRQ_CONTROL, align 4
  %55 = load i32, i32* @IRQ_CONTROL_ALL_IRQ_MASK, align 4
  %56 = call i32 @nsp32_write2(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @SCSI_BUS_MONITOR, align 4
  %59 = call i8* @nsp32_read1(i32 %57, i32 %58)
  %60 = ptrtoint i8* %59 to i8
  store i8 %60, i8* %11, align 1
  %61 = load i8, i8* %11, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @BUSMON_PHASE_MASK, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %12, align 1
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @TRANSFER_STATUS, align 4
  %69 = call zeroext i16 @nsp32_read2(i32 %67, i32 %68)
  store i16 %69, i16* %10, align 2
  %70 = load i16, i16* %9, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %71, 65535
  br i1 %72, label %73, label %94

73:                                               ; preds = %52
  %74 = load i16, i16* %10, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp eq i32 %75, 65535
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load i32, i32* @KERN_INFO, align 4
  %79 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %81, align 8
  %83 = icmp ne %struct.scsi_cmnd* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i32, i32* @KERN_INFO, align 4
  %86 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @DID_BAD_TARGET, align 4
  %88 = shl i32 %87, 16
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %92 = call i32 @nsp32_scsi_done(%struct.scsi_cmnd* %91)
  br label %93

93:                                               ; preds = %84, %77
  br label %433

94:                                               ; preds = %73, %52
  %95 = load i16, i16* %9, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* @IRQSTATUS_TIMER_IRQ, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %103 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @TIMER_SET, align 4
  %106 = load i32, i32* @TIMER_STOP, align 4
  %107 = call i32 @nsp32_write2(i32 %104, i32 %105, i32 %106)
  br label %433

108:                                              ; preds = %94
  %109 = load i16, i16* %9, align 2
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* @IRQSTATUS_SCSIRESET_IRQ, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %108
  %116 = load i32, i32* @KERN_INFO, align 4
  %117 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = call i32 @nsp32_do_bus_reset(%struct.TYPE_8__* %118)
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %121 = icmp ne %struct.scsi_cmnd* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load i32, i32* @DID_RESET, align 4
  %124 = shl i32 %123, 16
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %128 = call i32 @nsp32_scsi_done(%struct.scsi_cmnd* %127)
  br label %129

129:                                              ; preds = %122, %115
  br label %433

130:                                              ; preds = %108
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %132 = icmp eq %struct.scsi_cmnd* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i32, i32* @KERN_WARNING, align 4
  %135 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* @KERN_WARNING, align 4
  %137 = load i16, i16* %9, align 2
  %138 = zext i16 %137 to i32
  %139 = load i16, i16* %10, align 2
  %140 = zext i16 %139 to i32
  %141 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %138, i32 %140)
  br label %433

142:                                              ; preds = %130
  %143 = load i16, i16* %9, align 2
  %144 = zext i16 %143 to i32
  %145 = load i16, i16* @IRQSTATUS_AUTOSCSI_IRQ, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %144, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %343

149:                                              ; preds = %142
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @SCSI_EXECUTE_PHASE, align 4
  %152 = call zeroext i16 @nsp32_read2(i32 %150, i32 %151)
  store i16 %152, i16* %8, align 2
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @SCSI_EXECUTE_PHASE, align 4
  %155 = call i32 @nsp32_write2(i32 %153, i32 %154, i32 0)
  %156 = load i16, i16* %8, align 2
  %157 = zext i16 %156 to i32
  %158 = load i16, i16* @SELECTION_TIMEOUT, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %149
  %163 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %164 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %165 = load i32, i32* @DID_TIME_OUT, align 4
  %166 = shl i32 %165, 16
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %168 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %170 = call i32 @nsp32_scsi_done(%struct.scsi_cmnd* %169)
  br label %433

171:                                              ; preds = %149
  %172 = load i16, i16* %8, align 2
  %173 = zext i16 %172 to i32
  %174 = load i16, i16* @MSGOUT_PHASE, align 2
  %175 = zext i16 %174 to i32
  %176 = and i32 %173, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %171
  %179 = load i16, i16* %8, align 2
  %180 = zext i16 %179 to i32
  %181 = load i16, i16* @MSG_IN_OCCUER, align 2
  %182 = zext i16 %181 to i32
  %183 = and i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %178
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sle i32 %188, 3
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %185, %178
  %194 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %195 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %171
  %197 = load i16, i16* %8, align 2
  %198 = zext i16 %197 to i32
  %199 = load i16, i16* @DATA_IN_PHASE, align 2
  %200 = zext i16 %199 to i32
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %196
  %204 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %205 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %204)
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @FIFO_REST_CNT, align 4
  %210 = call zeroext i16 @nsp32_read2(i32 %208, i32 %209)
  %211 = zext i16 %210 to i32
  %212 = load i16, i16* @FIFO_REST_MASK, align 2
  %213 = zext i16 %212 to i32
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %207
  %217 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %207, %203, %196
  %219 = load i16, i16* %8, align 2
  %220 = zext i16 %219 to i32
  %221 = load i16, i16* @DATA_IN_PHASE, align 2
  %222 = zext i16 %221 to i32
  %223 = load i16, i16* @DATA_OUT_PHASE, align 2
  %224 = zext i16 %223 to i32
  %225 = or i32 %222, %224
  %226 = and i32 %220, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %253

228:                                              ; preds = %218
  %229 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %230 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %229, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %231 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @BM_CNT, align 4
  %234 = call i32 @nsp32_read4(i32 %232, i32 %233)
  %235 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @SGT_ADR, align 4
  %239 = call i32 @nsp32_read4(i32 %237, i32 %238)
  %240 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %236, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @SACK_CNT, align 4
  %244 = call i32 @nsp32_read4(i32 %242, i32 %243)
  %245 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %241, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @SAVED_SACK_CNT, align 4
  %249 = call i32 @nsp32_read4(i32 %247, i32 %248)
  %250 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %249)
  %251 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %252 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %251, i32 0)
  br label %253

253:                                              ; preds = %228, %218
  %254 = load i16, i16* %8, align 2
  %255 = zext i16 %254 to i32
  %256 = load i16, i16* @MSG_IN_OCCUER, align 2
  %257 = zext i16 %256 to i32
  %258 = and i32 %255, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %262 = load i16, i16* %9, align 2
  %263 = load i16, i16* %8, align 2
  %264 = call i32 @nsp32_msgin_occur(%struct.scsi_cmnd* %261, i16 zeroext %262, i16 zeroext %263)
  br label %265

265:                                              ; preds = %260, %253
  %266 = load i16, i16* %8, align 2
  %267 = zext i16 %266 to i32
  %268 = load i16, i16* @MSG_OUT_OCCUER, align 2
  %269 = zext i16 %268 to i32
  %270 = and i32 %267, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %274 = call i32 @nsp32_msgout_occur(%struct.scsi_cmnd* %273)
  br label %275

275:                                              ; preds = %272, %265
  %276 = load i16, i16* %8, align 2
  %277 = zext i16 %276 to i32
  %278 = load i16, i16* @BUS_FREE_OCCUER, align 2
  %279 = zext i16 %278 to i32
  %280 = and i32 %277, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %275
  %283 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %284 = load i16, i16* %8, align 2
  %285 = call i32 @nsp32_busfree_occur(%struct.scsi_cmnd* %283, i16 zeroext %284)
  store i32 %285, i32* %14, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* @TRUE, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %433

290:                                              ; preds = %282
  br label %291

291:                                              ; preds = %290, %275
  %292 = load i16, i16* %8, align 2
  %293 = zext i16 %292 to i32
  %294 = load i16, i16* @STATUS_PHASE, align 2
  %295 = zext i16 %294 to i32
  %296 = and i32 %293, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %291
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* @SCSI_CSB_IN, align 4
  %301 = call i8* @nsp32_read1(i32 %299, i32 %300)
  %302 = ptrtoint i8* %301 to i32
  %303 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %304 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  br label %305

305:                                              ; preds = %298, %291
  %306 = load i16, i16* %8, align 2
  %307 = zext i16 %306 to i32
  %308 = load i16, i16* @ILLEGAL_PHASE, align 2
  %309 = zext i16 %308 to i32
  %310 = and i32 %307, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %305
  %313 = load i32, i32* @KERN_WARNING, align 4
  %314 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %313, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %316 = call i32 @nsp32_sack_assert(%struct.TYPE_8__* %315)
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %318 = load i32, i32* @NEGATE, align 4
  %319 = call i32 @nsp32_wait_req(%struct.TYPE_8__* %317, i32 %318)
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %321 = call i32 @nsp32_sack_negate(%struct.TYPE_8__* %320)
  br label %322

322:                                              ; preds = %312, %305
  %323 = load i16, i16* %8, align 2
  %324 = zext i16 %323 to i32
  %325 = load i16, i16* @COMMAND_PHASE, align 2
  %326 = zext i16 %325 to i32
  %327 = and i32 %324, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %322
  %330 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %331 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %330, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  br label %332

332:                                              ; preds = %329, %322
  %333 = load i16, i16* %8, align 2
  %334 = zext i16 %333 to i32
  %335 = load i16, i16* @AUTOSCSI_BUSY, align 2
  %336 = zext i16 %335 to i32
  %337 = and i32 %334, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %332
  br label %340

340:                                              ; preds = %339, %332
  %341 = load i16, i16* %8, align 2
  %342 = call i32 @show_autophase(i16 zeroext %341)
  br label %343

343:                                              ; preds = %340, %142
  %344 = load i16, i16* %9, align 2
  %345 = zext i16 %344 to i32
  %346 = load i16, i16* @IRQSTATUS_FIFO_SHLD_IRQ, align 2
  %347 = zext i16 %346 to i32
  %348 = and i32 %345, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %382

350:                                              ; preds = %343
  %351 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %352 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %353 = load i8, i8* %12, align 1
  %354 = zext i8 %353 to i32
  switch i32 %354, label %370 [
    i32 130, label %355
    i32 131, label %358
    i32 128, label %361
  ]

355:                                              ; preds = %350
  %356 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %357 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %356, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %381

358:                                              ; preds = %350
  %359 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %360 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %359, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %381

361:                                              ; preds = %350
  %362 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %363 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %362, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %364 = load i32, i32* %6, align 4
  %365 = load i32, i32* @SCSI_CSB_IN, align 4
  %366 = call i8* @nsp32_read1(i32 %364, i32 %365)
  %367 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %368 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  store i8* %366, i8** %369, align 8
  br label %381

370:                                              ; preds = %350
  %371 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %372 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %371, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %373 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %374 = load i16, i16* %9, align 2
  %375 = zext i16 %374 to i32
  %376 = load i16, i16* %10, align 2
  %377 = zext i16 %376 to i32
  %378 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %373, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %375, i32 %377)
  %379 = load i8, i8* %12, align 1
  %380 = call i32 @show_busphase(i8 zeroext %379)
  br label %381

381:                                              ; preds = %370, %361, %358, %355
  br label %433

382:                                              ; preds = %343
  %383 = load i16, i16* %9, align 2
  %384 = zext i16 %383 to i32
  %385 = load i16, i16* @IRQSTATUS_PHASE_CHANGE_IRQ, align 2
  %386 = zext i16 %385 to i32
  %387 = and i32 %384, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %412

389:                                              ; preds = %382
  %390 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %391 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %390, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %392 = load i8, i8* %12, align 1
  %393 = zext i8 %392 to i32
  switch i32 %393, label %400 [
    i32 129, label %394
  ]

394:                                              ; preds = %389
  %395 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %396 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %395, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %397 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %398 = load i16, i16* %9, align 2
  %399 = call i32 @nsp32_msgin_occur(%struct.scsi_cmnd* %397, i16 zeroext %398, i16 zeroext 0)
  br label %411

400:                                              ; preds = %389
  %401 = load i32, i32* @KERN_WARNING, align 4
  %402 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %401, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  %403 = load i32, i32* @KERN_WARNING, align 4
  %404 = load i16, i16* %9, align 2
  %405 = zext i16 %404 to i32
  %406 = load i16, i16* %10, align 2
  %407 = zext i16 %406 to i32
  %408 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %403, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 %405, i32 %407)
  %409 = load i8, i8* %12, align 1
  %410 = call i32 @show_busphase(i8 zeroext %409)
  br label %411

411:                                              ; preds = %400, %394
  br label %433

412:                                              ; preds = %382
  %413 = load i16, i16* %9, align 2
  %414 = zext i16 %413 to i32
  %415 = load i16, i16* @IRQSTATUS_PCI_IRQ, align 2
  %416 = zext i16 %415 to i32
  %417 = and i32 %414, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %412
  %420 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %421 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %420, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  br label %422

422:                                              ; preds = %419, %412
  %423 = load i16, i16* %9, align 2
  %424 = zext i16 %423 to i32
  %425 = load i16, i16* @IRQSTATUS_BMCNTERR_IRQ, align 2
  %426 = zext i16 %425 to i32
  %427 = and i32 %424, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %422
  %430 = load i32, i32* @KERN_ERR, align 4
  %431 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %430, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0))
  br label %432

432:                                              ; preds = %429, %422
  br label %433

433:                                              ; preds = %432, %411, %381, %289, %162, %133, %129, %101, %93
  %434 = load i32, i32* %6, align 4
  %435 = load i32, i32* @IRQ_CONTROL, align 4
  %436 = call i32 @nsp32_write2(i32 %434, i32 %435, i32 0)
  br label %437

437:                                              ; preds = %433, %47
  %438 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  %439 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = load i64, i64* %13, align 8
  %442 = call i32 @spin_unlock_irqrestore(i32 %440, i64 %441)
  %443 = load i32, i32* @NSP32_DEBUG_INTR, align 4
  %444 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %443, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %445 = load i32, i32* %15, align 4
  %446 = call i32 @IRQ_RETVAL(i32 %445)
  ret i32 %446
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local zeroext i16 @nsp32_read2(i32, i32) #1

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_write2(i32, i32, i32) #1

declare dso_local i8* @nsp32_read1(i32, i32) #1

declare dso_local i32 @nsp32_msg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_scsi_done(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_do_bus_reset(%struct.TYPE_8__*) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @nsp32_read4(i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @nsp32_msgin_occur(%struct.scsi_cmnd*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @nsp32_msgout_occur(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_busfree_occur(%struct.scsi_cmnd*, i16 zeroext) #1

declare dso_local i32 @nsp32_sack_assert(%struct.TYPE_8__*) #1

declare dso_local i32 @nsp32_wait_req(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nsp32_sack_negate(%struct.TYPE_8__*) #1

declare dso_local i32 @show_autophase(i16 zeroext) #1

declare dso_local i32 @show_busphase(i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
