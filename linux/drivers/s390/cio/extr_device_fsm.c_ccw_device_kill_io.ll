; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_kill_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_kill_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__*, i32 (%struct.ccw_device*, i32, i32)* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DEV_STATE_TIMEOUT_KILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_kill_io(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %4, i32 0)
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 255, i32* %9, align 4
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  %12 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %11, i32* %15, align 4
  %16 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %17 = call i32 @ccw_device_cancel_halt_clear(%struct.ccw_device* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 3, %24
  %26 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %23, i32 %25)
  %27 = load i32, i32* @DEV_STATE_TIMEOUT_KILL, align 4
  %28 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %29 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %27, i32* %31, align 4
  br label %53

32:                                               ; preds = %1
  %33 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %34 = call i32 @ccw_device_online_verify(%struct.ccw_device* %33, i32 0)
  %35 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 1
  %37 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.ccw_device*, i32, i32)* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %41 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %40, i32 0, i32 1
  %42 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %41, align 8
  %43 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %44 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %45 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @ERR_PTR(i32 %50)
  %52 = call i32 %42(%struct.ccw_device* %43, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %22, %39, %32
  ret void
}

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_cancel_halt_clear(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_online_verify(%struct.ccw_device*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
