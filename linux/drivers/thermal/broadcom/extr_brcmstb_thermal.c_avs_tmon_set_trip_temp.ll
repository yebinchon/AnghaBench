; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_avs_tmon_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_avs_tmon_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avs_tmon_trip = type { i64, i32, i32 }
%struct.brcmstb_thermal_priv = type { i64, i32, i32 }

@avs_tmon_trips = common dso_local global %struct.avs_tmon_trip* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"set temp %d to %d\0A\00", align 1
@TMON_TRIP_TYPE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmstb_thermal_priv*, i32, i32)* @avs_tmon_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avs_tmon_set_trip_temp(%struct.brcmstb_thermal_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmstb_thermal_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.avs_tmon_trip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmstb_thermal_priv* %0, %struct.brcmstb_thermal_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** @avs_tmon_trips, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %10, i64 %12
  store %struct.avs_tmon_trip* %13, %struct.avs_tmon_trip** %7, align 8
  %14 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %4, align 8
  %15 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %4, align 8
  %21 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TMON_TRIP_TYPE_LOW, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @avs_tmon_temp_to_code(i32 %22, i32 %23, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %30 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %35 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %4, align 8
  %40 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %43 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @__raw_readl(i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %48 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %4, align 8
  %58 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %61 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = call i32 @__raw_writel(i32 %56, i64 %63)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @avs_tmon_temp_to_code(i32, i32, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
