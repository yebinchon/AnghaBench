; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_ccw_io_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_ccw_io_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_ccw_device = type { i32, i32, i32, i32, i32 }
%struct.ccw1 = type { i32 }

@VIRTIO_CCW_INTPARM_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_ccw_device*, %struct.ccw1*, i32)* @ccw_io_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_io_helper(%struct.virtio_ccw_device* %0, %struct.ccw1* %1, i32 %2) #0 {
  %4 = alloca %struct.virtio_ccw_device*, align 8
  %5 = alloca %struct.ccw1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.virtio_ccw_device* %0, %struct.virtio_ccw_device** %4, align 8
  store %struct.ccw1* %1, %struct.ccw1** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @VIRTIO_CCW_INTPARM_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  br label %16

16:                                               ; preds = %53, %3
  %17 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %18 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_ccwdev_lock(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %24 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ccw_device_start(i32 %25, %struct.ccw1* %26, i32 %27, i32 0, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %16
  %32 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %33 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %38 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %42 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %16
  %46 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %47 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_ccwdev_lock(i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32 %49, i64 %50)
  %52 = call i32 (...) @cpu_relax()
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %16, label %58

58:                                               ; preds = %53
  %59 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %60 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @doing_io(%struct.virtio_ccw_device* %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @wait_event(i32 %61, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  br label %76

72:                                               ; preds = %58
  %73 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %74 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ]
  store i32 %77, i32* %7, align 4
  %78 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %79 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_start(i32, %struct.ccw1*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @doing_io(%struct.virtio_ccw_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
