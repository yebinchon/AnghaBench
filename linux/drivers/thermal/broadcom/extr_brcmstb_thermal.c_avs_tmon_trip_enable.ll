; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_avs_tmon_trip_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_avs_tmon_trip_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avs_tmon_trip = type { i64, i32 }
%struct.brcmstb_thermal_priv = type { i64, i32 }

@avs_tmon_trips = common dso_local global %struct.avs_tmon_trip* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"%sable trip, type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmstb_thermal_priv*, i32, i32)* @avs_tmon_trip_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmstb_thermal_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.avs_tmon_trip*, align 8
  %8 = alloca i32, align 4
  store %struct.brcmstb_thermal_priv* %0, %struct.brcmstb_thermal_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** @avs_tmon_trips, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %9, i64 %11
  store %struct.avs_tmon_trip* %12, %struct.avs_tmon_trip** %7, align 8
  %13 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %4, align 8
  %14 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %17 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i32 @__raw_readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %4, align 8
  %22 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %34 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %45

38:                                               ; preds = %3
  %39 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %40 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %4, align 8
  %48 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.avs_tmon_trip*, %struct.avs_tmon_trip** %7, align 8
  %51 = getelementptr inbounds %struct.avs_tmon_trip, %struct.avs_tmon_trip* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @__raw_writel(i32 %46, i64 %53)
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
