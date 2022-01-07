; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { i32, i32, i32, i64, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_DCDC_ON_CONFIG = common dso_local global i32 0, align 4
@WM831X_DCDC_DVS_CONTROL = common dso_local global i32 0, align 4
@WM831X_DC1_ON_VSEL_MASK = common dso_local global i32 0, align 4
@WM831X_DC1_DVS_VSEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to set DCDC DVS VSEL: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @wm831x_buckv_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_buckv_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x_dcdc*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.wm831x_dcdc* %12, %struct.wm831x_dcdc** %6, align 8
  %13 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %14 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %13, i32 0, i32 4
  %15 = load %struct.wm831x*, %struct.wm831x** %14, align 8
  store %struct.wm831x* %15, %struct.wm831x** %7, align 8
  %16 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %17 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WM831X_DCDC_ON_CONFIG, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %22 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WM831X_DCDC_DVS_CONTROL, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %27 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %32 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %38 = call i32 @wm831x_buckv_set_dvs(%struct.regulator_dev* %37, i32 0)
  store i32 %38, i32* %3, align 4
  br label %106

39:                                               ; preds = %30, %2
  %40 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %41 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %46 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %52 = call i32 @wm831x_buckv_set_dvs(%struct.regulator_dev* %51, i32 1)
  store i32 %52, i32* %3, align 4
  br label %106

53:                                               ; preds = %44, %39
  %54 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @WM831X_DC1_ON_VSEL_MASK, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @wm831x_set_bits(%struct.wm831x* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %106

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %66 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %68 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %106

73:                                               ; preds = %63
  %74 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %75 = call i32 @wm831x_buckv_set_dvs(%struct.regulator_dev* %74, i32 0)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %106

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %83 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ugt i32 %81, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @WM831X_DC1_DVS_VSEL_MASK, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @wm831x_set_bits(%struct.wm831x* %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %6, align 8
  %97 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %104

98:                                               ; preds = %86
  %99 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %100 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %94
  br label %105

105:                                              ; preds = %104, %80
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %78, %71, %61, %50, %36
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_buckv_set_dvs(%struct.regulator_dev*, i32) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
