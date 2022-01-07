; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_brcmstb_set_trips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_brcmstb_set_trips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_thermal_priv = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"set trips %d <--> %d\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@TMON_TRIP_TYPE_LOW = common dso_local global i32 0, align 4
@TMON_TRIP_TYPE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @brcmstb_set_trips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_set_trips(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmstb_thermal_priv*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.brcmstb_thermal_priv*
  store %struct.brcmstb_thermal_priv* %9, %struct.brcmstb_thermal_priv** %7, align 8
  %10 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %7, align 8
  %11 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @INT_MAX, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %7, align 8
  %22 = load i32, i32* @TMON_TRIP_TYPE_LOW, align 4
  %23 = call i32 @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv* %21, i32 %22, i32 0)
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %7, align 8
  %26 = load i32, i32* @TMON_TRIP_TYPE_LOW, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @avs_tmon_set_trip_temp(%struct.brcmstb_thermal_priv* %25, i32 %26, i32 %27)
  %29 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %7, align 8
  %30 = load i32, i32* @TMON_TRIP_TYPE_LOW, align 4
  %31 = call i32 @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv* %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %24, %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @INT_MAX, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %7, align 8
  %38 = load i32, i32* @TMON_TRIP_TYPE_HIGH, align 4
  %39 = call i32 @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv* %37, i32 %38, i32 0)
  br label %48

40:                                               ; preds = %32
  %41 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %7, align 8
  %42 = load i32, i32* @TMON_TRIP_TYPE_HIGH, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @avs_tmon_set_trip_temp(%struct.brcmstb_thermal_priv* %41, i32 %42, i32 %43)
  %45 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %7, align 8
  %46 = load i32, i32* @TMON_TRIP_TYPE_HIGH, align 4
  %47 = call i32 @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv* %45, i32 %46, i32 1)
  br label %48

48:                                               ; preds = %40, %36
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @avs_tmon_trip_enable(%struct.brcmstb_thermal_priv*, i32, i32) #1

declare dso_local i32 @avs_tmon_set_trip_temp(%struct.brcmstb_thermal_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
