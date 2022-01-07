; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_urdev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_urdev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urdev = type { %struct.ccw_device*, i32, i32, i32, i32, i32, i32 }
%struct.ccw_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urdev* (%struct.ccw_device*)* @urdev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urdev* @urdev_alloc(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.urdev*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.urdev*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.urdev* @kzalloc(i32 32, i32 %5)
  store %struct.urdev* %6, %struct.urdev** %4, align 8
  %7 = load %struct.urdev*, %struct.urdev** %4, align 8
  %8 = icmp ne %struct.urdev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.urdev* null, %struct.urdev** %2, align 8
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.urdev*, %struct.urdev** %4, align 8
  %16 = getelementptr inbounds %struct.urdev, %struct.urdev* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %18 = load %struct.urdev*, %struct.urdev** %4, align 8
  %19 = getelementptr inbounds %struct.urdev, %struct.urdev* %18, i32 0, i32 5
  %20 = call i32 @ccw_device_get_id(%struct.ccw_device* %17, i32* %19)
  %21 = load %struct.urdev*, %struct.urdev** %4, align 8
  %22 = getelementptr inbounds %struct.urdev, %struct.urdev* %21, i32 0, i32 4
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.urdev*, %struct.urdev** %4, align 8
  %25 = getelementptr inbounds %struct.urdev, %struct.urdev* %24, i32 0, i32 3
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.urdev*, %struct.urdev** %4, align 8
  %28 = getelementptr inbounds %struct.urdev, %struct.urdev* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.urdev*, %struct.urdev** %4, align 8
  %31 = getelementptr inbounds %struct.urdev, %struct.urdev* %30, i32 0, i32 1
  %32 = call i32 @refcount_set(i32* %31, i32 1)
  %33 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %34 = load %struct.urdev*, %struct.urdev** %4, align 8
  %35 = getelementptr inbounds %struct.urdev, %struct.urdev* %34, i32 0, i32 0
  store %struct.ccw_device* %33, %struct.ccw_device** %35, align 8
  %36 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 0
  %38 = call i32 @get_device(i32* %37)
  %39 = load %struct.urdev*, %struct.urdev** %4, align 8
  store %struct.urdev* %39, %struct.urdev** %2, align 8
  br label %40

40:                                               ; preds = %10, %9
  %41 = load %struct.urdev*, %struct.urdev** %2, align 8
  ret %struct.urdev* %41
}

declare dso_local %struct.urdev* @kzalloc(i32, i32) #1

declare dso_local i32 @ccw_device_get_id(%struct.ccw_device*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
