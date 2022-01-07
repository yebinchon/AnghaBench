; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_set_alarm_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_set_alarm_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_thermal_data = type { i32, i32, i32, %struct.thermal_soc_data*, %struct.regmap* }
%struct.thermal_soc_data = type { i64, i32, i32, i64 }
%struct.regmap = type { i32 }

@TEMPMON_IMX7D = common dso_local global i64 0, align 8
@REG_CLR = common dso_local global i64 0, align 8
@REG_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_thermal_data*, i32)* @imx_set_alarm_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_set_alarm_temp(%struct.imx_thermal_data* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_thermal_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.thermal_soc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.imx_thermal_data* %0, %struct.imx_thermal_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %9 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %8, i32 0, i32 4
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %5, align 8
  %11 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %12 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %11, i32 0, i32 3
  %13 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %12, align 8
  store %struct.thermal_soc_data* %13, %struct.thermal_soc_data** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %16 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %18 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %17, i32 0, i32 3
  %19 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %18, align 8
  %20 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TEMPMON_IMX7D, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = sdiv i32 %25, 1000
  %27 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %28 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sub nsw i32 %30, 25
  store i32 %31, i32* %7, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %34 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %39 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %32, %24
  %43 = load %struct.regmap*, %struct.regmap** %5, align 8
  %44 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %6, align 8
  %45 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_CLR, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %6, align 8
  %50 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @regmap_write(%struct.regmap* %43, i64 %48, i32 %51)
  %53 = load %struct.regmap*, %struct.regmap** %5, align 8
  %54 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %6, align 8
  %55 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @REG_SET, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %6, align 8
  %61 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %59, %62
  %64 = call i32 @regmap_write(%struct.regmap* %53, i64 %58, i32 %63)
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
