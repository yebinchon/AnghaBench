; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rockchip_thermal.c_rockchip_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rockchip_thermal.c_rockchip_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_thermal_sensor = type { i32, %struct.rockchip_thermal_data* }
%struct.rockchip_thermal_data = type { %struct.TYPE_2__*, i32, %struct.rockchip_tsadc_chip* }
%struct.TYPE_2__ = type { i32 }
%struct.rockchip_tsadc_chip = type { i32 (i32*, i32, i32, i32*)*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"sensor %d - temp: %d, retval: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @rockchip_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_thermal_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rockchip_thermal_sensor*, align 8
  %6 = alloca %struct.rockchip_thermal_data*, align 8
  %7 = alloca %struct.rockchip_tsadc_chip*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.rockchip_thermal_sensor*
  store %struct.rockchip_thermal_sensor* %10, %struct.rockchip_thermal_sensor** %5, align 8
  %11 = load %struct.rockchip_thermal_sensor*, %struct.rockchip_thermal_sensor** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_thermal_sensor, %struct.rockchip_thermal_sensor* %11, i32 0, i32 1
  %13 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %12, align 8
  store %struct.rockchip_thermal_data* %13, %struct.rockchip_thermal_data** %6, align 8
  %14 = load %struct.rockchip_thermal_sensor*, %struct.rockchip_thermal_sensor** %5, align 8
  %15 = getelementptr inbounds %struct.rockchip_thermal_sensor, %struct.rockchip_thermal_sensor* %14, i32 0, i32 1
  %16 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %15, align 8
  %17 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %16, i32 0, i32 2
  %18 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %17, align 8
  store %struct.rockchip_tsadc_chip* %18, %struct.rockchip_tsadc_chip** %7, align 8
  %19 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %7, align 8
  %20 = getelementptr inbounds %struct.rockchip_tsadc_chip, %struct.rockchip_tsadc_chip* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32, i32, i32*)*, i32 (i32*, i32, i32, i32*)** %20, align 8
  %22 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %7, align 8
  %23 = getelementptr inbounds %struct.rockchip_tsadc_chip, %struct.rockchip_tsadc_chip* %22, i32 0, i32 1
  %24 = load %struct.rockchip_thermal_sensor*, %struct.rockchip_thermal_sensor** %5, align 8
  %25 = getelementptr inbounds %struct.rockchip_thermal_sensor, %struct.rockchip_thermal_sensor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %6, align 8
  %28 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 %21(i32* %23, i32 %26, i32 %29, i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %6, align 8
  %33 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.rockchip_thermal_sensor*, %struct.rockchip_thermal_sensor** %5, align 8
  %37 = getelementptr inbounds %struct.rockchip_thermal_sensor, %struct.rockchip_thermal_sensor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
