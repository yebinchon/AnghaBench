; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscIsrQDone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscIsrQDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64*, i64, i64*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i64, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@ASC_SCSIQ_B_FWD = common dso_local global i64 0, align 8
@ASC_QLINK_END = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_STATUS = common dso_local global i64 0, align 8
@QS_READY = common dso_local global i32 0, align 4
@QS_ABORTED = common dso_local global i32 0, align 4
@QC_SG_HEAD = common dso_local global i32 0, align 4
@ASCQ_ERR_SG_Q_LINKS = common dso_local global i32 0, align 4
@QD_WITH_ERROR = common dso_local global i64 0, align 8
@QHSTA_D_QDONE_SG_LIST_CORRUPTED = common dso_local global i64 0, align 8
@QS_FREE = common dso_local global i32 0, align 4
@ASC_QADR_BEG = common dso_local global i64 0, align 8
@ASCV_SCSIBUSY_B = common dso_local global i64 0, align 8
@ASCQ_ERR_CUR_QNG = common dso_local global i32 0, align 4
@QS_DONE = common dso_local global i32 0, align 4
@QHSTA_M_DATA_OVER_RUN = common dso_local global i64 0, align 8
@QC_DATA_IN = common dso_local global i32 0, align 4
@QC_DATA_OUT = common dso_local global i32 0, align 4
@QD_NO_ERROR = common dso_local global i64 0, align 8
@QHSTA_NO_ERROR = common dso_local global i8* null, align 8
@QHSTA_M_HUNG_REQ_SCSI_BUS_RESET = common dso_local global i64 0, align 8
@CC_SCSI_RESET = common dso_local global i64 0, align 8
@CC_HALT = common dso_local global i64 0, align 8
@CIW_CLR_SCSI_RESET_INT = common dso_local global i32 0, align 4
@QC_NO_CALLBACK = common dso_local global i32 0, align 4
@ASC_SCSIQ_CDB_BEG = common dso_local global i64 0, align 8
@START_STOP = common dso_local global i8* null, align 8
@ASCQ_ERR_Q_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @AscIsrQDone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscIsrQDone(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  store i64 1, i64* %5, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %18, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @AscGetVarDoneQTail(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @ASC_QNO_TO_QADDR(i64 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i8* @AscReadLramByte(i32 %27, i64 %30)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ASC_QLINK_END, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %379

36:                                               ; preds = %1
  %37 = load i32, i32* %13, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @AscPutVarDoneQTail(i32 %37, i64 %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @ASC_QNO_TO_QADDR(i64 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @_AscCopyLramScsiDoneQ(i32 %42, i64 %43, %struct.TYPE_12__* %44, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @ASC_SCSIQ_B_STATUS, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @QS_READY, align 4
  %57 = load i32, i32* @QS_ABORTED, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = and i64 %55, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @AscWriteLramByte(i32 %49, i64 %52, i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ASC_TIX_TO_TID(i64 %67)
  store i64 %68, i64* %10, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ASC_TIX_TO_TARGET_ID(i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @QC_SG_HEAD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %36
  %81 = load i64, i64* %14, align 8
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %4, align 8
  store i64 %82, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %83

83:                                               ; preds = %118, %80
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i8* @AscReadLramByte(i32 %88, i64 %91)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @ASC_QNO_TO_QADDR(i64 %94)
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @ASC_QLINK_END, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %87
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = load i32, i32* @ASCQ_ERR_SG_Q_LINKS, align 4
  %102 = call i32 @AscSetLibErrorCode(%struct.TYPE_13__* %100, i32 %101)
  %103 = load i64, i64* @QD_WITH_ERROR, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* @QHSTA_D_QDONE_SG_LIST_CORRUPTED, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  br label %367

111:                                              ; preds = %87
  %112 = load i32, i32* %13, align 4
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* @ASC_SCSIQ_B_STATUS, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32, i32* @QS_FREE, align 4
  %117 = call i32 @AscWriteLramByte(i32 %112, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %111
  %119 = load i64, i64* %8, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %83

121:                                              ; preds = %83
  %122 = load i64, i64* %7, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %5, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @AscPutVarDoneQTail(i32 %124, i64 %125)
  br label %127

127:                                              ; preds = %121, %36
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %172

134:                                              ; preds = %127
  %135 = load i32, i32* %13, align 4
  %136 = load i64, i64* @ASC_QADR_BEG, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %136, %140
  %142 = call i8* @AscReadLramByte(i32 %135, i64 %141)
  %143 = ptrtoint i8* %142 to i64
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %144, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %134
  %153 = load i32, i32* %13, align 4
  %154 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %155 = call i8* @AscReadLramByte(i32 %153, i64 %154)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %11, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @AscWriteLramByte(i32 %161, i64 %162, i32 %163)
  %165 = load i32, i32* %12, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %152, %134
  br label %172

172:                                              ; preds = %171, %127
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %5, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %172
  %179 = load i64, i64* %5, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %178
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, -1
  store i64 %198, i64* %196, align 8
  br label %199

199:                                              ; preds = %191, %178
  br label %208

200:                                              ; preds = %172
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %202 = load i32, i32* @ASCQ_ERR_CUR_QNG, align 4
  %203 = call i32 @AscSetLibErrorCode(%struct.TYPE_13__* %201, i32 %202)
  %204 = load i64, i64* @QD_WITH_ERROR, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  store i64 %204, i64* %207, align 8
  br label %367

208:                                              ; preds = %199
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @QS_ABORTED, align 4
  %219 = sext i32 %218 to i64
  %220 = and i64 %217, %219
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214, %208
  store i32 17, i32* %2, align 4
  br label %380

223:                                              ; preds = %214
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @QS_DONE, align 4
  %228 = sext i32 %227 to i64
  %229 = icmp eq i64 %226, %228
  br i1 %229, label %230, label %363

230:                                              ; preds = %223
  store i32 0, i32* %19, align 4
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %230
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %238
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %240, align 8
  br label %245

245:                                              ; preds = %235, %230
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @QD_WITH_ERROR, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %321

252:                                              ; preds = %245
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @QHSTA_M_DATA_OVER_RUN, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %293

259:                                              ; preds = %252
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @QC_DATA_IN, align 4
  %264 = load i32, i32* @QC_DATA_OUT, align 4
  %265 = or i32 %263, %264
  %266 = and i32 %262, %265
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %259
  %269 = load i64, i64* @QD_NO_ERROR, align 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  store i64 %269, i64* %272, align 8
  %273 = load i8*, i8** @QHSTA_NO_ERROR, align 8
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 1
  store i64 %274, i64* %277, align 8
  br label %292

278:                                              ; preds = %259
  %279 = load i32, i32* %19, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %278
  %282 = load i64, i64* @QD_NO_ERROR, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  store i64 %282, i64* %285, align 8
  %286 = load i8*, i8** @QHSTA_NO_ERROR, align 8
  %287 = ptrtoint i8* %286 to i64
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 1
  store i64 %287, i64* %290, align 8
  br label %291

291:                                              ; preds = %281, %278
  br label %292

292:                                              ; preds = %291, %268
  br label %320

293:                                              ; preds = %252
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @QHSTA_M_HUNG_REQ_SCSI_BUS_RESET, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %319

300:                                              ; preds = %293
  %301 = load i32, i32* %13, align 4
  %302 = call i32 @AscStopChip(i32 %301)
  %303 = load i32, i32* %13, align 4
  %304 = load i64, i64* @CC_SCSI_RESET, align 8
  %305 = load i64, i64* @CC_HALT, align 8
  %306 = or i64 %304, %305
  %307 = call i32 @AscSetChipControl(i32 %303, i64 %306)
  %308 = call i32 @udelay(i32 60)
  %309 = load i32, i32* %13, align 4
  %310 = load i64, i64* @CC_HALT, align 8
  %311 = call i32 @AscSetChipControl(i32 %309, i64 %310)
  %312 = load i32, i32* %13, align 4
  %313 = load i32, i32* @CIW_CLR_SCSI_RESET_INT, align 4
  %314 = call i32 @AscSetChipStatus(i32 %312, i32 %313)
  %315 = load i32, i32* %13, align 4
  %316 = call i32 @AscSetChipStatus(i32 %315, i32 0)
  %317 = load i32, i32* %13, align 4
  %318 = call i32 @AscSetChipControl(i32 %317, i64 0)
  br label %319

319:                                              ; preds = %300, %293
  br label %320

320:                                              ; preds = %319, %292
  br label %321

321:                                              ; preds = %320, %245
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @QC_NO_CALLBACK, align 4
  %326 = and i32 %324, %325
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %321
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %331 = call i32 @asc_isr_callback(%struct.TYPE_13__* %329, %struct.TYPE_12__* %330)
  br label %362

332:                                              ; preds = %321
  %333 = load i32, i32* %13, align 4
  %334 = load i64, i64* %14, align 8
  %335 = load i64, i64* @ASC_SCSIQ_CDB_BEG, align 8
  %336 = add nsw i64 %334, %335
  %337 = call i8* @AscReadLramByte(i32 %333, i64 %336)
  %338 = load i8*, i8** @START_STOP, align 8
  %339 = icmp eq i8* %337, %338
  br i1 %339, label %340, label %361

340:                                              ; preds = %332
  %341 = load i32, i32* %12, align 4
  %342 = xor i32 %341, -1
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = and i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @QD_NO_ERROR, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %360

353:                                              ; preds = %340
  %354 = load i32, i32* %12, align 4
  %355 = xor i32 %354, -1
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 4
  %359 = and i32 %358, %355
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %353, %340
  br label %361

361:                                              ; preds = %360, %332
  br label %362

362:                                              ; preds = %361, %328
  store i32 1, i32* %2, align 4
  br label %380

363:                                              ; preds = %223
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %365 = load i32, i32* @ASCQ_ERR_Q_STATUS, align 4
  %366 = call i32 @AscSetLibErrorCode(%struct.TYPE_13__* %364, i32 %365)
  br label %367

367:                                              ; preds = %363, %200, %99
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @QC_NO_CALLBACK, align 4
  %372 = and i32 %370, %371
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %367
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %377 = call i32 @asc_isr_callback(%struct.TYPE_13__* %375, %struct.TYPE_12__* %376)
  br label %378

378:                                              ; preds = %374, %367
  store i32 128, i32* %2, align 4
  br label %380

379:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %380

380:                                              ; preds = %379, %378, %362, %222
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

declare dso_local i64 @AscGetVarDoneQTail(i32) #1

declare dso_local i64 @ASC_QNO_TO_QADDR(i64) #1

declare dso_local i8* @AscReadLramByte(i32, i64) #1

declare dso_local i32 @AscPutVarDoneQTail(i32, i64) #1

declare dso_local i64 @_AscCopyLramScsiDoneQ(i32, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @AscWriteLramByte(i32, i64, i32) #1

declare dso_local i64 @ASC_TIX_TO_TID(i64) #1

declare dso_local i32 @ASC_TIX_TO_TARGET_ID(i64) #1

declare dso_local i32 @AscSetLibErrorCode(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AscStopChip(i32) #1

declare dso_local i32 @AscSetChipControl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AscSetChipStatus(i32, i32) #1

declare dso_local i32 @asc_isr_callback(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
