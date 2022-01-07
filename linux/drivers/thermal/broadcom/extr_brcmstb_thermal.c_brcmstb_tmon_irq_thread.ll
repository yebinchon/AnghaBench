; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_brcmstb_tmon_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_brcmstb_tmon_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_thermal_priv = type { i32, i32 }

@TMON_TRIP_TYPE_LOW = common dso_local global i32 0, align 4
@TMON_TRIP_TYPE_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"low/intr/high: %d/%d/%d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @brcmstb_tmon_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_tmon_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmstb_thermal_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.brcmstb_thermal_priv*
  store %struct.brcmstb_thermal_priv* %10, %struct.brcmstb_thermal_priv** %5, align 8
  %11 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %12 = load i32, i32* @TMON_TRIP_TYPE_LOW, align 4
  %13 = call i32 @avs_tmon_get_trip_temp(%struct.brcmstb_thermal_priv* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %15 = load i32, i32* @TMON_TRIP_TYPE_HIGH, align 4
  %16 = call i32 @avs_tmon_get_trip_temp(%struct.brcmstb_thermal_priv* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %18 = call i32 @avs_tmon_get_intr_temp(%struct.brcmstb_thermal_priv* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %20 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %31 = load i32, i32* @TMON_TRIP_TYPE_HIGH, align 4
  %32 = call i32 @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %39 = load i32, i32* @TMON_TRIP_TYPE_LOW, align 4
  %40 = call i32 @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv* %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %43 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @thermal_zone_device_update(i32 %44, i32 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @avs_tmon_get_trip_temp(%struct.brcmstb_thermal_priv*, i32) #1

declare dso_local i32 @avs_tmon_get_intr_temp(%struct.brcmstb_thermal_priv*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv*, i32, i32) #1

declare dso_local i32 @thermal_zone_device_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
