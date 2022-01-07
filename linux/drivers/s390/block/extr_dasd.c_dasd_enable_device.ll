; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*)* }

@DASD_STATE_ONLINE = common dso_local global i32 0, align 4
@DASD_STATE_KNOWN = common dso_local global i64 0, align 8
@DASD_STATE_NEW = common dso_local global i32 0, align 4
@dasd_init_waitq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_enable_device(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %3 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %4 = load i32, i32* @DASD_STATE_ONLINE, align 4
  %5 = call i32 @dasd_set_target_state(%struct.dasd_device* %3, i32 %4)
  %6 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DASD_STATE_KNOWN, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %13 = load i32, i32* @DASD_STATE_NEW, align 4
  %14 = call i32 @dasd_set_target_state(%struct.dasd_device* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @dasd_init_waitq, align 4
  %17 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %18 = call i32 @_wait_for_device(%struct.dasd_device* %17)
  %19 = call i32 @wait_event(i32 %16, i32 %18)
  %20 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %21 = call i32 @dasd_reload_device(%struct.dasd_device* %20)
  %22 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %25, align 8
  %27 = icmp ne i32 (%struct.dasd_device*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %32, align 8
  %34 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %35 = call i32 %33(%struct.dasd_device* %34)
  br label %36

36:                                               ; preds = %28, %15
  ret void
}

declare dso_local i32 @dasd_set_target_state(%struct.dasd_device*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @_wait_for_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_reload_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
