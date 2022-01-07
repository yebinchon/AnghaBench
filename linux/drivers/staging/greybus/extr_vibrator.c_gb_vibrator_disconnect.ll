; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_gb_vibrator_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_gb_vibrator_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32 }
%struct.gb_vibrator_device = type { i32, i32, i32, i32 }

@minors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_bundle*)* @gb_vibrator_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_vibrator_disconnect(%struct.gb_bundle* %0) #0 {
  %2 = alloca %struct.gb_bundle*, align 8
  %3 = alloca %struct.gb_vibrator_device*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %2, align 8
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %6 = call %struct.gb_vibrator_device* @greybus_get_drvdata(%struct.gb_bundle* %5)
  store %struct.gb_vibrator_device* %6, %struct.gb_vibrator_device** %3, align 8
  %7 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %8 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %13 = call i32 @gb_pm_runtime_get_noresume(%struct.gb_bundle* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %3, align 8
  %16 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %15, i32 0, i32 3
  %17 = call i64 @cancel_delayed_work_sync(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %3, align 8
  %21 = call i32 @turn_off(%struct.gb_vibrator_device* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %3, align 8
  %24 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_unregister(i32 %25)
  %27 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %3, align 8
  %28 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ida_simple_remove(i32* @minors, i32 %29)
  %31 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %3, align 8
  %32 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gb_connection_disable(i32 %33)
  %35 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %3, align 8
  %36 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gb_connection_destroy(i32 %37)
  %39 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %3, align 8
  %40 = call i32 @kfree(%struct.gb_vibrator_device* %39)
  ret void
}

declare dso_local %struct.gb_vibrator_device* @greybus_get_drvdata(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_get_noresume(%struct.gb_bundle*) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @turn_off(%struct.gb_vibrator_device*) #1

declare dso_local i32 @device_unregister(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @gb_connection_disable(i32) #1

declare dso_local i32 @gb_connection_destroy(i32) #1

declare dso_local i32 @kfree(%struct.gb_vibrator_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
