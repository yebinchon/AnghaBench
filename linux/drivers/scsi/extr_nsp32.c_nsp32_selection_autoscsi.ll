; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_selection_autoscsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_selection_autoscsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i64* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@NSP32_DEBUG_AUTOSCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@IRQ_CONTROL = common dso_local global i32 0, align 4
@IRQ_CONTROL_ALL_IRQ_MASK = common dso_local global i16 0, align 2
@SCSI_BUS_MONITOR = common dso_local global i32 0, align 4
@BUSMON_BSY = common dso_local global i8 0, align 1
@BUSMON_SEL = common dso_local global i8 0, align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"bus busy\00", align 1
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@SCSI_EXECUTE_PHASE = common dso_local global i32 0, align 4
@COMMAND_CONTROL = common dso_local global i32 0, align 4
@CLEAR_CDB_FIFO_POINTER = common dso_local global i16 0, align 2
@COMMAND_DATA = common dso_local global i32 0, align 4
@NSP32_DEBUG_CDB_CONTENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"CDB[0]=[0x%x]\00", align 1
@SCSI_OUT_LATCH_TARGET_ID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"SCSI MsgOut without any message!\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@MV_VALID = common dso_local global i32 0, align 4
@SCSI_MSG_OUT = common dso_local global i32 0, align 4
@SEL_TIME_OUT = common dso_local global i32 0, align 4
@SEL_TIMEOUT_TIME = common dso_local global i16 0, align 2
@SREQ_SMPL_RATE = common dso_local global i32 0, align 4
@SET_ARBIT = common dso_local global i32 0, align 4
@ARBIT_CLEAR = common dso_local global i32 0, align 4
@SYNC_REG = common dso_local global i32 0, align 4
@ACK_WIDTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"syncreg=0x%x, ackwidth=0x%x, sgtpaddr=0x%x, id=0x%x\00", align 1
@SGT_ADR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"msgout_len=%d, msgout=0x%x\00", align 1
@TRANSFER_GO = common dso_local global i16 0, align 2
@ALL_COUNTER_CLR = common dso_local global i16 0, align 2
@NSP32_TRANSFER_BUSMASTER = common dso_local global i32 0, align 4
@BM_START = common dso_local global i16 0, align 2
@NSP32_TRANSFER_MMIO = common dso_local global i32 0, align 4
@CB_MMIO_MODE = common dso_local global i16 0, align 2
@NSP32_TRANSFER_PIO = common dso_local global i32 0, align 4
@CB_IO_MODE = common dso_local global i16 0, align 2
@TRANSFER_CONTROL = common dso_local global i32 0, align 4
@AUTOSCSI_START = common dso_local global i16 0, align 2
@AUTO_MSGIN_00_OR_04 = common dso_local global i16 0, align 2
@AUTO_MSGIN_02 = common dso_local global i16 0, align 2
@AUTO_ATN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @nsp32_selection_autoscsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_selection_autoscsi(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %3, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %36 = call zeroext i8 @scmd_id(%struct.scsi_cmnd* %35)
  store i8 %36, i8* %6, align 1
  store i16 0, i16* %9, align 2
  store i32 0, i32* %10, align 4
  %37 = load i32, i32* @NSP32_DEBUG_AUTOSCSI, align 4
  %38 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @IRQ_CONTROL, align 4
  %41 = load i16, i16* @IRQ_CONTROL_ALL_IRQ_MASK, align 2
  %42 = call i32 @nsp32_write2(i32 %39, i32 %40, i16 zeroext %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SCSI_BUS_MONITOR, align 4
  %45 = call zeroext i8 @nsp32_read1(i32 %43, i32 %44)
  store i8 %45, i8* %7, align 1
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @BUSMON_BSY, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %1
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @BUSMON_SEL, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52, %1
  %60 = load i32, i32* @KERN_WARNING, align 4
  %61 = call i32 @nsp32_msg(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @DID_BUS_BUSY, align 4
  %63 = shl i32 %62, 16
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 1, i32* %8, align 4
  br label %322

66:                                               ; preds = %52
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SCSI_EXECUTE_PHASE, align 4
  %69 = call zeroext i16 @nsp32_read2(i32 %67, i32 %68)
  store i16 %69, i16* %11, align 2
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @COMMAND_CONTROL, align 4
  %72 = load i16, i16* @CLEAR_CDB_FIFO_POINTER, align 2
  %73 = call i32 @nsp32_write2(i32 %70, i32 %71, i16 zeroext %72)
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %91, %66
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @COMMAND_DATA, align 4
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nsp32_write1(i32 %81, i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load i32, i32* @NSP32_DEBUG_CDB_CONTENTS, align 4
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @SCSI_OUT_LATCH_TARGET_ID, align 4
  %104 = load i32, i32* %5, align 4
  %105 = trunc i32 %104 to i8
  %106 = call i32 @BIT(i8 zeroext %105)
  %107 = load i8, i8* %6, align 1
  %108 = call i32 @BIT(i8 zeroext %107)
  %109 = or i32 %106, %108
  %110 = call i32 @nsp32_write1(i32 %102, i32 %103, i32 %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %94
  %116 = load i32, i32* @KERN_ERR, align 4
  %117 = call i32 @nsp32_msg(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @DID_ERROR, align 4
  %119 = shl i32 %118, 16
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  store i32 1, i32* %8, align 4
  br label %322

122:                                              ; preds = %94
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %169

127:                                              ; preds = %122
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sle i32 %130, 3
  br i1 %131, label %132, label %169

132:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %153, %132
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %133
  %140 = load i32, i32* %10, align 4
  %141 = lshr i32 %140, 8
  store i32 %141, i32* %10, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = shl i32 %149, 24
  %151 = load i32, i32* %10, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %139
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %133

156:                                              ; preds = %133
  %157 = load i32, i32* @MV_VALID, align 4
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @SCSI_MSG_OUT, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @nsp32_write4(i32 %165, i32 %166, i32 %167)
  br label %173

169:                                              ; preds = %127, %122
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @SCSI_MSG_OUT, align 4
  %172 = call i32 @nsp32_write4(i32 %170, i32 %171, i32 0)
  br label %173

173:                                              ; preds = %169, %156
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @SEL_TIME_OUT, align 4
  %177 = load i16, i16* @SEL_TIMEOUT_TIME, align 2
  %178 = call i32 @nsp32_write2(i32 %175, i32 %176, i16 zeroext %177)
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @SREQ_SMPL_RATE, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @nsp32_write1(i32 %179, i32 %180, i32 %185)
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @SET_ARBIT, align 4
  %189 = load i32, i32* @ARBIT_CLEAR, align 4
  %190 = call i32 @nsp32_write1(i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @SYNC_REG, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @nsp32_write1(i32 %191, i32 %192, i32 %197)
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @ACK_WIDTH, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @nsp32_write1(i32 %199, i32 %200, i32 %205)
  %207 = load i32, i32* @NSP32_DEBUG_AUTOSCSI, align 4
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @SYNC_REG, align 4
  %210 = call zeroext i8 @nsp32_read1(i32 %208, i32 %209)
  %211 = zext i8 %210 to i32
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @ACK_WIDTH, align 4
  %214 = call zeroext i8 @nsp32_read1(i32 %212, i32 %213)
  %215 = zext i8 %214 to i32
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @SGT_ADR, align 4
  %218 = call i32 @nsp32_read4(i32 %216, i32 %217)
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* @SCSI_OUT_LATCH_TARGET_ID, align 4
  %221 = call zeroext i8 @nsp32_read1(i32 %219, i32 %220)
  %222 = zext i8 %221 to i32
  %223 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %207, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %211, i32 %215, i32 %218, i32 %222)
  %224 = load i32, i32* @NSP32_DEBUG_AUTOSCSI, align 4
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %224, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %227, i32 %228)
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @SGT_ADR, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @nsp32_write4(i32 %230, i32 %231, i32 %236)
  store i16 0, i16* %9, align 2
  %238 = load i16, i16* @TRANSFER_GO, align 2
  %239 = zext i16 %238 to i32
  %240 = load i16, i16* @ALL_COUNTER_CLR, align 2
  %241 = zext i16 %240 to i32
  %242 = or i32 %239, %241
  %243 = load i16, i16* %9, align 2
  %244 = zext i16 %243 to i32
  %245 = or i32 %244, %242
  %246 = trunc i32 %245 to i16
  store i16 %246, i16* %9, align 2
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @NSP32_TRANSFER_BUSMASTER, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %174
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %255 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %254)
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = load i16, i16* @BM_START, align 2
  %259 = zext i16 %258 to i32
  %260 = load i16, i16* %9, align 2
  %261 = zext i16 %260 to i32
  %262 = or i32 %261, %259
  %263 = trunc i32 %262 to i16
  store i16 %263, i16* %9, align 2
  br label %264

264:                                              ; preds = %257, %253
  br label %295

265:                                              ; preds = %174
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @NSP32_TRANSFER_MMIO, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %265
  %273 = load i16, i16* @CB_MMIO_MODE, align 2
  %274 = zext i16 %273 to i32
  %275 = load i16, i16* %9, align 2
  %276 = zext i16 %275 to i32
  %277 = or i32 %276, %274
  %278 = trunc i32 %277 to i16
  store i16 %278, i16* %9, align 2
  br label %294

279:                                              ; preds = %265
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @NSP32_TRANSFER_PIO, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %279
  %287 = load i16, i16* @CB_IO_MODE, align 2
  %288 = zext i16 %287 to i32
  %289 = load i16, i16* %9, align 2
  %290 = zext i16 %289 to i32
  %291 = or i32 %290, %288
  %292 = trunc i32 %291 to i16
  store i16 %292, i16* %9, align 2
  br label %293

293:                                              ; preds = %286, %279
  br label %294

294:                                              ; preds = %293, %272
  br label %295

295:                                              ; preds = %294, %264
  %296 = load i32, i32* %4, align 4
  %297 = load i32, i32* @TRANSFER_CONTROL, align 4
  %298 = load i16, i16* %9, align 2
  %299 = call i32 @nsp32_write2(i32 %296, i32 %297, i16 zeroext %298)
  %300 = load i16, i16* @CLEAR_CDB_FIFO_POINTER, align 2
  %301 = zext i16 %300 to i32
  %302 = load i16, i16* @AUTOSCSI_START, align 2
  %303 = zext i16 %302 to i32
  %304 = or i32 %301, %303
  %305 = load i16, i16* @AUTO_MSGIN_00_OR_04, align 2
  %306 = zext i16 %305 to i32
  %307 = or i32 %304, %306
  %308 = load i16, i16* @AUTO_MSGIN_02, align 2
  %309 = zext i16 %308 to i32
  %310 = or i32 %307, %309
  %311 = load i16, i16* @AUTO_ATN, align 2
  %312 = zext i16 %311 to i32
  %313 = or i32 %310, %312
  %314 = trunc i32 %313 to i16
  store i16 %314, i16* %9, align 2
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @COMMAND_CONTROL, align 4
  %317 = load i16, i16* %9, align 2
  %318 = call i32 @nsp32_write2(i32 %315, i32 %316, i16 zeroext %317)
  %319 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %320 = load i32, i32* %4, align 4
  %321 = call i32 @nsp32_arbitration(%struct.scsi_cmnd* %319, i32 %320)
  store i32 %321, i32* %8, align 4
  br label %322

322:                                              ; preds = %295, %115, %59
  %323 = load i32, i32* %4, align 4
  %324 = load i32, i32* @IRQ_CONTROL, align 4
  %325 = call i32 @nsp32_write2(i32 %323, i32 %324, i16 zeroext 0)
  %326 = load i32, i32* %8, align 4
  ret i32 %326
}

declare dso_local zeroext i8 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_write2(i32, i32, i16 zeroext) #1

declare dso_local zeroext i8 @nsp32_read1(i32, i32) #1

declare dso_local i32 @nsp32_msg(i32, i8*) #1

declare dso_local zeroext i16 @nsp32_read2(i32, i32) #1

declare dso_local i32 @nsp32_write1(i32, i32, i32) #1

declare dso_local i32 @BIT(i8 zeroext) #1

declare dso_local i32 @nsp32_write4(i32, i32, i32) #1

declare dso_local i32 @nsp32_read4(i32, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_arbitration(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
