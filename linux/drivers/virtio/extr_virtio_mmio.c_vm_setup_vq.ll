; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_setup_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_setup_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_mmio_vq_info* }
%struct.virtio_mmio_vq_info = type { i32, %struct.virtqueue* }
%struct.virtio_device = type { i32 }
%struct.virtio_mmio_device = type { i32, i64, i32, i32 }

@VIRTIO_MMIO_QUEUE_SEL = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_PFN = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_READY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_NUM_MAX = common dso_local global i64 0, align 8
@VIRTIO_MMIO_VRING_ALIGN = common dso_local global i32 0, align 4
@vm_notify = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_NUM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"platform bug: legacy virtio-mmio must not be used with RAM above 0x%llxGB\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_ALIGN = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_DESC_LOW = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_DESC_HIGH = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_AVAIL_LOW = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_AVAIL_HIGH = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_USED_LOW = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_USED_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (%struct.virtio_device*, i32, void (%struct.virtqueue*)*, i8*, i32)* @vm_setup_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @vm_setup_vq(%struct.virtio_device* %0, i32 %1, void (%struct.virtqueue*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.virtqueue*, align 8
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.virtqueue*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.virtio_mmio_device*, align 8
  %13 = alloca %struct.virtio_mmio_vq_info*, align 8
  %14 = alloca %struct.virtqueue*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store void (%struct.virtqueue*)* %2, void (%struct.virtqueue*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %21 = call %struct.virtio_mmio_device* @to_virtio_mmio_device(%struct.virtio_device* %20)
  store %struct.virtio_mmio_device* %21, %struct.virtio_mmio_device** %12, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store %struct.virtqueue* null, %struct.virtqueue** %6, align 8
  br label %250

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %28 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VIRTIO_MMIO_QUEUE_SEL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %34 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %37 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i64, i64* @VIRTIO_MMIO_QUEUE_PFN, align 8
  br label %44

42:                                               ; preds = %25
  %43 = load i64, i64* @VIRTIO_MMIO_QUEUE_READY, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = add nsw i64 %35, %45
  %47 = call i32 @readl(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %17, align 4
  br label %247

52:                                               ; preds = %44
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.virtio_mmio_vq_info* @kmalloc(i32 16, i32 %53)
  store %struct.virtio_mmio_vq_info* %54, %struct.virtio_mmio_vq_info** %13, align 8
  %55 = load %struct.virtio_mmio_vq_info*, %struct.virtio_mmio_vq_info** %13, align 8
  %56 = icmp ne %struct.virtio_mmio_vq_info* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %17, align 4
  br label %246

60:                                               ; preds = %52
  %61 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %62 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VIRTIO_MMIO_QUEUE_NUM_MAX, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %17, align 4
  br label %217

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @VIRTIO_MMIO_VRING_ALIGN, align 4
  %76 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @vm_notify, align 4
  %79 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call %struct.virtqueue* @vring_create_virtqueue(i32 %73, i32 %74, i32 %75, %struct.virtio_device* %76, i32 1, i32 1, i32 %77, i32 %78, void (%struct.virtqueue*)* %79, i8* %80)
  store %struct.virtqueue* %81, %struct.virtqueue** %14, align 8
  %82 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %83 = icmp ne %struct.virtqueue* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %17, align 4
  br label %217

87:                                               ; preds = %72
  %88 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %89 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %88)
  %90 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %91 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VIRTIO_MMIO_QUEUE_NUM, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %97 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %135

100:                                              ; preds = %87
  %101 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %102 = call i32 @virtqueue_get_desc_addr(%struct.virtqueue* %101)
  %103 = load i32, i32* @PAGE_SHIFT, align 4
  %104 = ashr i32 %102, %103
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = ashr i32 %105, 32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %110 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %109, i32 0, i32 0
  %111 = load i32, i32* @PAGE_SHIFT, align 4
  %112 = add nsw i32 32, %111
  %113 = sub nsw i32 %112, 30
  %114 = zext i32 %113 to i64
  %115 = shl i64 1, %114
  %116 = trunc i64 %115 to i32
  %117 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @E2BIG, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %17, align 4
  br label %214

120:                                              ; preds = %100
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %123 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @VIRTIO_MMIO_QUEUE_ALIGN, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  %128 = load i32, i32* %18, align 4
  %129 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %130 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VIRTIO_MMIO_QUEUE_PFN, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  br label %193

135:                                              ; preds = %87
  %136 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %137 = call i32 @virtqueue_get_desc_addr(%struct.virtqueue* %136)
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %140 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @VIRTIO_MMIO_QUEUE_DESC_LOW, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel(i32 %138, i64 %143)
  %145 = load i32, i32* %19, align 4
  %146 = ashr i32 %145, 32
  %147 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %148 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @VIRTIO_MMIO_QUEUE_DESC_HIGH, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writel(i32 %146, i64 %151)
  %153 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %154 = call i32 @virtqueue_get_avail_addr(%struct.virtqueue* %153)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %157 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @VIRTIO_MMIO_QUEUE_AVAIL_LOW, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  %162 = load i32, i32* %19, align 4
  %163 = ashr i32 %162, 32
  %164 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %165 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @VIRTIO_MMIO_QUEUE_AVAIL_HIGH, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writel(i32 %163, i64 %168)
  %170 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %171 = call i32 @virtqueue_get_used_addr(%struct.virtqueue* %170)
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %174 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @VIRTIO_MMIO_QUEUE_USED_LOW, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i32 %172, i64 %177)
  %179 = load i32, i32* %19, align 4
  %180 = ashr i32 %179, 32
  %181 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %182 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @VIRTIO_MMIO_QUEUE_USED_HIGH, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  %187 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %188 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @VIRTIO_MMIO_QUEUE_READY, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 1, i64 %191)
  br label %193

