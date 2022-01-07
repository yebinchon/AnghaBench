; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_data = type { i64 }

@CHARGER_CACHE_UPDATE_DELAY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_data*, i32)* @cros_usbpd_charger_get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_charger_get_port_status(%struct.port_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.port_data* %0, %struct.port_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.port_data*, %struct.port_data** %4, align 8
  %11 = getelementptr inbounds %struct.port_data, %struct.port_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHARGER_CACHE_UPDATE_DELAY, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @time_is_after_jiffies(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %9, %2
  %19 = load %struct.port_data*, %struct.port_data** %4, align 8
  %20 = call i32 @cros_usbpd_charger_get_power_info(%struct.port_data* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %18
  %26 = load %struct.port_data*, %struct.port_data** %4, align 8
  %27 = call i32 @cros_usbpd_charger_port_is_dedicated(%struct.port_data* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load %struct.port_data*, %struct.port_data** %4, align 8
  %31 = call i32 @cros_usbpd_charger_get_discovery_info(%struct.port_data* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.port_data*, %struct.port_data** %4, align 8
  %35 = getelementptr inbounds %struct.port_data, %struct.port_data* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %23, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @cros_usbpd_charger_get_power_info(%struct.port_data*) #1

declare dso_local i32 @cros_usbpd_charger_port_is_dedicated(%struct.port_data*) #1

declare dso_local i32 @cros_usbpd_charger_get_discovery_info(%struct.port_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
