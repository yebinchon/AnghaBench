; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"ur_remove\0A\00", align 1
@vmur_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @ur_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ur_remove(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @mutex_lock(i32* @vmur_mutex)
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = call i32 @ur_set_offline_force(%struct.ccw_device* %11, i32 1)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = call i32 @ur_remove_attributes(i32* %15)
  %17 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %18 = call i32 @get_ccwdev_lock(%struct.ccw_device* %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = call i32 @dev_get_drvdata(i32* %22)
  %24 = call i32 @urdev_put(i32 %23)
  %25 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = call i32 @dev_set_drvdata(i32* %26, i32* null)
  %28 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %29 = call i32 @get_ccwdev_lock(%struct.ccw_device* %28)
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32 %29, i64 %30)
  %32 = call i32 @mutex_unlock(i32* @vmur_mutex)
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ur_set_offline_force(%struct.ccw_device*, i32) #1

declare dso_local i32 @ur_remove_attributes(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @urdev_put(i32) #1

declare dso_local i32 @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
