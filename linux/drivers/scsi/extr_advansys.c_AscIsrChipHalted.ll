; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscIsrChipHalted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscIsrChipHalted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64*, i64, i64, i32, i32, i32, i64*, i32, i64*, i32, %struct.asc_board* }
%struct.asc_board = type { i64*, i32, i64* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }

@ASCV_HALTCODE_W = common dso_local global i32 0, align 4
@ASCV_CURCDB_B = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_TARGET_IX = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_CNTL = common dso_local global i64 0, align 8
@ASYN_SDTR_DATA_FIX_PCI_REV_AB = common dso_local global i64 0, align 8
@ASC_HALT_DISABLE_ASYN_USE_SYN_FIX = common dso_local global i64 0, align 8
@ASC_HALT_ENABLE_ASYN_USE_SYN_FIX = common dso_local global i64 0, align 8
@ASC_HALT_EXTMSG_IN = common dso_local global i64 0, align 8
@ASCV_MSGIN_BEG = common dso_local global i32 0, align 4
@EXTENDED_MESSAGE = common dso_local global i64 0, align 8
@EXTENDED_SDTR = common dso_local global i64 0, align 8
@MS_SDTR_LEN = common dso_local global i64 0, align 8
@ASC_SYN_MAX_OFFSET = common dso_local global i64 0, align 8
@QC_MSG_OUT = common dso_local global i64 0, align 8
@EXTENDED_WDTR = common dso_local global i64 0, align 8
@MS_WDTR_LEN = common dso_local global i64 0, align 8
@ASCV_MSGOUT_BEG = common dso_local global i32 0, align 4
@MESSAGE_REJECT = common dso_local global i64 0, align 8
@ASC_HALT_CHK_CONDITION = common dso_local global i64 0, align 8
@QC_REQ_SENSE = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_TAG_CODE = common dso_local global i64 0, align 8
@ASC_TAG_FLAG_DISABLE_DISCONNECT = common dso_local global i64 0, align 8
@ASC_TAG_FLAG_DISABLE_ASYN_USE_SYN_FIX = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_STATUS = common dso_local global i64 0, align 8
@QS_READY = common dso_local global i64 0, align 8
@QS_BUSY = common dso_local global i64 0, align 8
@ASCV_SCSIBUSY_B = common dso_local global i64 0, align 8
@ASC_HALT_SDTR_REJECTED = common dso_local global i64 0, align 8
@ASC_HALT_SS_QUEUE_FULL = common dso_local global i64 0, align 8
@ASC_SCSIQ_SCSI_STATUS = common dso_local global i64 0, align 8
@ASC_QADR_BEG = common dso_local global i64 0, align 8
@SAM_STAT_TASK_SET_FULL = common dso_local global i64 0, align 8
@ASC_MIN_TAGGED_CMD = common dso_local global i64 0, align 8
@ASCV_MAX_DVC_QNG_BEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @AscIsrChipHalted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AscIsrChipHalted(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.asc_board*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 11
  %24 = load %struct.asc_board*, %struct.asc_board** %23, align 8
  %25 = icmp ne %struct.asc_board* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 11
  %31 = load %struct.asc_board*, %struct.asc_board** %30, align 8
  store %struct.asc_board* %31, %struct.asc_board** %21, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %37 = call i64 @AscReadLramWord(i32 %35, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i64, i64* @ASCV_CURCDB_B, align 8
  %40 = call i8* @AscReadLramByte(i32 %38, i64 %39)
  %41 = ptrtoint i8* %40 to i64
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @ASC_QNO_TO_QADDR(i64 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @ASC_SCSIQ_B_TARGET_IX, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i8* @AscReadLramByte(i32 %44, i64 %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %15, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i8* @AscReadLramByte(i32 %50, i64 %53)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i64 @ASC_TIX_TO_TID(i64 %56)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = call i64 @ASC_TID_TO_TARGET_ID(i64 %58)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %1
  %68 = load i64, i64* @ASYN_SDTR_DATA_FIX_PCI_REV_AB, align 8
  store i64 %68, i64* %19, align 8
  br label %70

69:                                               ; preds = %1
  store i64 0, i64* %19, align 8
  br label %70

70:                                               ; preds = %69, %67
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @ASC_HALT_DISABLE_ASYN_USE_SYN_FIX, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @AscSetChipSDTR(i32 %82, i64 0, i64 %83)
  %85 = load %struct.asc_board*, %struct.asc_board** %21, align 8
  %86 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %17, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %81, %74
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %93 = call i32 @AscWriteLramWord(i32 %91, i32 %92, i32 0)
  br label %667

94:                                               ; preds = %70
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @ASC_HALT_ENABLE_ASYN_USE_SYN_FIX, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i32 @AscSetChipSDTR(i32 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %19, align 8
  %111 = load %struct.asc_board*, %struct.asc_board** %21, align 8
  %112 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %17, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %110, i64* %115, align 8
  br label %116

116:                                              ; preds = %105, %98
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %119 = call i32 @AscWriteLramWord(i32 %117, i32 %118, i32 0)
  br label %667

120:                                              ; preds = %94
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* @ASC_HALT_EXTMSG_IN, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %399

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @ASCV_MSGIN_BEG, align 4
  %127 = bitcast %struct.TYPE_6__* %3 to i64*
  %128 = call i32 @AscMemWordCopyPtrFromLram(i32 %125, i32 %126, i64* %127, i32 24)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @EXTENDED_MESSAGE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %347

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @EXTENDED_SDTR, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %347

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MS_SDTR_LEN, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %347

143:                                              ; preds = %138
  store i32 1, i32* %6, align 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ASC_SYN_MAX_OFFSET, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  %149 = load i64, i64* @ASC_SYN_MAX_OFFSET, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %148, %143
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i64, i64* %156, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %153, %161
  br i1 %162, label %175, label %163

163:                                              ; preds = %151
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i64, i64* %168, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %165, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %163, %151
  store i32 0, i32* %6, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i64 %183, i64* %184, align 8
  br label %185

185:                                              ; preds = %175, %163
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %224

188:                                              ; preds = %185
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @AscCalSDTRData(%struct.TYPE_7__* %189, i64 %191, i64 %193)
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %14, align 8
  %196 = icmp eq i64 %195, 255
  br i1 %196, label %197, label %223

197:                                              ; preds = %188
  %198 = load i64, i64* @QC_MSG_OUT, align 8
  %199 = load i64, i64* %16, align 8
  %200 = or i64 %199, %198
  store i64 %200, i64* %16, align 8
  %201 = load i32, i32* %9, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load i32, i32* %9, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i64, i64* %19, align 8
  %215 = load i64, i64* %17, align 8
  %216 = call i32 @AscSetChipSDTR(i32 %213, i64 %214, i64 %215)
  %217 = load i64, i64* %19, align 8
  %218 = load %struct.asc_board*, %struct.asc_board** %21, align 8
  %219 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = load i64, i64* %17, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  store i64 %217, i64* %222, align 8
  br label %223

223:                                              ; preds = %197, %188
  br label %224

224:                                              ; preds = %223, %185
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %249

228:                                              ; preds = %224
  %229 = load i64, i64* @QC_MSG_OUT, align 8
  %230 = xor i64 %229, -1
  %231 = load i64, i64* %16, align 8
  %232 = and i64 %231, %230
  store i64 %232, i64* %16, align 8
  %233 = load i32, i32* %9, align 4
  %234 = xor i32 %233, -1
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load i32, i32* %9, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i64, i64* %19, align 8
  %247 = load i64, i64* %17, align 8
  %248 = call i32 @AscSetChipSDTR(i32 %245, i64 %246, i64 %247)
  br label %337

249:                                              ; preds = %224
  %250 = load i32, i32* %6, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %294

252:                                              ; preds = %249
  %253 = load i64, i64* %16, align 8
  %254 = load i64, i64* @QC_MSG_OUT, align 8
  %255 = and i64 %253, %254
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %294

257:                                              ; preds = %252
  %258 = load i64, i64* @QC_MSG_OUT, align 8
  %259 = xor i64 %258, -1
  %260 = load i64, i64* %16, align 8
  %261 = and i64 %260, %259
  store i64 %261, i64* %16, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  %272 = load i32, i32* %9, align 4
  %273 = xor i32 %272, -1
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = and i32 %276, %273
  store i32 %277, i32* %275, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = call i64 @AscCalSDTRData(%struct.TYPE_7__* %278, i64 %280, i64 %282)
  store i64 %283, i64* %14, align 8
  %284 = load i32, i32* %10, align 4
  %285 = load i64, i64* %14, align 8
  %286 = load i64, i64* %17, align 8
  %287 = call i32 @AscSetChipSDTR(i32 %284, i64 %285, i64 %286)
  %288 = load i64, i64* %14, align 8
  %289 = load %struct.asc_board*, %struct.asc_board** %21, align 8
  %290 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = load i64, i64* %17, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  store i64 %288, i64* %293, align 8
  br label %336

294:                                              ; preds = %252, %249
  %295 = load i64, i64* @QC_MSG_OUT, align 8
  %296 = load i64, i64* %16, align 8
  %297 = or i64 %296, %295
  store i64 %297, i64* %16, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @AscMsgOutSDTR(%struct.TYPE_7__* %298, i64 %300, i64 %302)
  %304 = load i32, i32* %9, align 4
  %305 = xor i32 %304, -1
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = and i32 %308, %305
  store i32 %309, i32* %307, align 8
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = call i64 @AscCalSDTRData(%struct.TYPE_7__* %310, i64 %312, i64 %314)
  store i64 %315, i64* %14, align 8
  %316 = load i32, i32* %10, align 4
  %317 = load i64, i64* %14, align 8
  %318 = load i64, i64* %17, align 8
  %319 = call i32 @AscSetChipSDTR(i32 %316, i64 %317, i64 %318)
  %320 = load i64, i64* %14, align 8
  %321 = load %struct.asc_board*, %struct.asc_board** %21, align 8
  %322 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %321, i32 0, i32 0
  %323 = load i64*, i64** %322, align 8
  %324 = load i64, i64* %17, align 8
  %325 = getelementptr inbounds i64, i64* %323, i64 %324
  store i64 %320, i64* %325, align 8
  %326 = load i32, i32* %9, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 4
  %331 = load i32, i32* %9, align 4
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = or i32 %334, %331
  store i32 %335, i32* %333, align 8
  br label %336

336:                                              ; preds = %294, %257
  br label %337

337:                                              ; preds = %336, %228
  %338 = load i32, i32* %10, align 4
  %339 = load i64, i64* %5, align 8
  %340 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %341 = add nsw i64 %339, %340
  %342 = load i64, i64* %16, align 8
  %343 = call i32 @AscWriteLramByte(i32 %338, i64 %341, i64 %342)
  %344 = load i32, i32* %10, align 4
  %345 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %346 = call i32 @AscWriteLramWord(i32 %344, i32 %345, i32 0)
  br label %667

347:                                              ; preds = %138, %133, %124
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @EXTENDED_MESSAGE, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %380

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @EXTENDED_WDTR, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %380

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @MS_WDTR_LEN, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %380

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i64 0, i64* %363, align 8
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* @ASCV_MSGOUT_BEG, align 4
  %366 = bitcast %struct.TYPE_6__* %3 to i64*
  %367 = call i32 @AscMemWordCopyPtrToLram(i32 %364, i32 %365, i64* %366, i32 24)
  %368 = load i64, i64* @QC_MSG_OUT, align 8
  %369 = load i64, i64* %16, align 8
  %370 = or i64 %369, %368
  store i64 %370, i64* %16, align 8
  %371 = load i32, i32* %10, align 4
  %372 = load i64, i64* %5, align 8
  %373 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %374 = add nsw i64 %372, %373
  %375 = load i64, i64* %16, align 8
  %376 = call i32 @AscWriteLramByte(i32 %371, i64 %374, i64 %375)
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %379 = call i32 @AscWriteLramWord(i32 %377, i32 %378, i32 0)
  br label %667

380:                                              ; preds = %357, %352, %347
  %381 = load i64, i64* @MESSAGE_REJECT, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i64 %381, i64* %382, align 8
  %383 = load i32, i32* %10, align 4
  %384 = load i32, i32* @ASCV_MSGOUT_BEG, align 4
  %385 = bitcast %struct.TYPE_6__* %3 to i64*
  %386 = call i32 @AscMemWordCopyPtrToLram(i32 %383, i32 %384, i64* %385, i32 24)
  %387 = load i64, i64* @QC_MSG_OUT, align 8
  %388 = load i64, i64* %16, align 8
  %389 = or i64 %388, %387
  store i64 %389, i64* %16, align 8
  %390 = load i32, i32* %10, align 4
  %391 = load i64, i64* %5, align 8
  %392 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %393 = add nsw i64 %391, %392
  %394 = load i64, i64* %16, align 8
  %395 = call i32 @AscWriteLramByte(i32 %390, i64 %393, i64 %394)
  %396 = load i32, i32* %10, align 4
  %397 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %398 = call i32 @AscWriteLramWord(i32 %396, i32 %397, i32 0)
  br label %667

399:                                              ; preds = %120
  %400 = load i64, i64* %7, align 8
  %401 = load i64, i64* @ASC_HALT_CHK_CONDITION, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %517

403:                                              ; preds = %399
  %404 = load i64, i64* @QC_REQ_SENSE, align 8
  %405 = load i64, i64* %16, align 8
  %406 = or i64 %405, %404
  store i64 %406, i64* %16, align 8
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* %9, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %443

413:                                              ; preds = %403
  %414 = load i32, i32* %9, align 4
  %415 = xor i32 %414, -1
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 5
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %418, %415
  store i32 %419, i32* %417, align 4
  %420 = load i32, i32* %10, align 4
  %421 = load i64, i64* %17, align 8
  %422 = call i64 @AscGetMCodeInitSDTRAtID(i32 %420, i64 %421)
  store i64 %422, i64* %14, align 8
  %423 = load i64, i64* @QC_MSG_OUT, align 8
  %424 = load i64, i64* %16, align 8
  %425 = or i64 %424, %423
  store i64 %425, i64* %16, align 8
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %427 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 1
  %429 = load i64*, i64** %428, align 8
  %430 = load i64, i64* %14, align 8
  %431 = lshr i64 %430, 4
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = sub i64 %434, 1
  %436 = and i64 %431, %435
  %437 = getelementptr inbounds i64, i64* %429, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* %14, align 8
  %440 = load i64, i64* @ASC_SYN_MAX_OFFSET, align 8
  %441 = and i64 %439, %440
  %442 = call i32 @AscMsgOutSDTR(%struct.TYPE_7__* %426, i64 %438, i64 %441)
  br label %443

443:                                              ; preds = %413, %403
  %444 = load i32, i32* %10, align 4
  %445 = load i64, i64* %5, align 8
  %446 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %447 = add nsw i64 %445, %446
  %448 = load i64, i64* %16, align 8
  %449 = call i32 @AscWriteLramByte(i32 %444, i64 %447, i64 %448)
  %450 = load i32, i32* %10, align 4
  %451 = load i64, i64* %5, align 8
  %452 = load i64, i64* @ASC_SCSIQ_B_TAG_CODE, align 8
  %453 = add nsw i64 %451, %452
  %454 = call i8* @AscReadLramByte(i32 %450, i64 %453)
  %455 = ptrtoint i8* %454 to i64
  store i64 %455, i64* %11, align 8
  %456 = load i64, i64* %11, align 8
  %457 = and i64 %456, 220
  store i64 %457, i64* %11, align 8
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* %9, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %477

464:                                              ; preds = %443
  %465 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* %9, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %477, label %471

471:                                              ; preds = %464
  %472 = load i64, i64* @ASC_TAG_FLAG_DISABLE_DISCONNECT, align 8
  %473 = load i64, i64* @ASC_TAG_FLAG_DISABLE_ASYN_USE_SYN_FIX, align 8
  %474 = or i64 %472, %473
  %475 = load i64, i64* %11, align 8
  %476 = or i64 %475, %474
  store i64 %476, i64* %11, align 8
  br label %477

477:                                              ; preds = %471, %464, %443
  %478 = load i32, i32* %10, align 4
  %479 = load i64, i64* %5, align 8
  %480 = load i64, i64* @ASC_SCSIQ_B_TAG_CODE, align 8
  %481 = add nsw i64 %479, %480
  %482 = load i64, i64* %11, align 8
  %483 = call i32 @AscWriteLramByte(i32 %478, i64 %481, i64 %482)
  %484 = load i32, i32* %10, align 4
  %485 = load i64, i64* %5, align 8
  %486 = load i64, i64* @ASC_SCSIQ_B_STATUS, align 8
  %487 = add nsw i64 %485, %486
  %488 = call i8* @AscReadLramByte(i32 %484, i64 %487)
  %489 = ptrtoint i8* %488 to i64
  store i64 %489, i64* %12, align 8
  %490 = load i64, i64* @QS_READY, align 8
  %491 = load i64, i64* @QS_BUSY, align 8
  %492 = or i64 %490, %491
  %493 = load i64, i64* %12, align 8
  %494 = or i64 %493, %492
  store i64 %494, i64* %12, align 8
  %495 = load i32, i32* %10, align 4
  %496 = load i64, i64* %5, align 8
  %497 = load i64, i64* @ASC_SCSIQ_B_STATUS, align 8
  %498 = add nsw i64 %496, %497
  %499 = load i64, i64* %12, align 8
  %500 = call i32 @AscWriteLramByte(i32 %495, i64 %498, i64 %499)
  %501 = load i32, i32* %10, align 4
  %502 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %503 = call i8* @AscReadLramByte(i32 %501, i64 %502)
  %504 = ptrtoint i8* %503 to i32
  store i32 %504, i32* %8, align 4
  %505 = load i32, i32* %9, align 4
  %506 = xor i32 %505, -1
  %507 = load i32, i32* %8, align 4
  %508 = and i32 %507, %506
  store i32 %508, i32* %8, align 4
  %509 = load i32, i32* %10, align 4
  %510 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %511 = load i32, i32* %8, align 4
  %512 = sext i32 %511 to i64
  %513 = call i32 @AscWriteLramByte(i32 %509, i64 %510, i64 %512)
  %514 = load i32, i32* %10, align 4
  %515 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %516 = call i32 @AscWriteLramWord(i32 %514, i32 %515, i32 0)
  br label %667

517:                                              ; preds = %399
  %518 = load i64, i64* %7, align 8
  %519 = load i64, i64* @ASC_HALT_SDTR_REJECTED, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %577

521:                                              ; preds = %517
  %522 = load i32, i32* %10, align 4
  %523 = load i32, i32* @ASCV_MSGOUT_BEG, align 4
  %524 = bitcast %struct.TYPE_6__* %4 to i64*
  %525 = call i32 @AscMemWordCopyPtrFromLram(i32 %522, i32 %523, i64* %524, i32 24)
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* @EXTENDED_MESSAGE, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %530, label %563

530:                                              ; preds = %521
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %532 = load i64, i64* %531, align 8
  %533 = load i64, i64* @MS_SDTR_LEN, align 8
  %534 = icmp eq i64 %532, %533
  br i1 %534, label %535, label %563

535:                                              ; preds = %530
  %536 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %537 = load i64, i64* %536, align 8
  %538 = load i64, i64* @EXTENDED_SDTR, align 8
  %539 = icmp eq i64 %537, %538
  br i1 %539, label %540, label %563

540:                                              ; preds = %535
  %541 = load i32, i32* %9, align 4
  %542 = xor i32 %541, -1
  %543 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i32 0, i32 4
  %545 = load i32, i32* %544, align 8
  %546 = and i32 %545, %542
  store i32 %546, i32* %544, align 8
  %547 = load i32, i32* %9, align 4
  %548 = xor i32 %547, -1
  %549 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %550 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %549, i32 0, i32 5
  %551 = load i32, i32* %550, align 4
  %552 = and i32 %551, %548
  store i32 %552, i32* %550, align 4
  %553 = load i32, i32* %10, align 4
  %554 = load i64, i64* %19, align 8
  %555 = load i64, i64* %17, align 8
  %556 = call i32 @AscSetChipSDTR(i32 %553, i64 %554, i64 %555)
  %557 = load i64, i64* %19, align 8
  %558 = load %struct.asc_board*, %struct.asc_board** %21, align 8
  %559 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %558, i32 0, i32 0
  %560 = load i64*, i64** %559, align 8
  %561 = load i64, i64* %17, align 8
  %562 = getelementptr inbounds i64, i64* %560, i64 %561
  store i64 %557, i64* %562, align 8
  br label %563

563:                                              ; preds = %540, %535, %530, %521
  %564 = load i64, i64* @QC_MSG_OUT, align 8
  %565 = xor i64 %564, -1
  %566 = load i64, i64* %16, align 8
  %567 = and i64 %566, %565
  store i64 %567, i64* %16, align 8
  %568 = load i32, i32* %10, align 4
  %569 = load i64, i64* %5, align 8
  %570 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %571 = add nsw i64 %569, %570
  %572 = load i64, i64* %16, align 8
  %573 = call i32 @AscWriteLramByte(i32 %568, i64 %571, i64 %572)
  %574 = load i32, i32* %10, align 4
  %575 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %576 = call i32 @AscWriteLramWord(i32 %574, i32 %575, i32 0)
  br label %667

577:                                              ; preds = %517
  %578 = load i64, i64* %7, align 8
  %579 = load i64, i64* @ASC_HALT_SS_QUEUE_FULL, align 8
  %580 = icmp eq i64 %578, %579
  br i1 %580, label %581, label %661

581:                                              ; preds = %577
  %582 = load i32, i32* %10, align 4
  %583 = load i64, i64* %5, align 8
  %584 = load i64, i64* @ASC_SCSIQ_SCSI_STATUS, align 8
  %585 = add nsw i64 %583, %584
  %586 = call i8* @AscReadLramByte(i32 %582, i64 %585)
  %587 = ptrtoint i8* %586 to i64
  store i64 %587, i64* %20, align 8
  %588 = load i32, i32* %10, align 4
  %589 = load i64, i64* @ASC_QADR_BEG, align 8
  %590 = load i64, i64* %15, align 8
  %591 = add nsw i64 %589, %590
  %592 = call i8* @AscReadLramByte(i32 %588, i64 %591)
  %593 = ptrtoint i8* %592 to i64
  store i64 %593, i64* %18, align 8
  %594 = load i64, i64* %18, align 8
  %595 = icmp ugt i64 %594, 0
  br i1 %595, label %596, label %657

596:                                              ; preds = %581
  %597 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %598 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %597, i32 0, i32 7
  %599 = load i64*, i64** %598, align 8
  %600 = load i64, i64* %17, align 8
  %601 = getelementptr inbounds i64, i64* %599, i64 %600
  %602 = load i64, i64* %601, align 8
  %603 = icmp sgt i64 %602, 0
  br i1 %603, label %604, label %657

604:                                              ; preds = %596
  %605 = load i32, i32* %10, align 4
  %606 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %607 = call i8* @AscReadLramByte(i32 %605, i64 %606)
  %608 = ptrtoint i8* %607 to i32
  store i32 %608, i32* %8, align 4
  %609 = load i32, i32* %9, align 4
  %610 = load i32, i32* %8, align 4
  %611 = or i32 %610, %609
  store i32 %611, i32* %8, align 4
  %612 = load i32, i32* %10, align 4
  %613 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %614 = load i32, i32* %8, align 4
  %615 = sext i32 %614 to i64
  %616 = call i32 @AscWriteLramByte(i32 %612, i64 %613, i64 %615)
  %617 = load i32, i32* %9, align 4
  %618 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %619 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %618, i32 0, i32 8
  %620 = load i32, i32* %619, align 8
  %621 = or i32 %620, %617
  store i32 %621, i32* %619, align 8
  %622 = load i64, i64* %20, align 8
  %623 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %624 = icmp eq i64 %622, %623
  br i1 %624, label %625, label %656

625:                                              ; preds = %604
  %626 = load i64, i64* %18, align 8
  %627 = load i64, i64* @ASC_MIN_TAGGED_CMD, align 8
  %628 = icmp ugt i64 %626, %627
  br i1 %628, label %629, label %655

629:                                              ; preds = %625
  %630 = load i64, i64* %18, align 8
  %631 = sub i64 %630, 1
  store i64 %631, i64* %18, align 8
  %632 = load i64, i64* %18, align 8
  %633 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %634 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %633, i32 0, i32 9
  %635 = load i64*, i64** %634, align 8
  %636 = load i64, i64* %17, align 8
  %637 = getelementptr inbounds i64, i64* %635, i64 %636
  store i64 %632, i64* %637, align 8
  %638 = load i32, i32* %10, align 4
  %639 = load i64, i64* @ASCV_MAX_DVC_QNG_BEG, align 8
  %640 = load i64, i64* %17, align 8
  %641 = add nsw i64 %639, %640
  %642 = load i64, i64* %18, align 8
  %643 = call i32 @AscWriteLramByte(i32 %638, i64 %641, i64 %642)
  %644 = load i32, i32* %9, align 4
  %645 = load %struct.asc_board*, %struct.asc_board** %21, align 8
  %646 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 8
  %648 = or i32 %647, %644
  store i32 %648, i32* %646, align 8
  %649 = load i64, i64* %18, align 8
  %650 = load %struct.asc_board*, %struct.asc_board** %21, align 8
  %651 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %650, i32 0, i32 2
  %652 = load i64*, i64** %651, align 8
  %653 = load i64, i64* %17, align 8
  %654 = getelementptr inbounds i64, i64* %652, i64 %653
  store i64 %649, i64* %654, align 8
  br label %655

655:                                              ; preds = %629, %625
  br label %656

656:                                              ; preds = %655, %604
  br label %657

657:                                              ; preds = %656, %596, %581
  %658 = load i32, i32* %10, align 4
  %659 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %660 = call i32 @AscWriteLramWord(i32 %658, i32 %659, i32 0)
  br label %667

661:                                              ; preds = %577
  br label %662

662:                                              ; preds = %661
  br label %663

663:                                              ; preds = %662
  br label %664

664:                                              ; preds = %663
  br label %665

665:                                              ; preds = %664
  br label %666

666:                                              ; preds = %665
  br label %667

667:                                              ; preds = %666, %657, %563, %477, %380, %362, %337, %116, %90
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @AscReadLramWord(i32, i32) #1

declare dso_local i8* @AscReadLramByte(i32, i64) #1

declare dso_local i64 @ASC_QNO_TO_QADDR(i64) #1

declare dso_local i64 @ASC_TIX_TO_TID(i64) #1

declare dso_local i64 @ASC_TID_TO_TARGET_ID(i64) #1

declare dso_local i32 @AscSetChipSDTR(i32, i64, i64) #1

declare dso_local i32 @AscWriteLramWord(i32, i32, i32) #1

declare dso_local i32 @AscMemWordCopyPtrFromLram(i32, i32, i64*, i32) #1

declare dso_local i64 @AscCalSDTRData(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @AscMsgOutSDTR(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @AscWriteLramByte(i32, i64, i64) #1

declare dso_local i32 @AscMemWordCopyPtrToLram(i32, i32, i64*, i32) #1

declare dso_local i64 @AscGetMCodeInitSDTRAtID(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
