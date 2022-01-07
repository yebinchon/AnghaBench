; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32*, i32, i64 }
%struct.virtio_ccw_device = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @virtio_ccw_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_ccw_remove(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.virtio_ccw_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = call %struct.virtio_ccw_device* @virtio_grab_drvdata(%struct.ccw_device* %5)
  store %struct.virtio_ccw_device* %6, %struct.virtio_ccw_device** %4, align 8
  %7 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %8 = icmp ne %struct.virtio_ccw_device* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %16 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %21 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %20, i32 0, i32 0
  %22 = call i32 @virtio_break_device(i32* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %25 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %24, i32 0, i32 0
  %26 = call i32 @unregister_virtio_device(i32* %25)
  %27 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %28 = call i32 @get_ccwdev_lock(%struct.ccw_device* %27)
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  %31 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 1
  %33 = call i32 @dev_set_drvdata(i32* %32, i32* null)
  %34 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %35 = call i32 @get_ccwdev_lock(%struct.ccw_device* %34)
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %23, %9, %1
  %39 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %40 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  ret void
}

declare dso_local %struct.virtio_ccw_device* @virtio_grab_drvdata(%struct.ccw_device*) #1

declare dso_local i32 @virtio_break_device(i32*) #1

declare dso_local i32 @unregister_virtio_device(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
