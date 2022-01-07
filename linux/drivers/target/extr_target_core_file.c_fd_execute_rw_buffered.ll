; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_execute_rw_buffered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_execute_rw_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, i32, i32, %struct.scatterlist*, i64, %struct.se_device* }
%struct.se_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.scatterlist = type { i32 }
%struct.fd_dev = type { %struct.file*, %struct.file* }
%struct.file = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@SCF_FUA = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.scatterlist*, i32, i32)* @fd_execute_rw_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_execute_rw_buffered(%struct.se_cmd* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.se_device*, align 8
  %11 = alloca %struct.fd_dev*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.file*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 7
  %22 = load %struct.se_device*, %struct.se_device** %21, align 8
  store %struct.se_device* %22, %struct.se_device** %10, align 8
  %23 = load %struct.se_device*, %struct.se_device** %10, align 8
  %24 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %23)
  store %struct.fd_dev* %24, %struct.fd_dev** %11, align 8
  %25 = load %struct.fd_dev*, %struct.fd_dev** %11, align 8
  %26 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %25, i32 0, i32 0
  %27 = load %struct.file*, %struct.file** %26, align 8
  store %struct.file* %27, %struct.file** %12, align 8
  %28 = load %struct.fd_dev*, %struct.fd_dev** %11, align 8
  %29 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %28, i32 0, i32 1
  %30 = load %struct.file*, %struct.file** %29, align 8
  store %struct.file* %30, %struct.file** %13, align 8
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %123

34:                                               ; preds = %4
  %35 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load %struct.se_device*, %struct.se_device** %10, align 8
  %41 = getelementptr inbounds %struct.se_device, %struct.se_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %47 = load %struct.file*, %struct.file** %13, align 8
  %48 = load %struct.se_device*, %struct.se_device** %10, align 8
  %49 = getelementptr inbounds %struct.se_device, %struct.se_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %51, i32 0, i32 5
  %53 = load %struct.scatterlist*, %struct.scatterlist** %52, align 8
  %54 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fd_do_rw(%struct.se_cmd* %46, %struct.file* %47, i32 %50, %struct.scatterlist* %53, i32 %56, i32 %59, i32 0)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %64, i32* %5, align 4
  br label %260

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %39, %34
  %67 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %68 = load %struct.file*, %struct.file** %12, align 8
  %69 = load %struct.se_device*, %struct.se_device** %10, align 8
  %70 = getelementptr inbounds %struct.se_device, %struct.se_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %76 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @fd_do_rw(%struct.se_cmd* %67, %struct.file* %68, i32 %72, %struct.scatterlist* %73, i32 %74, i32 %77, i32 0)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %66
  %82 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %83 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %122

86:                                               ; preds = %81
  %87 = load %struct.se_device*, %struct.se_device** %10, align 8
  %88 = getelementptr inbounds %struct.se_device, %struct.se_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %86
  %93 = load %struct.se_device*, %struct.se_device** %10, align 8
  %94 = getelementptr inbounds %struct.se_device, %struct.se_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %92
  %99 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %100 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.se_device*, %struct.se_device** %10, align 8
  %103 = getelementptr inbounds %struct.se_device, %struct.se_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ilog2(i32 %105)
  %107 = ashr i32 %101, %106
  store i32 %107, i32* %16, align 4
  %108 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %109 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %114 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %113, i32 0, i32 5
  %115 = load %struct.scatterlist*, %struct.scatterlist** %114, align 8
  %116 = call i32 @sbc_dif_verify(%struct.se_cmd* %108, i32 %111, i32 %112, i32 0, %struct.scatterlist* %115, i32 0)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %98
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  br label %260

121:                                              ; preds = %98
  br label %122

122:                                              ; preds = %121, %92, %86, %81, %66
  br label %251

