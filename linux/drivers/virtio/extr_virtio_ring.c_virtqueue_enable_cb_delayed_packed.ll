; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_enable_cb_delayed_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_enable_cb_delayed_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { i32, %struct.TYPE_8__, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@VRING_PACKED_EVENT_F_WRAP_CTR = common dso_local global i32 0, align 4
@VRING_PACKED_EVENT_FLAG_DISABLE = common dso_local global i32 0, align 4
@VRING_PACKED_EVENT_FLAG_DESC = common dso_local global i32 0, align 4
@VRING_PACKED_EVENT_FLAG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*)* @virtqueue_enable_cb_delayed_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtqueue_enable_cb_delayed_packed(%struct.virtqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vring_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  %8 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %9 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %8)
  store %struct.vring_virtqueue* %9, %struct.vring_virtqueue** %4, align 8
  %10 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %11 = call i32 @START_USE(%struct.vring_virtqueue* %10)
  %12 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %13 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %1
  %17 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %18 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %23 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %21, %25
  %27 = mul nsw i32 %26, 3
  %28 = sdiv i32 %27, 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %30 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %34 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %40 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %38, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %16
  %46 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %47 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %45, %16
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @VRING_PACKED_EVENT_F_WRAP_CTR, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %63 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i8* %61, i8** %67, align 8
  %68 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %69 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @virtio_wmb(i32 %70)
  br label %72

72:                                               ; preds = %55, %1
  %73 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %74 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @VRING_PACKED_EVENT_FLAG_DISABLE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %72
  %80 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %81 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @VRING_PACKED_EVENT_FLAG_DESC, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @VRING_PACKED_EVENT_FLAG_ENABLE, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %91 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %94 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %99 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i8* %97, i8** %103, align 8
  br label %104

104:                                              ; preds = %88, %72
  %105 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %106 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @virtio_mb(i32 %107)
  %109 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %110 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %111 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %114 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @is_used_desc_packed(%struct.vring_virtqueue* %109, i32 %112, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %121 = call i32 @END_USE(%struct.vring_virtqueue* %120)
  store i32 0, i32* %2, align 4
  br label %125

122:                                              ; preds = %104
  %123 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %124 = call i32 @END_USE(%struct.vring_virtqueue* %123)
  store i32 1, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @START_USE(%struct.vring_virtqueue*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @virtio_wmb(i32) #1

declare dso_local i32 @virtio_mb(i32) #1

declare dso_local i64 @is_used_desc_packed(%struct.vring_virtqueue*, i32, i32) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
