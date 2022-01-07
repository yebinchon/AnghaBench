; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_get_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_get_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { %struct.iovec* }
%struct.iovec = type { i32 }
%struct.vhost_log = type { i32, i64 }
%struct.vring_desc = type { i32, i32, i32 }
%struct.iov_iter = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"Invalid length in indirect descriptor: len 0x%llx not multiple of 0x%zx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i32 0, align 4
@VHOST_ACCESS_RO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Translation failure %d in indirect.\0A\00", align 1
@READ = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Indirect buffer length too big: %d\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Loop detected: last one at %u indirect size %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed indirect descriptor: idx %d, %zx\0A\00", align 1
@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Nested indirect descriptor: idx %d, %zx\0A\00", align 1
@VRING_DESC_F_WRITE = common dso_local global i32 0, align 4
@VHOST_ACCESS_WO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Translation failure %d indirect idx %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Indirect descriptor has out after in: idx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_virtqueue*, %struct.iovec*, i32, i32*, i32*, %struct.vhost_log*, i32*, %struct.vring_desc*)* @get_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_indirect(%struct.vhost_virtqueue* %0, %struct.iovec* %1, i32 %2, i32* %3, i32* %4, %struct.vhost_log* %5, i32* %6, %struct.vring_desc* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.vhost_virtqueue*, align 8
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.vhost_log*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.vring_desc*, align 8
  %18 = alloca %struct.vring_desc, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.iov_iter, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %10, align 8
  store %struct.iovec* %1, %struct.iovec** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.vhost_log* %5, %struct.vhost_log** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.vring_desc* %7, %struct.vring_desc** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %28 = load %struct.vring_desc*, %struct.vring_desc** %17, align 8
  %29 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vhost32_to_cpu(%struct.vhost_virtqueue* %27, i32 %30)
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %22, align 4
  %33 = sext i32 %32 to i64
  %34 = urem i64 %33, 12
  %35 = trunc i64 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %8
  %39 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %40 = load i32, i32* %22, align 4
  %41 = sext i32 %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %39, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %42, i64 12)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %285

46:                                               ; preds = %8
  %47 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %48 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %49 = load %struct.vring_desc*, %struct.vring_desc** %17, align 8
  %50 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @vhost64_to_cpu(%struct.vhost_virtqueue* %48, i32 %51)
  %53 = load i32, i32* %22, align 4
  %54 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %55 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %54, i32 0, i32 0
  %56 = load %struct.iovec*, %struct.iovec** %55, align 8
  %57 = load i32, i32* @UIO_MAXIOV, align 4
  %58 = load i32, i32* @VHOST_ACCESS_RO, align 4
  %59 = call i32 @translate_desc(%struct.vhost_virtqueue* %47, i64 %52, i32 %53, %struct.iovec* %56, i32 %57, i32 %58)
  store i32 %59, i32* %24, align 4
  %60 = load i32, i32* %24, align 4
  %61 = icmp slt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %46
  %66 = load i32, i32* %24, align 4
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %72 = load i32, i32* %24, align 4
  %73 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %24, align 4
  store i32 %75, i32* %9, align 4
  br label %285

76:                                               ; preds = %46
  %77 = load i32, i32* @READ, align 4
  %78 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %79 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %78, i32 0, i32 0
  %80 = load %struct.iovec*, %struct.iovec** %79, align 8
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %22, align 4
  %83 = call i32 @iov_iter_init(%struct.iov_iter* %23, i32 %77, %struct.iovec* %80, i32 %81, i32 %82)
  %84 = call i32 (...) @read_barrier_depends()
  %85 = load i32, i32* %22, align 4
  %86 = sext i32 %85 to i64
  %87 = udiv i64 %86, 12
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* @USHRT_MAX, align 4
  %91 = add nsw i32 %90, 1
  %92 = icmp ugt i32 %89, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %76
  %97 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %98 = load %struct.vring_desc*, %struct.vring_desc** %17, align 8
  %99 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @E2BIG, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %285

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %280, %104
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %107, %109
  store i32 %110, i32* %26, align 4
  %111 = load i32, i32* %21, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp ugt i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %105
  %119 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %20, align 4
  %122 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %119, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %9, align 4
  br label %285

125:                                              ; preds = %105
  %126 = call i32 @copy_from_iter_full(%struct.vring_desc* %18, i32 12, %struct.iov_iter* %23)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %125
  %133 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %134 = load i32, i32* %19, align 4
  %135 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %136 = load %struct.vring_desc*, %struct.vring_desc** %17, align 8
  %137 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @vhost64_to_cpu(%struct.vhost_virtqueue* %135, i32 %138)
  %140 = load i32, i32* %19, align 4
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, 12
  %143 = add i64 %139, %142
  %144 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %134, i64 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %9, align 4
  br label %285

147:                                              ; preds = %125
  %148 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %18, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %151 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %152 = call i32 @cpu_to_vhost16(%struct.vhost_virtqueue* %150, i32 %151)
  %153 = and i32 %149, %152
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %147
  %157 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %158 = load i32, i32* %19, align 4
  %159 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %160 = load %struct.vring_desc*, %struct.vring_desc** %17, align 8
  %161 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @vhost64_to_cpu(%struct.vhost_virtqueue* %159, i32 %162)
  %164 = load i32, i32* %19, align 4
  %165 = zext i32 %164 to i64
  %166 = mul i64 %165, 12
  %167 = add i64 %163, %166
  %168 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %158, i64 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %9, align 4
  br label %285

