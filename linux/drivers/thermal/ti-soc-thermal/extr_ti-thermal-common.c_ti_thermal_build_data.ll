; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-thermal-common.c_ti_thermal_build_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-thermal-common.c_ti_thermal_build_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_thermal_data = type { i32, i32, i32, i32, %struct.ti_bandgap* }
%struct.ti_bandgap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"kzalloc fail\0A\00", align 1
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pcb\00", align 1
@ti_thermal_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ti_thermal_data* (%struct.ti_bandgap*, i32)* @ti_thermal_build_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ti_thermal_data* @ti_thermal_build_data(%struct.ti_bandgap* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_thermal_data*, align 8
  %4 = alloca %struct.ti_bandgap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_thermal_data*, align 8
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %8 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ti_thermal_data* @devm_kzalloc(i32 %9, i32 24, i32 %10)
  store %struct.ti_thermal_data* %11, %struct.ti_thermal_data** %6, align 8
  %12 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %6, align 8
  %13 = icmp ne %struct.ti_thermal_data* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %16 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.ti_thermal_data* null, %struct.ti_thermal_data** %3, align 8
  br label %37

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %6, align 8
  %22 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %24 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %6, align 8
  %25 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %24, i32 0, i32 4
  store %struct.ti_bandgap* %23, %struct.ti_bandgap** %25, align 8
  %26 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %27 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %6, align 8
  %28 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = call i32 @thermal_zone_get_zone_by_name(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %6, align 8
  %31 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %6, align 8
  %33 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %32, i32 0, i32 1
  %34 = load i32, i32* @ti_thermal_work, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %6, align 8
  store %struct.ti_thermal_data* %36, %struct.ti_thermal_data** %3, align 8
  br label %37

37:                                               ; preds = %19, %14
  %38 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %3, align 8
  ret %struct.ti_thermal_data* %38
}

declare dso_local %struct.ti_thermal_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @thermal_zone_get_zone_by_name(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
