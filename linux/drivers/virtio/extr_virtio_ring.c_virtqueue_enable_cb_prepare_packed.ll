; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_enable_cb_prepare_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_enable_cb_prepare_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }

@VRING_PACKED_EVENT_F_WRAP_CTR = common dso_local global i32 0, align 4
@VRING_PACKED_EVENT_FLAG_DISABLE = common dso_local global i32 0, align 4
@VRING_PACKED_EVENT_FLAG_DESC = common dso_local global i32 0, align 4
@VRING_PACKED_EVENT_FLAG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*)* @virtqueue_enable_cb_prepare_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtqueue_enable_cb_prepare_packed(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.vring_virtqueue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %4 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %5 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %4)
  store %struct.vring_virtqueue* %5, %struct.vring_virtqueue** %3, align 8
  %6 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %7 = call i32 @START_USE(%struct.vring_virtqueue* %6)
  %8 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %9 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %14 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %17 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VRING_PACKED_EVENT_F_WRAP_CTR, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %15, %21
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %25 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i8* %23, i8** %29, align 8
  %30 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %31 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @virtio_wmb(i32 %32)
  br label %34

34:                                               ; preds = %12, %1
  %35 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %36 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VRING_PACKED_EVENT_FLAG_DISABLE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %34
  %42 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %43 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @VRING_PACKED_EVENT_FLAG_DESC, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @VRING_PACKED_EVENT_FLAG_ENABLE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %53 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %56 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %61 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %59, i8** %65, align 8
  br label %66

66:                                               ; preds = %50, %34
  %67 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %68 = call i32 @END_USE(%struct.vring_virtqueue* %67)
  %69 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %70 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %73 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VRING_PACKED_EVENT_F_WRAP_CTR, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %71, %77
  ret i32 %78
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @START_USE(%struct.vring_virtqueue*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @virtio_wmb(i32) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
