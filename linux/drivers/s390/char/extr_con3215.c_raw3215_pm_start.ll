; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_pm_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_pm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.raw3215_info = type { i32, i32, i32 }

@RAW3215_FLUSHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @raw3215_pm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3215_pm_start(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.raw3215_info*, align 8
  %4 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = call %struct.raw3215_info* @dev_get_drvdata(i32* %6)
  store %struct.raw3215_info* %7, %struct.raw3215_info** %3, align 8
  %8 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %9 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_ccwdev_lock(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32 %11, i64 %12)
  %14 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %15 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %14, i32 0, i32 2
  %16 = call i32 @tty_port_set_suspended(i32* %15, i32 0)
  %17 = load i32, i32* @RAW3215_FLUSHING, align 4
  %18 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %19 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %23 = call i32 @raw3215_try_io(%struct.raw3215_info* %22)
  %24 = load i32, i32* @RAW3215_FLUSHING, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %27 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %31 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_ccwdev_lock(i32 %32)
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32 %33, i64 %34)
  ret i32 0
}

declare dso_local %struct.raw3215_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @tty_port_set_suspended(i32*, i32) #1

declare dso_local i32 @raw3215_try_io(%struct.raw3215_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