123:                                              ; preds = %4
  %124 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %125 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %123
  %129 = load %struct.se_device*, %struct.se_device** %10, align 8
  %130 = getelementptr inbounds %struct.se_device, %struct.se_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %128
  %135 = load %struct.se_device*, %struct.se_device** %10, align 8
  %136 = getelementptr inbounds %struct.se_device, %struct.se_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %134
  %141 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %142 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.se_device*, %struct.se_device** %10, align 8
  %145 = getelementptr inbounds %struct.se_device, %struct.se_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ilog2(i32 %147)
  %149 = ashr i32 %143, %148
  store i32 %149, i32* %17, align 4
  %150 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %151 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %152 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %156 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %155, i32 0, i32 5
  %157 = load %struct.scatterlist*, %struct.scatterlist** %156, align 8
  %158 = call i32 @sbc_dif_verify(%struct.se_cmd* %150, i32 %153, i32 %154, i32 0, %struct.scatterlist* %157, i32 0)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %140
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %5, align 4
  br label %260

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %163, %134, %128, %123
  %165 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %166 = load %struct.file*, %struct.file** %12, align 8
  %167 = load %struct.se_device*, %struct.se_device** %10, align 8
  %168 = getelementptr inbounds %struct.se_device, %struct.se_device* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %174 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @fd_do_rw(%struct.se_cmd* %165, %struct.file* %166, i32 %170, %struct.scatterlist* %171, i32 %172, i32 %175, i32 1)
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %215

179:                                              ; preds = %164
  %180 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %181 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @SCF_FUA, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %215

186:                                              ; preds = %179
  %187 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %188 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.se_device*, %struct.se_device** %10, align 8
  %191 = getelementptr inbounds %struct.se_device, %struct.se_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %189, %193
  store i32 %194, i32* %18, align 4
  %195 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %196 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %186
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %202 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %200, %203
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %19, align 4
  br label %208

206:                                              ; preds = %186
  %207 = load i32, i32* @LLONG_MAX, align 4
  store i32 %207, i32* %19, align 4
  br label %208

208:                                              ; preds = %206, %199
  %209 = load %struct.fd_dev*, %struct.fd_dev** %11, align 8
  %210 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %209, i32 0, i32 0
  %211 = load %struct.file*, %struct.file** %210, align 8
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %19, align 4
  %214 = call i32 @vfs_fsync_range(%struct.file* %211, i32 %212, i32 %213, i32 1)
  br label %215

215:                                              ; preds = %208, %179, %164
  %216 = load i32, i32* %15, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %250

218:                                              ; preds = %215
  %219 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %220 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %250

223:                                              ; preds = %218
  %224 = load %struct.se_device*, %struct.se_device** %10, align 8
  %225 = getelementptr inbounds %struct.se_device, %struct.se_device* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %250

229:                                              ; preds = %223
  %230 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %231 = load %struct.file*, %struct.file** %13, align 8
  %232 = load %struct.se_device*, %struct.se_device** %10, align 8
  %233 = getelementptr inbounds %struct.se_device, %struct.se_device* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %236 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %235, i32 0, i32 5
  %237 = load %struct.scatterlist*, %struct.scatterlist** %236, align 8
  %238 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %239 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %242 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @fd_do_rw(%struct.se_cmd* %230, %struct.file* %231, i32 %234, %struct.scatterlist* %237, i32 %240, i32 %243, i32 1)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %229
  %248 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %248, i32* %5, align 4
  br label %260

249:                                              ; preds = %229
  br label %250

250:                                              ; preds = %249, %223, %218, %215
  br label %251

251:                                              ; preds = %250, %122
  %252 = load i32, i32* %15, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %255, i32* %5, align 4
  br label %260

256:                                              ; preds = %251
  %257 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %258 = load i32, i32* @SAM_STAT_GOOD, align 4
  %259 = call i32 @target_complete_cmd(%struct.se_cmd* %257, i32 %258)
  store i32 0, i32* %5, align 4
  br label %260

260:                                              ; preds = %256, %254, %247, %161, %119, %63
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

declare dso_local i32 @fd_do_rw(%struct.se_cmd*, %struct.file*, i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @sbc_dif_verify(%struct.se_cmd*, i32, i32, i32, %struct.scatterlist*, i32) #1

declare dso_local i32 @vfs_fsync_range(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