193:                                              ; preds = %135, %120
  %194 = load %struct.virtio_mmio_vq_info*, %struct.virtio_mmio_vq_info** %13, align 8
  %195 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %196 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %195, i32 0, i32 0
  store %struct.virtio_mmio_vq_info* %194, %struct.virtio_mmio_vq_info** %196, align 8
  %197 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %198 = load %struct.virtio_mmio_vq_info*, %struct.virtio_mmio_vq_info** %13, align 8
  %199 = getelementptr inbounds %struct.virtio_mmio_vq_info, %struct.virtio_mmio_vq_info* %198, i32 0, i32 1
  store %struct.virtqueue* %197, %struct.virtqueue** %199, align 8
  %200 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %201 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %200, i32 0, i32 2
  %202 = load i64, i64* %15, align 8
  %203 = call i32 @spin_lock_irqsave(i32* %201, i64 %202)
  %204 = load %struct.virtio_mmio_vq_info*, %struct.virtio_mmio_vq_info** %13, align 8
  %205 = getelementptr inbounds %struct.virtio_mmio_vq_info, %struct.virtio_mmio_vq_info* %204, i32 0, i32 0
  %206 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %207 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %206, i32 0, i32 3
  %208 = call i32 @list_add(i32* %205, i32* %207)
  %209 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %210 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %209, i32 0, i32 2
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  %213 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  store %struct.virtqueue* %213, %struct.virtqueue** %6, align 8
  br label %250

214:                                              ; preds = %108
  %215 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %216 = call i32 @vring_del_virtqueue(%struct.virtqueue* %215)
  br label %217

217:                                              ; preds = %214, %84, %69
  %218 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %219 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %224 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @VIRTIO_MMIO_QUEUE_PFN, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @writel(i32 0, i64 %227)
  br label %243

229:                                              ; preds = %217
  %230 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %231 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @VIRTIO_MMIO_QUEUE_READY, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @writel(i32 0, i64 %234)
  %236 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %12, align 8
  %237 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @VIRTIO_MMIO_QUEUE_READY, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @readl(i64 %240)
  %242 = call i32 @WARN_ON(i32 %241)
  br label %243

243:                                              ; preds = %229, %222
  %244 = load %struct.virtio_mmio_vq_info*, %struct.virtio_mmio_vq_info** %13, align 8
  %245 = call i32 @kfree(%struct.virtio_mmio_vq_info* %244)
  br label %246

246:                                              ; preds = %243, %57
  br label %247

247:                                              ; preds = %246, %49
  %248 = load i32, i32* %17, align 4
  %249 = call %struct.virtqueue* @ERR_PTR(i32 %248)
  store %struct.virtqueue* %249, %struct.virtqueue** %6, align 8
  br label %250

250:                                              ; preds = %247, %193, %24
  %251 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  ret %struct.virtqueue* %251
}

declare dso_local %struct.virtio_mmio_device* @to_virtio_mmio_device(%struct.virtio_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.virtio_mmio_vq_info* @kmalloc(i32, i32) #1

declare dso_local %struct.virtqueue* @vring_create_virtqueue(i32, i32, i32, %struct.virtio_device*, i32, i32, i32, i32, void (%struct.virtqueue*)*, i8*) #1

declare dso_local i32 @virtqueue_get_vring_size(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_get_desc_addr(%struct.virtqueue*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @virtqueue_get_avail_addr(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_get_used_addr(%struct.virtqueue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.virtio_mmio_vq_info*) #1

declare dso_local %struct.virtqueue* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
