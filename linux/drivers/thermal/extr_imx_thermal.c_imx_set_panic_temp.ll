; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_set_panic_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_set_panic_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_thermal_data = type { i32, i32, %struct.regmap*, %struct.thermal_soc_data* }
%struct.regmap = type { i32 }
%struct.thermal_soc_data = type { i32, i32, i64 }

@REG_CLR = common dso_local global i64 0, align 8
@REG_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_thermal_data*, i32)* @imx_set_panic_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_set_panic_temp(%struct.imx_thermal_data* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_thermal_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_soc_data*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.imx_thermal_data* %0, %struct.imx_thermal_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %9 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %8, i32 0, i32 3
  %10 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %9, align 8
  store %struct.thermal_soc_data* %10, %struct.thermal_soc_data** %5, align 8
  %11 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %12 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %11, i32 0, i32 2
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %6, align 8
  %14 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %15 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %20 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %5, align 8
  %25 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG_CLR, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %5, align 8
  %30 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @regmap_write(%struct.regmap* %23, i64 %28, i32 %31)
  %33 = load %struct.regmap*, %struct.regmap** %6, align 8
  %34 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %5, align 8
  %35 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REG_SET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %5, align 8
  %41 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %39, %42
  %44 = call i32 @regmap_write(%struct.regmap* %33, i64 %38, i32 %43)
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
