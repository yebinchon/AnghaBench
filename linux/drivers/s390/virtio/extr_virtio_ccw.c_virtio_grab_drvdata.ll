; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_grab_drvdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_grab_drvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_ccw_device = type { i32 }
%struct.ccw_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtio_ccw_device* (%struct.ccw_device*)* @virtio_grab_drvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtio_ccw_device* @virtio_grab_drvdata(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.virtio_ccw_device*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.virtio_ccw_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = call i32 @get_ccwdev_lock(%struct.ccw_device* %6)
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32 %7, i64 %8)
  %10 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = call %struct.virtio_ccw_device* @dev_get_drvdata(i32* %11)
  store %struct.virtio_ccw_device* %12, %struct.virtio_ccw_device** %5, align 8
  %13 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %14 = icmp ne %struct.virtio_ccw_device* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %17 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15, %1
  %21 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %22 = call i32 @get_ccwdev_lock(%struct.ccw_device* %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32 %22, i64 %23)
  store %struct.virtio_ccw_device* null, %struct.virtio_ccw_device** %2, align 8
  br label %33

25:                                               ; preds = %15
  %26 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %27 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %29 = call i32 @get_ccwdev_lock(%struct.ccw_device* %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32 %29, i64 %30)
  %32 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  store %struct.virtio_ccw_device* %32, %struct.virtio_ccw_device** %2, align 8
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %2, align 8
  ret %struct.virtio_ccw_device* %34
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local %struct.virtio_ccw_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
