; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_virtio_mmio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_virtio_mmio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.virtio_mmio_device = type { i32, %struct.TYPE_5__, i32*, i32, i32, %struct.platform_device* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@virtio_mmio_release_dev = common dso_local global i32 0, align 4
@virtio_mmio_config_ops = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VIRTIO_MMIO_MAGIC_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wrong magic value 0x%08lx!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VIRTIO_MMIO_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Version %ld not supported!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VIRTIO_MMIO_DEVICE_ID = common dso_local global i32 0, align 4
@VIRTIO_MMIO_VENDOR_ID = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VIRTIO_MMIO_GUEST_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"Failed to enable 64-bit or 32-bit DMA.  Trying to continue, but this might not work.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @virtio_mmio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_mmio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.virtio_mmio_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %5, align 8
  %11 = load %struct.resource*, %struct.resource** %5, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %226

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @resource_size(%struct.resource* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @devm_request_mem_region(i32* %18, i32 %21, i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %226

32:                                               ; preds = %16
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.virtio_mmio_device* @devm_kzalloc(i32* %34, i32 72, i32 %35)
  store %struct.virtio_mmio_device* %36, %struct.virtio_mmio_device** %4, align 8
  %37 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %38 = icmp ne %struct.virtio_mmio_device* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %226

42:                                               ; preds = %32
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %46 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32* %44, i32** %48, align 8
  %49 = load i32, i32* @virtio_mmio_release_dev, align 4
  %50 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %51 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %55 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32* @virtio_mmio_config_ops, i32** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %59 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %58, i32 0, i32 5
  store %struct.platform_device* %57, %struct.platform_device** %59, align 8
  %60 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %61 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %60, i32 0, i32 4
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %64 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %63, i32 0, i32 3
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.resource*, %struct.resource** %5, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.resource*, %struct.resource** %5, align 8
  %72 = call i32 @resource_size(%struct.resource* %71)
  %73 = call i32* @devm_ioremap(i32* %67, i32 %70, i32 %72)
  %74 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %75 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %77 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %42
  %81 = load i32, i32* @EFAULT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %226

83:                                               ; preds = %42
  %84 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %85 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @VIRTIO_MMIO_MAGIC_VALUE, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i8* @readl(i32* %89)
  %91 = ptrtoint i8* %90 to i64
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 1953655158
  br i1 %93, label %94, label %101

94:                                               ; preds = %83
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i64, i64* %6, align 8
  %98 = call i32 (i32*, i8*, ...) @dev_warn(i32* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %226

101:                                              ; preds = %83
  %102 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %103 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @VIRTIO_MMIO_VERSION, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i8* @readl(i32* %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %111 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %113 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %121, label %116

116:                                              ; preds = %101
  %117 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %118 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 2
  br i1 %120, label %121, label %130

121:                                              ; preds = %116, %101
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %125 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @ENXIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %226

130:                                              ; preds = %116
  %131 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %132 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @VIRTIO_MMIO_DEVICE_ID, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i8* @readl(i32* %136)
  %138 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %139 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i8* %137, i8** %141, align 8
  %142 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %143 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %130
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %226

151:                                              ; preds = %130
  %152 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %153 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @VIRTIO_MMIO_VENDOR_ID, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = call i8* @readl(i32* %157)
  %159 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %160 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i8* %158, i8** %162, align 8
  %163 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %164 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %190

167:                                              ; preds = %151
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %170 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* @VIRTIO_MMIO_GUEST_PAGE_SIZE, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = call i32 @writel(i32 %168, i32* %174)
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 @DMA_BIT_MASK(i32 64)
  %179 = call i32 @dma_set_mask(i32* %177, i32 %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %167
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load i32, i32* @PAGE_SHIFT, align 4
  %186 = add nsw i32 32, %185
  %187 = call i32 @DMA_BIT_MASK(i32 %186)
  %188 = call i32 @dma_set_coherent_mask(i32* %184, i32 %187)
  br label %189

189:                                              ; preds = %182, %167
  br label %195

190:                                              ; preds = %151
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call i32 @DMA_BIT_MASK(i32 64)
  %194 = call i32 @dma_set_mask_and_coherent(i32* %192, i32 %193)
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %190, %189
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @DMA_BIT_MASK(i32 32)
  %202 = call i32 @dma_set_mask_and_coherent(i32* %200, i32 %201)
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %198, %195
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 (i32*, i8*, ...) @dev_warn(i32* %208, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  br label %210

210:                                              ; preds = %206, %203
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %213 = call i32 @platform_set_drvdata(%struct.platform_device* %211, %struct.virtio_mmio_device* %212)
  %214 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %215 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %214, i32 0, i32 1
  %216 = call i32 @register_virtio_device(%struct.TYPE_5__* %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %210
  %220 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %221 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = call i32 @put_device(%struct.TYPE_6__* %222)
  br label %224

224:                                              ; preds = %219, %210
  %225 = load i32, i32* %7, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %224, %148, %121, %94, %80, %39, %29, %13
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_mem_region(i32*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.virtio_mmio_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i8* @readl(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.virtio_mmio_device*) #1

declare dso_local i32 @register_virtio_device(%struct.TYPE_5__*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
