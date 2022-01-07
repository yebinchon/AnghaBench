; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-thermal-common.c___ti_thermal_get_trend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-thermal-common.c___ti_thermal_get_trend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_thermal_data = type { i32, %struct.ti_bandgap* }
%struct.ti_bandgap = type { i32 }

@THERMAL_TREND_RAISING = common dso_local global i32 0, align 4
@THERMAL_TREND_DROPPING = common dso_local global i32 0, align 4
@THERMAL_TREND_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @__ti_thermal_get_trend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ti_thermal_get_trend(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ti_thermal_data*, align 8
  %9 = alloca %struct.ti_bandgap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ti_thermal_data*
  store %struct.ti_thermal_data* %14, %struct.ti_thermal_data** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %16 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %15, i32 0, i32 1
  %17 = load %struct.ti_bandgap*, %struct.ti_bandgap** %16, align 8
  store %struct.ti_bandgap* %17, %struct.ti_bandgap** %9, align 8
  %18 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %19 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ti_bandgap*, %struct.ti_bandgap** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ti_bandgap_get_trend(%struct.ti_bandgap* %21, i32 %22, i32* %11)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @THERMAL_TREND_RAISING, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %44

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @THERMAL_TREND_DROPPING, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @THERMAL_TREND_STABLE, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %31
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ti_bandgap_get_trend(%struct.ti_bandgap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