171:                                              ; preds = %147
  %172 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %18, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %175 = load i32, i32* @VRING_DESC_F_WRITE, align 4
  %176 = call i32 @cpu_to_vhost16(%struct.vhost_virtqueue* %174, i32 %175)
  %177 = and i32 %173, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* @VHOST_ACCESS_WO, align 4
  store i32 %180, i32* %25, align 4
  br label %183

181:                                              ; preds = %171
  %182 = load i32, i32* @VHOST_ACCESS_RO, align 4
  store i32 %182, i32* %25, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %185 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %186 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %18, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @vhost64_to_cpu(%struct.vhost_virtqueue* %185, i32 %187)
  %189 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %190 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %18, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @vhost32_to_cpu(%struct.vhost_virtqueue* %189, i32 %191)
  %193 = load %struct.iovec*, %struct.iovec** %11, align 8
  %194 = load i32, i32* %26, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.iovec, %struct.iovec* %193, i64 %195
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %26, align 4
  %199 = sub i32 %197, %198
  %200 = load i32, i32* %25, align 4
  %201 = call i32 @translate_desc(%struct.vhost_virtqueue* %184, i64 %188, i32 %192, %struct.iovec* %196, i32 %199, i32 %200)
  store i32 %201, i32* %24, align 4
  %202 = load i32, i32* %24, align 4
  %203 = icmp slt i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i64 @unlikely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %183
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* @EAGAIN, align 4
  %210 = sub nsw i32 0, %209
  %211 = icmp ne i32 %208, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* %19, align 4
  %216 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %213, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %212, %207
  %218 = load i32, i32* %24, align 4
  store i32 %218, i32* %9, align 4
  br label %285

219:                                              ; preds = %183
  %220 = load i32, i32* %25, align 4
  %221 = load i32, i32* @VHOST_ACCESS_WO, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %263

223:                                              ; preds = %219
  %224 = load i32, i32* %24, align 4
  %225 = load i32*, i32** %14, align 8
  %226 = load i32, i32* %225, align 4
  %227 = add i32 %226, %224
  store i32 %227, i32* %225, align 4
  %228 = load %struct.vhost_log*, %struct.vhost_log** %15, align 8
  %229 = icmp ne %struct.vhost_log* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = load i32, i32* %24, align 4
  %232 = icmp ne i32 %231, 0
  br label %233

233:                                              ; preds = %230, %223
  %234 = phi i1 [ false, %223 ], [ %232, %230 ]
  %235 = zext i1 %234 to i32
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %233
  %239 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %240 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %18, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @vhost64_to_cpu(%struct.vhost_virtqueue* %239, i32 %241)
  %243 = load %struct.vhost_log*, %struct.vhost_log** %15, align 8
  %244 = load i32*, i32** %16, align 8
  %245 = load i32, i32* %244, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %243, i64 %246
  %248 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %247, i32 0, i32 1
  store i64 %242, i64* %248, align 8
  %249 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %250 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %18, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @vhost32_to_cpu(%struct.vhost_virtqueue* %249, i32 %251)
  %253 = load %struct.vhost_log*, %struct.vhost_log** %15, align 8
  %254 = load i32*, i32** %16, align 8
  %255 = load i32, i32* %254, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %253, i64 %256
  %258 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %257, i32 0, i32 0
  store i32 %252, i32* %258, align 8
  %259 = load i32*, i32** %16, align 8
  %260 = load i32, i32* %259, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %238, %233
  br label %279

263:                                              ; preds = %219
  %264 = load i32*, i32** %14, align 8
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @unlikely(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %270 = load i32, i32* %19, align 4
  %271 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %269, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %270)
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %9, align 4
  br label %285

274:                                              ; preds = %263
  %275 = load i32, i32* %24, align 4
  %276 = load i32*, i32** %13, align 8
  %277 = load i32, i32* %276, align 4
  %278 = add i32 %277, %275
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %274, %262
  br label %280

280:                                              ; preds = %279
  %281 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %282 = call i32 @next_desc(%struct.vhost_virtqueue* %281, %struct.vring_desc* %18)
  store i32 %282, i32* %19, align 4
  %283 = icmp ne i32 %282, -1
  br i1 %283, label %105, label %284

284:                                              ; preds = %280
  store i32 0, i32* %9, align 4
  br label %285

285:                                              ; preds = %284, %268, %217, %156, %132, %118, %96, %74, %38
  %286 = load i32, i32* %9, align 4
  ret i32 %286
}

declare dso_local i32 @vhost32_to_cpu(%struct.vhost_virtqueue*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, i32, ...) #1

declare dso_local i32 @translate_desc(%struct.vhost_virtqueue*, i64, i32, %struct.iovec*, i32, i32) #1

declare dso_local i64 @vhost64_to_cpu(%struct.vhost_virtqueue*, i32) #1

declare dso_local i32 @iov_iter_init(%struct.iov_iter*, i32, %struct.iovec*, i32, i32) #1

declare dso_local i32 @read_barrier_depends(...) #1

declare dso_local i32 @copy_from_iter_full(%struct.vring_desc*, i32, %struct.iov_iter*) #1

declare dso_local i32 @cpu_to_vhost16(%struct.vhost_virtqueue*, i32) #1

declare dso_local i32 @next_desc(%struct.vhost_virtqueue*, %struct.vring_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
