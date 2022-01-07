; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_battery_ddata = type { i32 }
%struct.cpcap_battery_state_data = type { i32, i32, i32, i32, i32, i32 }

@CPCAP_BATTERY_CC_SAMPLE_PERIOD_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_battery_ddata*)* @cpcap_battery_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_battery_update_status(%struct.cpcap_battery_ddata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpcap_battery_ddata*, align 8
  %4 = alloca %struct.cpcap_battery_state_data, align 4
  %5 = alloca %struct.cpcap_battery_state_data*, align 8
  %6 = alloca %struct.cpcap_battery_state_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.cpcap_battery_ddata* %0, %struct.cpcap_battery_ddata** %3, align 8
  %10 = call i32 @memset(%struct.cpcap_battery_state_data* %4, i32 0, i32 24)
  %11 = call i32 (...) @ktime_get()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %13 = call %struct.cpcap_battery_state_data* @cpcap_battery_latest(%struct.cpcap_battery_ddata* %12)
  store %struct.cpcap_battery_state_data* %13, %struct.cpcap_battery_state_data** %5, align 8
  %14 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %5, align 8
  %15 = icmp ne %struct.cpcap_battery_state_data* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %5, align 8
  %19 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ktime_sub(i32 %17, i32 %20)
  %22 = call i64 @ktime_to_ms(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @CPCAP_BATTERY_CC_SAMPLE_PERIOD_MS, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %58

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %4, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %34 = call i32 @cpcap_battery_get_voltage(%struct.cpcap_battery_ddata* %33)
  %35 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %4, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %37 = call i32 @cpcap_battery_get_current(%struct.cpcap_battery_ddata* %36)
  %38 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %4, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %40 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %4, i32 0, i32 1
  %41 = call i32 @cpcap_battery_read_accumulated(%struct.cpcap_battery_ddata* %39, i32* %40)
  %42 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %4, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %44 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %4, i32 0, i32 0
  %45 = call i32 @cpcap_charger_battery_temperature(%struct.cpcap_battery_ddata* %43, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %58

50:                                               ; preds = %30
  %51 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %52 = call %struct.cpcap_battery_state_data* @cpcap_battery_previous(%struct.cpcap_battery_ddata* %51)
  store %struct.cpcap_battery_state_data* %52, %struct.cpcap_battery_state_data** %6, align 8
  %53 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %6, align 8
  %54 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %5, align 8
  %55 = call i32 @memcpy(%struct.cpcap_battery_state_data* %53, %struct.cpcap_battery_state_data* %54, i32 24)
  %56 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %5, align 8
  %57 = call i32 @memcpy(%struct.cpcap_battery_state_data* %56, %struct.cpcap_battery_state_data* %4, i32 24)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %50, %48, %26
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.cpcap_battery_state_data*, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local %struct.cpcap_battery_state_data* @cpcap_battery_latest(%struct.cpcap_battery_ddata*) #1

declare dso_local i64 @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @cpcap_battery_get_voltage(%struct.cpcap_battery_ddata*) #1

declare dso_local i32 @cpcap_battery_get_current(%struct.cpcap_battery_ddata*) #1

declare dso_local i32 @cpcap_battery_read_accumulated(%struct.cpcap_battery_ddata*, i32*) #1

declare dso_local i32 @cpcap_charger_battery_temperature(%struct.cpcap_battery_ddata*, i32*) #1

declare dso_local %struct.cpcap_battery_state_data* @cpcap_battery_previous(%struct.cpcap_battery_ddata*) #1

declare dso_local i32 @memcpy(%struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
