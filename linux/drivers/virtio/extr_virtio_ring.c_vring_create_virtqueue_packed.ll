; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_create_virtqueue_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_create_virtqueue_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { void (%struct.virtqueue*)*, i8*, i32, i32, i32, %struct.virtio_device* }
%struct.virtio_device = type { i32 }
%struct.vring_virtqueue = type { i32, i32 (%struct.virtqueue*)*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.virtqueue, i64, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, %struct.vring_virtqueue*, i64, %struct.TYPE_3__, %struct.vring_virtqueue*, i64, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event* }
%struct.vring_packed_desc_event = type { i32 }
%struct.vring_packed_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@VIRTIO_F_ORDER_PLATFORM = common dso_local global i32 0, align 4
@VRING_PACKED_DESC_F_AVAIL = common dso_local global i32 0, align 4
@VRING_PACKED_EVENT_FLAG_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (i32, i32, i32, %struct.virtio_device*, i32, i32, i32, i32 (%struct.virtqueue*)*, void (%struct.virtqueue*)*, i8*)* @vring_create_virtqueue_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @vring_create_virtqueue_packed(i32 %0, i32 %1, i32 %2, %struct.virtio_device* %3, i32 %4, i32 %5, i32 %6, i32 (%struct.virtqueue*)* %7, void (%struct.virtqueue*)* %8, i8* %9) #0 {
  %11 = alloca %struct.virtqueue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.virtio_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32 (%struct.virtqueue*)*, align 8
  %20 = alloca void (%struct.virtqueue*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.vring_virtqueue*, align 8
  %23 = alloca %struct.vring_packed_desc*, align 8
  %24 = alloca %struct.vring_packed_desc_event*, align 8
  %25 = alloca %struct.vring_packed_desc_event*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.virtio_device* %3, %struct.virtio_device** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 (%struct.virtqueue*)* %7, i32 (%struct.virtqueue*)** %19, align 8
  store void (%struct.virtqueue*)* %8, void (%struct.virtqueue*)** %20, align 8
  store i8* %9, i8** %21, align 8
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 4
  store i64 %34, i64* %29, align 8
  %35 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %36 = load i64, i64* %29, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load i32, i32* @__GFP_NOWARN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @__GFP_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.vring_packed_desc_event* @vring_alloc_queue(%struct.virtio_device* %35, i64 %36, i8** %26, i32 %41)
  %43 = bitcast %struct.vring_packed_desc_event* %42 to %struct.vring_packed_desc*
  store %struct.vring_packed_desc* %43, %struct.vring_packed_desc** %23, align 8
  %44 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %23, align 8
  %45 = icmp ne %struct.vring_packed_desc* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %10
  br label %325

47:                                               ; preds = %10
  store i64 4, i64* %30, align 8
  %48 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %49 = load i64, i64* %30, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load i32, i32* @__GFP_NOWARN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @__GFP_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.vring_packed_desc_event* @vring_alloc_queue(%struct.virtio_device* %48, i64 %49, i8** %27, i32 %54)
  store %struct.vring_packed_desc_event* %55, %struct.vring_packed_desc_event** %24, align 8
  %56 = load %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event** %24, align 8
  %57 = icmp ne %struct.vring_packed_desc_event* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %318

59:                                               ; preds = %47
  %60 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %61 = load i64, i64* %30, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = load i32, i32* @__GFP_NOWARN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @__GFP_ZERO, align 4
  %66 = or i32 %64, %65
  %67 = call %struct.vring_packed_desc_event* @vring_alloc_queue(%struct.virtio_device* %60, i64 %61, i8** %28, i32 %66)
  store %struct.vring_packed_desc_event* %67, %struct.vring_packed_desc_event** %25, align 8
  %68 = load %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event** %25, align 8
  %69 = icmp ne %struct.vring_packed_desc_event* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %59
  br label %312

71:                                               ; preds = %59
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.vring_virtqueue* @kmalloc(i32 248, i32 %72)
  store %struct.vring_virtqueue* %73, %struct.vring_virtqueue** %22, align 8
  %74 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %75 = icmp ne %struct.vring_virtqueue* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %306

77:                                               ; preds = %71
  %78 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %20, align 8
  %79 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %80 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %79, i32 0, i32 10
  %81 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %80, i32 0, i32 0
  store void (%struct.virtqueue*)* %78, void (%struct.virtqueue*)** %81, align 8
  %82 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %83 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %84 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %83, i32 0, i32 10
  %85 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %84, i32 0, i32 5
  store %struct.virtio_device* %82, %struct.virtio_device** %85, align 8
  %86 = load i8*, i8** %21, align 8
  %87 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %88 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %87, i32 0, i32 10
  %89 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %92 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %96 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %95, i32 0, i32 10
  %97 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  %98 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %99 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32 (%struct.virtqueue*)*, i32 (%struct.virtqueue*)** %19, align 8
  %101 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %102 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %101, i32 0, i32 1
  store i32 (%struct.virtqueue*)* %100, i32 (%struct.virtqueue*)** %102, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %105 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %107 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %106, i32 0, i32 3
  store i32 0, i32* %107, align 4
  %108 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %109 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %108, i32 0, i32 15
  store i64 0, i64* %109, align 8
  %110 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %111 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %110, i32 0, i32 14
  store i64 0, i64* %111, align 8
  %112 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %113 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %112, i32 0, i32 4
  store i32 1, i32* %113, align 8
  %114 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %115 = call i32 @vring_use_dma_api(%struct.virtio_device* %114)
  %116 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %117 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %116, i32 0, i32 13
  store i32 %115, i32* %117, align 8
  %118 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %119 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %118, i32 0, i32 10
  %120 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %119, i32 0, i32 4
  %121 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %122 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %121, i32 0, i32 0
  %123 = call i32 @list_add_tail(i32* %120, i32* %122)
  %124 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %125 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %126 = call i64 @virtio_has_feature(%struct.virtio_device* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %77
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %128, %77
  %133 = phi i1 [ false, %77 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  %135 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %136 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 4
  %137 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %138 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %139 = call i64 @virtio_has_feature(%struct.virtio_device* %137, i32 %138)
  %140 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %141 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %140, i32 0, i32 12
  store i64 %139, i64* %141, align 8
  %142 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %143 = load i32, i32* @VIRTIO_F_ORDER_PLATFORM, align 4
  %144 = call i64 @virtio_has_feature(%struct.virtio_device* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %132
  %147 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %148 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %147, i32 0, i32 2
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %132
  %150 = load i8*, i8** %26, align 8
  %151 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %152 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %151, i32 0, i32 9
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 12
  store i8* %150, i8** %153, align 8
  %154 = load i8*, i8** %27, align 8
  %155 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %156 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 11
  store i8* %154, i8** %157, align 8
  %158 = load i8*, i8** %28, align 8
  %159 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %160 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 10
  store i8* %158, i8** %161, align 8
  %162 = load i64, i64* %29, align 8
  %163 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %164 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  %166 = load i64, i64* %30, align 8
  %167 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %168 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %167, i32 0, i32 9
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i64 %166, i64* %169, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %172 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 %170, i32* %174, align 8
  %175 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %23, align 8
  %176 = bitcast %struct.vring_packed_desc* %175 to %struct.vring_packed_desc_event*
  %177 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %178 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %177, i32 0, i32 9
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  store %struct.vring_packed_desc_event* %176, %struct.vring_packed_desc_event** %180, align 8
  %181 = load %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event** %24, align 8
  %182 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %183 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  store %struct.vring_packed_desc_event* %181, %struct.vring_packed_desc_event** %185, align 8
  %186 = load %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event** %25, align 8
  %187 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %188 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %187, i32 0, i32 9
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  store %struct.vring_packed_desc_event* %186, %struct.vring_packed_desc_event** %190, align 8
  %191 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %192 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 9
  store i64 0, i64* %193, align 8
  %194 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %195 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %194, i32 0, i32 9
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  store i32 1, i32* %196, align 8
  %197 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %198 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  store i32 1, i32* %199, align 4
  %200 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %201 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %200, i32 0, i32 9
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 6
  store i64 0, i64* %202, align 8
  %203 = load i32, i32* @VRING_PACKED_DESC_F_AVAIL, align 4
  %204 = shl i32 1, %203
  %205 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %206 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %205, i32 0, i32 9
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 4
  store i32 %204, i32* %207, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @GFP_KERNEL, align 4
  %210 = call i8* @kmalloc_array(i32 %208, i32 4, i32 %209)
  %211 = bitcast i8* %210 to %struct.vring_virtqueue*
  %212 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %213 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 5
  store %struct.vring_virtqueue* %211, %struct.vring_virtqueue** %214, align 8
  %215 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %216 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %215, i32 0, i32 9
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 5
  %218 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %217, align 8
  %219 = icmp ne %struct.vring_virtqueue* %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %149
  br label %303

221:                                              ; preds = %149
  %222 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %223 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %222, i32 0, i32 9
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 5
  %225 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = zext i32 %226 to i64
  %228 = mul i64 %227, 4
  %229 = trunc i64 %228 to i32
  %230 = call i32 @memset(%struct.vring_virtqueue* %225, i32 0, i32 %229)
  %231 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %232 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %231, i32 0, i32 11
  store i64 0, i64* %232, align 8
  store i32 0, i32* %31, align 4
  br label %233

233:                                              ; preds = %249, %221
  %234 = load i32, i32* %31, align 4
  %235 = load i32, i32* %13, align 4
  %236 = sub i32 %235, 1
  %237 = icmp ult i32 %234, %236
  br i1 %237, label %238, label %252

238:                                              ; preds = %233
  %239 = load i32, i32* %31, align 4
  %240 = add i32 %239, 1
  %241 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %242 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %241, i32 0, i32 9
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 5
  %244 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %243, align 8
  %245 = load i32, i32* %31, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %244, i64 %246
  %248 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %247, i32 0, i32 8
  store i32 %240, i32* %248, align 8
  br label %249

249:                                              ; preds = %238
  %250 = load i32, i32* %31, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %31, align 4
  br label %233

252:                                              ; preds = %233
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* @GFP_KERNEL, align 4
  %255 = call i8* @kmalloc_array(i32 %253, i32 4, i32 %254)
  %256 = bitcast i8* %255 to %struct.vring_virtqueue*
  %257 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %258 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %257, i32 0, i32 9
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 8
  store %struct.vring_virtqueue* %256, %struct.vring_virtqueue** %259, align 8
  %260 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %261 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 8
  %263 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %262, align 8
  %264 = icmp ne %struct.vring_virtqueue* %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %252
  br label %297

266:                                              ; preds = %252
  %267 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %268 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %267, i32 0, i32 9
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 8
  %270 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = zext i32 %271 to i64
  %273 = mul i64 %272, 4
  %274 = trunc i64 %273 to i32
  %275 = call i32 @memset(%struct.vring_virtqueue* %270, i32 0, i32 %274)
  %276 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %20, align 8
  %277 = icmp ne void (%struct.virtqueue*)* %276, null
  br i1 %277, label %294, label %278

278:                                              ; preds = %266
  %279 = load i64, i64* @VRING_PACKED_EVENT_FLAG_DISABLE, align 8
  %280 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %281 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %280, i32 0, i32 9
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 6
  store i64 %279, i64* %282, align 8
  %283 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %284 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %283, i32 0, i32 9
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 6
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @cpu_to_le16(i64 %286)
  %288 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %289 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %288, i32 0, i32 9
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 7
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 1
  %292 = load %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event** %291, align 8
  %293 = getelementptr inbounds %struct.vring_packed_desc_event, %struct.vring_packed_desc_event* %292, i32 0, i32 0
  store i32 %287, i32* %293, align 4
  br label %294

294:                                              ; preds = %278, %266
  %295 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %296 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %295, i32 0, i32 10
  store %struct.virtqueue* %296, %struct.virtqueue** %11, align 8
  br label %326

297:                                              ; preds = %265
  %298 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %299 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %298, i32 0, i32 9
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 5
  %301 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %300, align 8
  %302 = call i32 @kfree(%struct.vring_virtqueue* %301)
  br label %303

303:                                              ; preds = %297, %220
  %304 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %22, align 8
  %305 = call i32 @kfree(%struct.vring_virtqueue* %304)
  br label %306

306:                                              ; preds = %303, %76
  %307 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %308 = load i64, i64* %30, align 8
  %309 = load %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event** %25, align 8
  %310 = load i8*, i8** %26, align 8
  %311 = call i32 @vring_free_queue(%struct.virtio_device* %307, i64 %308, %struct.vring_packed_desc_event* %309, i8* %310)
  br label %312

312:                                              ; preds = %306, %70
  %313 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %314 = load i64, i64* %30, align 8
  %315 = load %struct.vring_packed_desc_event*, %struct.vring_packed_desc_event** %24, align 8
  %316 = load i8*, i8** %26, align 8
  %317 = call i32 @vring_free_queue(%struct.virtio_device* %313, i64 %314, %struct.vring_packed_desc_event* %315, i8* %316)
  br label %318

318:                                              ; preds = %312, %58
  %319 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %320 = load i64, i64* %29, align 8
  %321 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %23, align 8
  %322 = bitcast %struct.vring_packed_desc* %321 to %struct.vring_packed_desc_event*
  %323 = load i8*, i8** %26, align 8
  %324 = call i32 @vring_free_queue(%struct.virtio_device* %319, i64 %320, %struct.vring_packed_desc_event* %322, i8* %323)
  br label %325

325:                                              ; preds = %318, %46
  store %struct.virtqueue* null, %struct.virtqueue** %11, align 8
  br label %326

326:                                              ; preds = %325, %294
  %327 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  ret %struct.virtqueue* %327
}

declare dso_local %struct.vring_packed_desc_event* @vring_alloc_queue(%struct.virtio_device*, i64, i8**, i32) #1

declare dso_local %struct.vring_virtqueue* @kmalloc(i32, i32) #1

declare dso_local i32 @vring_use_dma_api(%struct.virtio_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.vring_virtqueue*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @kfree(%struct.vring_virtqueue*) #1

declare dso_local i32 @vring_free_queue(%struct.virtio_device*, i64, %struct.vring_packed_desc_event*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
