; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_do_ur_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_do_ur_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urdev = type { i32, i32*, %struct.ccw_device* }
%struct.ccw_device = type { i32 }
%struct.ccw1 = type { i32 }

@event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"do_ur_io: cpa=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"do_ur_io: ccw_device_start returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"do_ur_io: I/O complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urdev*, %struct.ccw1*)* @do_ur_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ur_io(%struct.urdev* %0, %struct.ccw1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urdev*, align 8
  %5 = alloca %struct.ccw1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccw_device*, align 8
  store %struct.urdev* %0, %struct.urdev** %4, align 8
  store %struct.ccw1* %1, %struct.ccw1** %5, align 8
  %8 = load %struct.urdev*, %struct.urdev** %4, align 8
  %9 = getelementptr inbounds %struct.urdev, %struct.urdev* %8, i32 0, i32 2
  %10 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  store %struct.ccw_device* %10, %struct.ccw_device** %7, align 8
  %11 = load i32, i32* @event, align 4
  %12 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %11)
  %13 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.ccw1* %13)
  %15 = load %struct.urdev*, %struct.urdev** %4, align 8
  %16 = getelementptr inbounds %struct.urdev, %struct.urdev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock_interruptible(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.urdev*, %struct.urdev** %4, align 8
  %24 = getelementptr inbounds %struct.urdev, %struct.urdev* %23, i32 0, i32 1
  store i32* @event, i32** %24, align 8
  %25 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %26 = call i32 @get_ccwdev_lock(%struct.ccw_device* %25)
  %27 = call i32 @spin_lock_irq(i32 %26)
  %28 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %29 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %30 = call i32 @ccw_device_start(%struct.ccw_device* %28, %struct.ccw1* %29, i32 1, i32 0, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %32 = call i32 @get_ccwdev_lock(%struct.ccw_device* %31)
  %33 = call i32 @spin_unlock_irq(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %42

39:                                               ; preds = %22
  %40 = call i32 @wait_for_completion(i32* @event)
  %41 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct.urdev*, %struct.urdev** %4, align 8
  %44 = getelementptr inbounds %struct.urdev, %struct.urdev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_start(%struct.ccw_device*, %struct.ccw1*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
