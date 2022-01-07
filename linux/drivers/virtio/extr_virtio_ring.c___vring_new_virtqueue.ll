; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c___vring_new_virtqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c___vring_new_virtqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { void (%struct.virtqueue*)*, i8*, i32, i32, i32, %struct.virtio_device* }
%struct.vring = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.virtio_device = type { i32 }
%struct.vring_virtqueue = type { i32, i32, i32 (%struct.virtqueue*)*, i32, i32, i32, i32, i32, %struct.virtqueue, %struct.TYPE_6__, i64, i64, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.vring, i64, i64, i64 }

@VIRTIO_F_RING_PACKED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@VIRTIO_F_ORDER_PLATFORM = common dso_local global i32 0, align 4
@VRING_AVAIL_F_NO_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.virtqueue* @__vring_new_virtqueue(i32 %0, %struct.vring* byval(%struct.vring) align 8 %1, %struct.virtio_device* %2, i32 %3, i32 %4, i32 (%struct.virtqueue*)* %5, void (%struct.virtqueue*)* %6, i8* %7) #0 {
  %9 = alloca %struct.virtqueue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtio_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.virtqueue*)*, align 8
  %15 = alloca void (%struct.virtqueue*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.vring_virtqueue*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.virtio_device* %2, %struct.virtio_device** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 (%struct.virtqueue*)* %5, i32 (%struct.virtqueue*)** %14, align 8
  store void (%struct.virtqueue*)* %6, void (%struct.virtqueue*)** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %20 = load i32, i32* @VIRTIO_F_RING_PACKED, align 4
  %21 = call i64 @virtio_has_feature(%struct.virtio_device* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store %struct.virtqueue* null, %struct.virtqueue** %9, align 8
  br label %203

24:                                               ; preds = %8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.vring_virtqueue* @kmalloc(i32 176, i32 %25)
  store %struct.vring_virtqueue* %26, %struct.vring_virtqueue** %18, align 8
  %27 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %28 = icmp ne %struct.vring_virtqueue* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store %struct.virtqueue* null, %struct.virtqueue** %9, align 8
  br label %203

30:                                               ; preds = %24
  %31 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %32 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %15, align 8
  %34 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %35 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %35, i32 0, i32 0
  store void (%struct.virtqueue*)* %33, void (%struct.virtqueue*)** %36, align 8
  %37 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %38 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %39 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %39, i32 0, i32 5
  store %struct.virtio_device* %37, %struct.virtio_device** %40, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %43 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = getelementptr inbounds %struct.vring, %struct.vring* %1, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %48 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %52 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %55 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load i32 (%struct.virtqueue*)*, i32 (%struct.virtqueue*)** %14, align 8
  %57 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %58 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %57, i32 0, i32 2
  store i32 (%struct.virtqueue*)* %56, i32 (%struct.virtqueue*)** %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %61 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %63 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %62, i32 0, i32 4
  store i32 0, i32* %63, align 4
  %64 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %65 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %64, i32 0, i32 14
  store i64 0, i64* %65, align 8
  %66 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %67 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %66, i32 0, i32 13
  store i64 0, i64* %67, align 8
  %68 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %69 = call i32 @vring_use_dma_api(%struct.virtio_device* %68)
  %70 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %71 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %70, i32 0, i32 12
  store i32 %69, i32* %71, align 8
  %72 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %73 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %73, i32 0, i32 4
  %75 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %76 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %75, i32 0, i32 0
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  %78 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %79 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %80 = call i64 @virtio_has_feature(%struct.virtio_device* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %30
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %82, %30
  %87 = phi i1 [ false, %30 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %90 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  %91 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %92 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %93 = call i64 @virtio_has_feature(%struct.virtio_device* %91, i32 %92)
  %94 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %95 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %94, i32 0, i32 11
  store i64 %93, i64* %95, align 8
  %96 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %97 = load i32, i32* @VIRTIO_F_ORDER_PLATFORM, align 4
  %98 = call i64 @virtio_has_feature(%struct.virtio_device* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %102 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %101, i32 0, i32 3
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %86
  %104 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %105 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %108 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  %110 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %111 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = bitcast %struct.vring* %112 to i8*
  %114 = bitcast %struct.vring* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 24, i1 false)
  %115 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %116 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %119 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %118, i32 0, i32 9
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %15, align 8
  %122 = icmp ne void (%struct.virtqueue*)* %121, null
  br i1 %122, label %148, label %123

123:                                              ; preds = %103
  %124 = load i32, i32* @VRING_AVAIL_F_NO_INTERRUPT, align 4
  %125 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %126 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 8
  %130 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %131 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %130, i32 0, i32 11
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %123
  %135 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %136 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %137 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %136, i32 0, i32 9
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @cpu_to_virtio16(%struct.virtio_device* %135, i32 %139)
  %141 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %142 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %141, i32 0, i32 9
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.vring, %struct.vring* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i8* %140, i8** %146, align 8
  br label %147

147:                                              ; preds = %134, %123
  br label %148

148:                                              ; preds = %147, %103
  %149 = getelementptr inbounds %struct.vring, %struct.vring* %1, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call i32 @kmalloc_array(i32 %150, i32 4, i32 %151)
  %153 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %154 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %157 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %156, i32 0, i32 9
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %148
  %162 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %163 = call i32 @kfree(%struct.vring_virtqueue* %162)
  store %struct.virtqueue* null, %struct.virtqueue** %9, align 8
  br label %203

164:                                              ; preds = %148
  %165 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %166 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %165, i32 0, i32 10
  store i64 0, i64* %166, align 8
  store i32 0, i32* %17, align 4
  br label %167

167:                                              ; preds = %187, %164
  %168 = load i32, i32* %17, align 4
  %169 = getelementptr inbounds %struct.vring, %struct.vring* %1, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  %172 = icmp ult i32 %168, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %167
  %174 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %175 = load i32, i32* %17, align 4
  %176 = add i32 %175, 1
  %177 = call i8* @cpu_to_virtio16(%struct.virtio_device* %174, i32 %176)
  %178 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %179 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.vring, %struct.vring* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i32, i32* %17, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  store i8* %177, i8** %186, align 8
  br label %187

187:                                              ; preds = %173
  %188 = load i32, i32* %17, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %17, align 4
  br label %167

190:                                              ; preds = %167
  %191 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %192 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.vring, %struct.vring* %1, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = mul i64 %197, 4
  %199 = trunc i64 %198 to i32
  %200 = call i32 @memset(i32 %194, i32 0, i32 %199)
  %201 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %18, align 8
  %202 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %201, i32 0, i32 8
  store %struct.virtqueue* %202, %struct.virtqueue** %9, align 8
  br label %203

203:                                              ; preds = %190, %161, %29, %23
  %204 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  ret %struct.virtqueue* %204
}

declare dso_local i64 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local %struct.vring_virtqueue* @kmalloc(i32, i32) #1

declare dso_local i32 @vring_use_dma_api(%struct.virtio_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cpu_to_virtio16(%struct.virtio_device*, i32) #1

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.vring_virtqueue*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
