; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_kick_prepare_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_kick_prepare_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*)* @virtqueue_kick_prepare_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtqueue_kick_prepare_split(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.vring_virtqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %7)
  store %struct.vring_virtqueue* %8, %struct.vring_virtqueue** %3, align 8
  %9 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %10 = call i32 @START_USE(%struct.vring_virtqueue* %9)
  %11 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %12 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @virtio_mb(i32 %13)
  %15 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %16 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %20 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %24 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %28 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %30 = call i32 @LAST_ADD_TIME_CHECK(%struct.vring_virtqueue* %29)
  %31 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %32 = call i32 @LAST_ADD_TIME_INVALID(%struct.vring_virtqueue* %31)
  %33 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %34 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %1
  %38 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %39 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %42 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @vring_avail_event(%struct.TYPE_6__* %43)
  %45 = call i32 @virtio16_to_cpu(i32 %40, i32 %44)
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @vring_need_event(i32 %45, i64 %46, i64 %47)
  store i32 %48, i32* %6, align 4
  br label %66

49:                                               ; preds = %1
  %50 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %51 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %58 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %61 = call i32 @cpu_to_virtio16(i32 %59, i32 %60)
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %49, %37
  %67 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %68 = call i32 @END_USE(%struct.vring_virtqueue* %67)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @START_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @virtio_mb(i32) #1

declare dso_local i32 @LAST_ADD_TIME_CHECK(%struct.vring_virtqueue*) #1

declare dso_local i32 @LAST_ADD_TIME_INVALID(%struct.vring_virtqueue*) #1

declare dso_local i32 @vring_need_event(i32, i64, i64) #1

declare dso_local i32 @virtio16_to_cpu(i32, i32) #1

declare dso_local i32 @vring_avail_event(%struct.TYPE_6__*) #1

declare dso_local i32 @cpu_to_virtio16(i32, i32) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
