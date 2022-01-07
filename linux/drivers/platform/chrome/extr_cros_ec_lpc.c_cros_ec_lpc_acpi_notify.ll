; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_lpc_acpi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_lpc_acpi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i64 }

@ACPI_NOTIFY_DEVICE_WAKE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @cros_ec_lpc_acpi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cros_ec_lpc_acpi_notify(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cros_ec_device*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.cros_ec_device*
  store %struct.cros_ec_device* %9, %struct.cros_ec_device** %7, align 8
  %10 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %11 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %16 = call i64 @cros_ec_get_next_event(%struct.cros_ec_device* %15, i32* null)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %20 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %19, i32 0, i32 0
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %22 = call i32 @blocking_notifier_call_chain(i32* %20, i32 0, %struct.cros_ec_device* %21)
  br label %23

23:                                               ; preds = %18, %14, %3
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @ACPI_NOTIFY_DEVICE_WAKE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @pm_system_wakeup()
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

declare dso_local i64 @cros_ec_get_next_event(%struct.cros_ec_device*, i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.cros_ec_device*) #1

declare dso_local i32 @pm_system_wakeup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
