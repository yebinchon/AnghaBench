; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_omsg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_omsg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.rio_mport }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i8*, i64, i64* }
%struct.TYPE_5__ = type { i32 }
%struct.rio_mport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rio_mport*, i8*, i32, i32)* }

@TSI721_OBDMAC_INT_ST_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"OB MBOX%d: Status FIFO is full\00", align 1
@TSI721_OBDMAC_INT_DONE = common dso_local global i32 0, align 4
@TSI721_OBDMAC_INT_IOF_DONE = common dso_local global i32 0, align 4
@OMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"OB_MSG tx_slot=%x > size=%x\00", align 1
@TSI721_OBDMAC_INT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"OB MSG ABORT ch_stat=%x\00", align 1
@TSI721_OBDMAC_CTL_RETRY_THR = common dso_local global i32 0, align 4
@TSI721_OBDMAC_CTL_INIT = common dso_local global i32 0, align 4
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@TSI721_DEV_CHAN_INTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_device*, i32)* @tsi721_omsg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_omsg_handler(%struct.tsi721_device* %0, i32 %1) #0 {
  %3 = alloca %struct.tsi721_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tsi721_device* %0, %struct.tsi721_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %18 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %17, i32 0, i32 4
  store %struct.rio_mport* %18, %struct.rio_mport** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %20 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %28 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @TSI721_OBDMAC_INT(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @ioread32(i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TSI721_OBDMAC_INT_ST_FULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %40 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @tsi_info(i32* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %2
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @TSI721_OBDMAC_INT_DONE, align 4
  %48 = load i32, i32* @TSI721_OBDMAC_INT_IOF_DONE, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %257

52:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %53 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %54 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  %61 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %62 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 8
  %68 = load i64*, i64** %67, align 8
  store i64* %68, i64** %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %69, 8
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %108, %52
  %72 = load i64*, i64** %11, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %103, %78
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i64*, i64** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %82, %79
  %90 = phi i1 [ false, %79 ], [ %88, %82 ]
  br i1 %90, label %91, label %108

91:                                               ; preds = %89
  %92 = load i64, i64* %12, align 8
  store i64 %92, i64* %13, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @le64_to_cpu(i64 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64*, i64** %11, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %79

108:                                              ; preds = %89
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %112 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = srem i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 8
  store i32 %122, i32* %15, align 4
  br label %71

123:                                              ; preds = %71
  %124 = load i64, i64* %12, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %258

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %130 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %128, i32* %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %138 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i64 @TSI721_OBDMAC_DSRP(i32 %140)
  %142 = add nsw i64 %139, %141
  %143 = call i32 @iowrite32(i32 %136, i64 %142)
  %144 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %145 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32 (%struct.rio_mport*, i8*, i32, i32)*, i32 (%struct.rio_mport*, i8*, i32, i32)** %150, align 8
  %152 = icmp ne i32 (%struct.rio_mport*, i8*, i32, i32)* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %127
  br label %258

154:                                              ; preds = %127
  %155 = load i64, i64* %12, align 8
  %156 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %157 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %155, %163
  %165 = udiv i64 %164, 4
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %169 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %167, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %154
  %178 = load i64, i64* %13, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load i64, i64* %13, align 8
  %182 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %183 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %181, %189
  %191 = udiv i64 %190, 4
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %8, align 4
  br label %194

193:                                              ; preds = %177
  br label %258

194:                                              ; preds = %180
  br label %195

195:                                              ; preds = %194, %154
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %198 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp sge i32 %196, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %195
  %207 = load i32, i32* @OMSG, align 4
  %208 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %209 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %208, i32 0, i32 3
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %214 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %213, i32 0, i32 1
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i32, i32*, i8*, i32, ...) @tsi_debug(i32 %207, i32* %211, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %212, i32 %220)
  br label %222

222:                                              ; preds = %206, %195
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %225 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %224, i32 0, i32 1
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp sge i32 %223, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @WARN_ON(i32 %233)
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %239 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %238, i32 0, i32 1
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %237, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %222
  store i32 0, i32* %8, align 4
  br label %248

248:                                              ; preds = %247, %222
  %249 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %250 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %249, i32 0, i32 1
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 6
  %256 = load i8*, i8** %255, align 8
  store i8* %256, i8** %7, align 8
  store i32 1, i32* %9, align 4
  br label %257

257:                                              ; preds = %248, %45
  br label %258

258:                                              ; preds = %257, %193, %153, %126
  %259 = load i32, i32* %5, align 4
  %260 = load i32, i32* @TSI721_OBDMAC_INT_ERROR, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %362

263:                                              ; preds = %258
  %264 = load i32, i32* @OMSG, align 4
  %265 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %266 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %265, i32 0, i32 3
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %270 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* %4, align 4
  %273 = call i64 @TSI721_OBDMAC_STS(i32 %272)
  %274 = add nsw i64 %271, %273
  %275 = call i32 @ioread32(i64 %274)
  %276 = call i32 (i32, i32*, i8*, i32, ...) @tsi_debug(i32 %264, i32* %268, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %275)
  %277 = load i32, i32* @TSI721_OBDMAC_INT_ERROR, align 4
  %278 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %279 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load i32, i32* %4, align 4
  %282 = call i64 @TSI721_OBDMAC_INT(i32 %281)
  %283 = add nsw i64 %280, %282
  %284 = call i32 @iowrite32(i32 %277, i64 %283)
  %285 = load i32, i32* @TSI721_OBDMAC_CTL_RETRY_THR, align 4
  %286 = load i32, i32* @TSI721_OBDMAC_CTL_INIT, align 4
  %287 = or i32 %285, %286
  %288 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %289 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %4, align 4
  %292 = call i64 @TSI721_OBDMAC_CTL(i32 %291)
  %293 = add nsw i64 %290, %292
  %294 = call i32 @iowrite32(i32 %287, i64 %293)
  %295 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %296 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* %4, align 4
  %299 = call i64 @TSI721_OBDMAC_CTL(i32 %298)
  %300 = add nsw i64 %297, %299
  %301 = call i32 @ioread32(i64 %300)
  %302 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %303 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %302, i32 0, i32 1
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = load i32, i32* %4, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 6
  %309 = load i8*, i8** %308, align 8
  store i8* %309, i8** %7, align 8
  %310 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %311 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %310, i32 0, i32 1
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = load i32, i32* %4, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %318 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %319 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %318, i32 0, i32 1
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %319, align 8
  %321 = load i32, i32* %4, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %327 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* %4, align 4
  %330 = call i64 @TSI721_OBDMAC_DRDCNT(i32 %329)
  %331 = add nsw i64 %328, %330
  %332 = call i32 @iowrite32(i32 %325, i64 %331)
  %333 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %334 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = load i32, i32* %4, align 4
  %337 = call i64 @TSI721_OBDMAC_DRDCNT(i32 %336)
  %338 = add nsw i64 %335, %337
  %339 = call i32 @ioread32(i64 %338)
  %340 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %341 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %340, i32 0, i32 1
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %341, align 8
  %343 = load i32, i32* %4, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %349 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %348, i32 0, i32 1
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %349, align 8
  %351 = load i32, i32* %4, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 4
  store i32 %347, i32* %354, align 8
  %355 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %356 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %355, i32 0, i32 1
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %356, align 8
  %358 = load i32, i32* %4, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  store i32 0, i32* %361, align 8
  br label %362

362:                                              ; preds = %263, %258
  %363 = load i32, i32* %5, align 4
  %364 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %365 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = load i32, i32* %4, align 4
  %368 = call i64 @TSI721_OBDMAC_INT(i32 %367)
  %369 = add nsw i64 %366, %368
  %370 = call i32 @iowrite32(i32 %363, i64 %369)
  %371 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %372 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @TSI721_USING_MSIX, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %395, label %377

377:                                              ; preds = %362
  %378 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %379 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %382 = add nsw i64 %380, %381
  %383 = call i32 @ioread32(i64 %382)
  store i32 %383, i32* %16, align 4
  %384 = load i32, i32* %4, align 4
  %385 = call i32 @TSI721_INT_OMSG_CHAN(i32 %384)
  %386 = load i32, i32* %16, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %16, align 4
  %388 = load i32, i32* %16, align 4
  %389 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %390 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %393 = add nsw i64 %391, %392
  %394 = call i32 @iowrite32(i32 %388, i64 %393)
  br label %395

395:                                              ; preds = %377, %362
  %396 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %397 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %396, i32 0, i32 1
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %397, align 8
  %399 = load i32, i32* %4, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 5
  %403 = call i32 @spin_unlock(i32* %402)
  %404 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %405 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %404, i32 0, i32 0
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** %405, align 8
  %407 = load i32, i32* %4, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = load i32 (%struct.rio_mport*, i8*, i32, i32)*, i32 (%struct.rio_mport*, i8*, i32, i32)** %410, align 8
  %412 = icmp ne i32 (%struct.rio_mport*, i8*, i32, i32)* %411, null
  br i1 %412, label %413, label %430

413:                                              ; preds = %395
  %414 = load i32, i32* %9, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %430

416:                                              ; preds = %413
  %417 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %418 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %417, i32 0, i32 0
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = load i32, i32* %4, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 0
  %424 = load i32 (%struct.rio_mport*, i8*, i32, i32)*, i32 (%struct.rio_mport*, i8*, i32, i32)** %423, align 8
  %425 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %426 = load i8*, i8** %7, align 8
  %427 = load i32, i32* %4, align 4
  %428 = load i32, i32* %8, align 4
  %429 = call i32 %424(%struct.rio_mport* %425, i8* %426, i32 %427, i32 %428)
  br label %430

430:                                              ; preds = %416, %413, %395
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @TSI721_OBDMAC_INT(i32) #1

declare dso_local i32 @tsi_info(i32*, i8*, i32) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_OBDMAC_DSRP(i32) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @TSI721_OBDMAC_STS(i32) #1

declare dso_local i64 @TSI721_OBDMAC_CTL(i32) #1

declare dso_local i64 @TSI721_OBDMAC_DRDCNT(i32) #1

declare dso_local i32 @TSI721_INT_OMSG_CHAN(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
