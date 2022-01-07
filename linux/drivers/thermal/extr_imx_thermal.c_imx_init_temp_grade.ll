; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_init_temp_grade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_init_temp_grade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_thermal_data = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Commercial\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Extended Commercial\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Industrial\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Automotive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @imx_init_temp_grade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_init_temp_grade(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_thermal_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.imx_thermal_data* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.imx_thermal_data* %7, %struct.imx_thermal_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 6
  %10 = and i32 %9, 3
  switch i32 %10, label %31 [
    i32 0, label %11
    i32 1, label %16
    i32 2, label %21
    i32 3, label %26
  ]

11:                                               ; preds = %2
  %12 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %13 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %15 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %14, i32 0, i32 1
  store i32 95000, i32* %15, align 8
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %18 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %20 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %19, i32 0, i32 1
  store i32 105000, i32* %20, align 8
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %23 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %25 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %24, i32 0, i32 1
  store i32 105000, i32* %25, align 8
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %28 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %30 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %29, i32 0, i32 1
  store i32 125000, i32* %30, align 8
  br label %31

31:                                               ; preds = %2, %26, %21, %16, %11
  %32 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %33 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 5000
  %36 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %37 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %39 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 10000
  %42 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %43 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  ret void
}

declare dso_local %struct.imx_thermal_data* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
