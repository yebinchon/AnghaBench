; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_pm_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_pm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.raw3270 = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@RAW3270_FLAGS_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @raw3270_pm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3270_pm_start(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.raw3270*, align 8
  %5 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = call %struct.raw3270* @dev_get_drvdata(i32* %7)
  store %struct.raw3270* %8, %struct.raw3270** %4, align 8
  %9 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %10 = icmp ne %struct.raw3270* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %14 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @get_ccwdev_lock(i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load i32, i32* @RAW3270_FLAGS_FROZEN, align 4
  %20 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %21 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %20, i32 0, i32 2
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %24 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %12
  %28 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %29 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_4__*)* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %38 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %42, align 8
  %44 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %45 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 %43(%struct.TYPE_4__* %46)
  br label %48

48:                                               ; preds = %36, %27, %12
  %49 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %50 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @get_ccwdev_lock(i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32 %52, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.raw3270* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
