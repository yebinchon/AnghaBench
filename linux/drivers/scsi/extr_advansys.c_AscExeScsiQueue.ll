; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscExeScsiQueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscExeScsiQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, i64, i32, i32, i32, i32*, i32 }
%struct.TYPE_18__ = type { i64*, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }

@ASC_ERROR = common dso_local global i32 0, align 4
@ASC_TAG_FLAG_EXTRA_BYTES = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i64 0, align 8
@ASC_SYN_MAX_OFFSET = common dso_local global i64 0, align 8
@QC_MSG_OUT = common dso_local global i32 0, align 4
@QC_URGENT = common dso_local global i32 0, align 4
@ASCQ_ERR_CRITICAL_RE_ENTRY = common dso_local global i32 0, align 4
@QC_SG_HEAD = common dso_local global i32 0, align 4
@ASC_MAX_SG_LIST = common dso_local global i32 0, align 4
@QC_SG_SWAP_QUEUE = common dso_local global i32 0, align 4
@ASC_SYN_OFFSET_ONE_DISABLE_LIST = common dso_local global i32 0, align 4
@_syn_offset_one_disable_cmd = common dso_local global i32* null, align 8
@SIMPLE_QUEUE_TAG = common dso_local global i32 0, align 4
@ASC_TAG_FLAG_DISABLE_ASYN_USE_SYN_FIX = common dso_local global i32 0, align 4
@ASC_TAG_FLAG_DISABLE_DISCONNECT = common dso_local global i32 0, align 4
@ASC_BUG_FIX_IF_NOT_DWB = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @AscExeScsiQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscExeScsiQueue(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %20, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @ASC_ERROR, align 4
  store i32 %33, i32* %3, align 4
  br label %561

34:                                               ; preds = %2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ASC_TAG_FLAG_EXTRA_BYTES, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %34
  store i32 0, i32* %7, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ASC_TIX_TO_TID(i32 %54)
  store i32 %55, i32* %15, align 4
  store i32 1, i32* %8, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @REQUEST_SENSE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %49
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %66, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %63
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @AscGetMCodeInitSDTRAtID(i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = ashr i32 %90, 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = and i32 %91, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %89, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i64, i64* @ASC_SYN_MAX_OFFSET, align 8
  %102 = trunc i64 %101 to i32
  %103 = and i32 %100, %102
  %104 = call i32 @AscMsgOutSDTR(%struct.TYPE_19__* %86, i32 %99, i32 %103)
  %105 = load i32, i32* @QC_MSG_OUT, align 4
  %106 = load i32, i32* @QC_URGENT, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %73, %63
  br label %114

114:                                              ; preds = %113, %49
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = load i32, i32* @ASCQ_ERR_CRITICAL_RE_ENTRY, align 4
  %122 = call i32 @AscSetLibErrorCode(%struct.TYPE_19__* %120, i32 %121)
  %123 = load i32, i32* @ASC_ERROR, align 4
  store i32 %123, i32* %3, align 4
  br label %561

124:                                              ; preds = %114
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @QC_SG_HEAD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %195

136:                                              ; preds = %124
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %12, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, -1
  store i64 %145, i64* %143, align 8
  %146 = load i32, i32* @ASC_ERROR, align 4
  store i32 %146, i32* %3, align 4
  br label %561

147:                                              ; preds = %136
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @ASC_MAX_SG_LIST, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, -1
  store i64 %155, i64* %153, align 8
  %156 = load i32, i32* @ASC_ERROR, align 4
  store i32 %156, i32* %3, align 4
  br label %561

157:                                              ; preds = %147
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %192

160:                                              ; preds = %157
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i8* @cpu_to_le32(i64 %166)
  %168 = ptrtoint i8* %167 to i64
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  store i64 %168, i64* %171, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i8* @cpu_to_le32(i64 %177)
  %179 = ptrtoint i8* %178 to i64
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 4
  store i64 %179, i64* %182, align 8
  %183 = load i32, i32* @QC_SG_HEAD, align 4
  %184 = load i32, i32* @QC_SG_SWAP_QUEUE, align 4
  %185 = or i32 %183, %184
  %186 = xor i32 %185, -1
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %186
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %160, %157
  %193 = load i32, i32* %12, align 4
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %192, %124
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 0
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %18, align 4
  store i32 0, i32* %9, align 4
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %204, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %289

211:                                              ; preds = %195
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %214, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %289, label %221

221:                                              ; preds = %211
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @QC_SG_HEAD, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %250

229:                                              ; preds = %221
  store i64 0, i64* %21, align 8
  store i32 0, i32* %10, align 4
  br label %230

230:                                              ; preds = %246, %229
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %12, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %230
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = call i64 @le32_to_cpu(i64 %242)
  %244 = load i64, i64* %21, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %21, align 8
  br label %246

246:                                              ; preds = %234
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %10, align 4
  br label %230

249:                                              ; preds = %230
  br label %256

250:                                              ; preds = %221
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @le32_to_cpu(i64 %254)
  store i64 %255, i64* %21, align 8
  br label %256

256:                                              ; preds = %250, %249
  %257 = load i64, i64* %21, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %288

259:                                              ; preds = %256
  %260 = load i64, i64* %21, align 8
  %261 = icmp ult i64 %260, 512
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 1, i32* %9, align 4
  br label %287

263:                                              ; preds = %259
  store i32 0, i32* %10, align 4
  br label %264

264:                                              ; preds = %283, %263
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @ASC_SYN_OFFSET_ONE_DISABLE_LIST, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %286

268:                                              ; preds = %264
  %269 = load i32*, i32** @_syn_offset_one_disable_cmd, align 8
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %19, align 4
  %274 = load i32, i32* %19, align 4
  %275 = icmp eq i32 %274, 255
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  br label %286

277:                                              ; preds = %268
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* %19, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %277
  store i32 1, i32* %9, align 4
  br label %286

282:                                              ; preds = %277
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %10, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %10, align 4
  br label %264

286:                                              ; preds = %281, %276, %264
  br label %287

287:                                              ; preds = %286, %262
  br label %288

288:                                              ; preds = %287, %256
  br label %289

289:                                              ; preds = %288, %211, %195
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %308

292:                                              ; preds = %289
  %293 = load i32, i32* @SIMPLE_QUEUE_TAG, align 4
  %294 = xor i32 %293, -1
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = and i32 %298, %294
  store i32 %299, i32* %297, align 8
  %300 = load i32, i32* @ASC_TAG_FLAG_DISABLE_ASYN_USE_SYN_FIX, align 4
  %301 = load i32, i32* @ASC_TAG_FLAG_DISABLE_DISCONNECT, align 4
  %302 = or i32 %300, %301
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %302
  store i32 %307, i32* %305, align 8
  br label %314

308:                                              ; preds = %289
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, 39
  store i32 %313, i32* %311, align 8
  br label %314

314:                                              ; preds = %308, %292
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @QC_SG_HEAD, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %448

322:                                              ; preds = %314
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 7
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %412

327:                                              ; preds = %322
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @ASC_BUG_FIX_IF_NOT_DWB, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %411

334:                                              ; preds = %327
  %335 = load i32, i32* %18, align 4
  %336 = load i32, i32* @READ_6, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = load i32, i32* %18, align 4
  %340 = load i32, i32* @READ_10, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %410

342:                                              ; preds = %338, %334
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %344, align 8
  %346 = load i32, i32* %13, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = call i64 @le32_to_cpu(i64 %350)
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %353, align 8
  %355 = load i32, i32* %13, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = call i64 @le32_to_cpu(i64 %359)
  %361 = add i64 %351, %360
  store i64 %361, i64* %11, align 8
  %362 = load i64, i64* %11, align 8
  %363 = trunc i64 %362 to i32
  %364 = and i32 %363, 3
  store i32 %364, i32* %17, align 4
  %365 = load i32, i32* %17, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %409

367:                                              ; preds = %342
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @ASC_TAG_FLAG_EXTRA_BYTES, align 4
  %373 = and i32 %371, %372
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %409

375:                                              ; preds = %367
  %376 = load i32, i32* @ASC_TAG_FLAG_EXTRA_BYTES, align 4
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %376
  store i32 %381, i32* %379, align 8
  %382 = load i32, i32* %17, align 4
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 0
  store i32 %382, i32* %385, align 8
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 2
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %387, align 8
  %389 = load i32, i32* %13, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = call i64 @le32_to_cpu(i64 %393)
  store i64 %394, i64* %21, align 8
  %395 = load i32, i32* %17, align 4
  %396 = sext i32 %395 to i64
  %397 = load i64, i64* %21, align 8
  %398 = sub i64 %397, %396
  store i64 %398, i64* %21, align 8
  %399 = load i64, i64* %21, align 8
  %400 = call i8* @cpu_to_le32(i64 %399)
  %401 = ptrtoint i8* %400 to i64
  %402 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %403 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i32 0, i32 2
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %403, align 8
  %405 = load i32, i32* %13, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 1
  store i64 %401, i64* %408, align 8
  br label %409

409:                                              ; preds = %375, %367, %342
  br label %410

410:                                              ; preds = %409, %338
  br label %411

411:                                              ; preds = %410, %327
  br label %412

412:                                              ; preds = %411, %322
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 1
  store i32 %415, i32* %417, align 4
  %418 = load i32, i32* %12, align 4
  %419 = call i32 @AscSgListToQueue(i32 %418)
  store i32 %419, i32* %8, align 4
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %421 = load i32, i32* %14, align 4
  %422 = load i32, i32* %8, align 4
  %423 = call i32 @AscGetNumOfFreeQueue(%struct.TYPE_19__* %420, i32 %421, i32 %422)
  %424 = load i32, i32* %8, align 4
  %425 = icmp sge i32 %423, %424
  br i1 %425, label %434, label %426

426:                                              ; preds = %412
  %427 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @QC_URGENT, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %447

434:                                              ; preds = %426, %412
  %435 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %437 = load i32, i32* %8, align 4
  %438 = call i32 @AscSendScsiQueue(%struct.TYPE_19__* %435, %struct.TYPE_18__* %436, i32 %437)
  store i32 %438, i32* %7, align 4
  %439 = icmp eq i32 %438, 1
  br i1 %439, label %440, label %446

440:                                              ; preds = %434
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 4
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %443, -1
  store i64 %444, i64* %442, align 8
  %445 = load i32, i32* %7, align 4
  store i32 %445, i32* %3, align 4
  br label %561

446:                                              ; preds = %434
  br label %447

447:                                              ; preds = %446, %426
  br label %555

448:                                              ; preds = %314
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 7
  %451 = load i32, i32* %450, align 8
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %528

453:                                              ; preds = %448
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %454, i32 0, i32 7
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* @ASC_BUG_FIX_IF_NOT_DWB, align 4
  %458 = and i32 %456, %457
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %527

460:                                              ; preds = %453
  %461 = load i32, i32* %18, align 4
  %462 = load i32, i32* @READ_6, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %468, label %464

464:                                              ; preds = %460
  %465 = load i32, i32* %18, align 4
  %466 = load i32, i32* @READ_10, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %526

468:                                              ; preds = %464, %460
  %469 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %470, i32 0, i32 3
  %472 = load i64, i64* %471, align 8
  %473 = call i64 @le32_to_cpu(i64 %472)
  %474 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %475, i32 0, i32 4
  %477 = load i64, i64* %476, align 8
  %478 = call i64 @le32_to_cpu(i64 %477)
  %479 = add i64 %473, %478
  store i64 %479, i64* %11, align 8
  %480 = load i64, i64* %11, align 8
  %481 = trunc i64 %480 to i32
  %482 = and i32 %481, 3
  store i32 %482, i32* %17, align 4
  %483 = load i32, i32* %17, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %525

485:                                              ; preds = %468
  %486 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* @ASC_TAG_FLAG_EXTRA_BYTES, align 4
  %491 = and i32 %489, %490
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %525

493:                                              ; preds = %485
  %494 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %495, i32 0, i32 4
  %497 = load i64, i64* %496, align 8
  %498 = call i64 @le32_to_cpu(i64 %497)
  store i64 %498, i64* %21, align 8
  %499 = load i64, i64* %21, align 8
  %500 = trunc i64 %499 to i32
  %501 = and i32 %500, 511
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %524

503:                                              ; preds = %493
  %504 = load i32, i32* @ASC_TAG_FLAG_EXTRA_BYTES, align 4
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i32 0, i32 2
  %507 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = or i32 %508, %504
  store i32 %509, i32* %507, align 8
  %510 = load i32, i32* %17, align 4
  %511 = sext i32 %510 to i64
  %512 = load i64, i64* %21, align 8
  %513 = sub i64 %512, %511
  store i64 %513, i64* %21, align 8
  %514 = load i64, i64* %21, align 8
  %515 = call i8* @cpu_to_le32(i64 %514)
  %516 = ptrtoint i8* %515 to i64
  %517 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %518 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %518, i32 0, i32 4
  store i64 %516, i64* %519, align 8
  %520 = load i32, i32* %17, align 4
  %521 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %522 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %522, i32 0, i32 0
  store i32 %520, i32* %523, align 8
  br label %524

524:                                              ; preds = %503, %493
  br label %525

525:                                              ; preds = %524, %485, %468
  br label %526

526:                                              ; preds = %525, %464
  br label %527

527:                                              ; preds = %526, %453
  br label %528

528:                                              ; preds = %527, %448
  store i32 1, i32* %8, align 4
  %529 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %530 = load i32, i32* %14, align 4
  %531 = call i32 @AscGetNumOfFreeQueue(%struct.TYPE_19__* %529, i32 %530, i32 1)
  %532 = icmp sge i32 %531, 1
  br i1 %532, label %541, label %533

533:                                              ; preds = %528
  %534 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %535 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @QC_URGENT, align 4
  %539 = and i32 %537, %538
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %554

541:                                              ; preds = %533, %528
  %542 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %543 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %544 = load i32, i32* %8, align 4
  %545 = call i32 @AscSendScsiQueue(%struct.TYPE_19__* %542, %struct.TYPE_18__* %543, i32 %544)
  store i32 %545, i32* %7, align 4
  %546 = icmp eq i32 %545, 1
  br i1 %546, label %547, label %553

547:                                              ; preds = %541
  %548 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %548, i32 0, i32 4
  %550 = load i64, i64* %549, align 8
  %551 = add nsw i64 %550, -1
  store i64 %551, i64* %549, align 8
  %552 = load i32, i32* %7, align 4
  store i32 %552, i32* %3, align 4
  br label %561

553:                                              ; preds = %541
  br label %554

554:                                              ; preds = %553, %533
  br label %555

555:                                              ; preds = %554, %447
  %556 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %556, i32 0, i32 4
  %558 = load i64, i64* %557, align 8
  %559 = add nsw i64 %558, -1
  store i64 %559, i64* %557, align 8
  %560 = load i32, i32* %7, align 4
  store i32 %560, i32* %3, align 4
  br label %561

561:                                              ; preds = %555, %547, %440, %151, %141, %119, %32
  %562 = load i32, i32* %3, align 4
  ret i32 %562
}

declare dso_local i32 @ASC_TIX_TO_TID(i32) #1

declare dso_local i32 @AscGetMCodeInitSDTRAtID(i32, i32) #1

declare dso_local i32 @AscMsgOutSDTR(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @AscSetLibErrorCode(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @AscSgListToQueue(i32) #1

declare dso_local i32 @AscGetNumOfFreeQueue(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @AscSendScsiQueue(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
