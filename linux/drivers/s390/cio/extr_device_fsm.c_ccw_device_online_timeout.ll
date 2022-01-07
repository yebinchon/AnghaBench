; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_online_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_online_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__*, i32 (%struct.ccw_device*, i32, i32)* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DEV_STATE_TIMEOUT_KILL = common dso_local global i32 0, align 4
@DEV_EVENT_NOTOPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_online_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_online_timeout(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %6, i32 0)
  %8 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 255, i32* %11, align 4
  %12 = load i32, i32* @ETIMEDOUT, align 4
  %13 = sub nsw i32 0, %12
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %13, i32* %17, align 4
  %18 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %19 = call i32 @ccw_device_cancel_halt_clear(%struct.ccw_device* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 3, %26
  %28 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %25, i32 %27)
  %29 = load i32, i32* @DEV_STATE_TIMEOUT_KILL, align 4
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 4
  br label %61

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %39 = load i32, i32* @DEV_EVENT_NOTOPER, align 4
  %40 = call i32 @dev_fsm_event(%struct.ccw_device* %38, i32 %39)
  br label %61

41:                                               ; preds = %34
  %42 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %43 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %42, i32 0, i32 1
  %44 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.ccw_device*, i32, i32)* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %48 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %47, i32 0, i32 1
  %49 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %48, align 8
  %50 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %51 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %52 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @ERR_PTR(i32 %57)
  %59 = call i32 %49(%struct.ccw_device* %50, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %46, %41
  br label %61

61:                                               ; preds = %24, %60, %37
  ret void
}

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_cancel_halt_clear(%struct.ccw_device*) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
