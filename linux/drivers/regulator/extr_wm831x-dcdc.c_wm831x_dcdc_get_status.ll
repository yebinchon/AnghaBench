; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_DCDC_UV_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DCDC%d under voltage\0A\00", align 1
@REGULATOR_STATUS_ERROR = common dso_local global i32 0, align 4
@WM831X_DC1_OV_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DCDC%d over voltage\0A\00", align 1
@WM831X_DC1_HC_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"DCDC%d over current\0A\00", align 1
@WM831X_DCDC_STATUS = common dso_local global i32 0, align 4
@REGULATOR_STATUS_OFF = common dso_local global i32 0, align 4
@REGULATOR_STATUS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_dcdc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_dcdc_get_status(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm831x_dcdc*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm831x_dcdc* %8, %struct.wm831x_dcdc** %4, align 8
  %9 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %4, align 8
  %10 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %9, i32 0, i32 0
  %11 = load %struct.wm831x*, %struct.wm831x** %10, align 8
  store %struct.wm831x* %11, %struct.wm831x** %5, align 8
  %12 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %13 = load i32, i32* @WM831X_DCDC_UV_STATUS, align 4
  %14 = call i32 @wm831x_reg_read(%struct.wm831x* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %22 = call i32 @rdev_get_id(%struct.regulator_dev* %21)
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %28 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %31 = call i32 @rdev_get_id(%struct.regulator_dev* %30)
  %32 = add nsw i32 %31, 1
  %33 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @REGULATOR_STATUS_ERROR, align 4
  store i32 %34, i32* %2, align 4
  br label %93

35:                                               ; preds = %19
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %37 = call i32 @rdev_get_id(%struct.regulator_dev* %36)
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @WM831X_DC1_OV_STS, align 4
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %43 = call i32 @rdev_get_id(%struct.regulator_dev* %42)
  %44 = shl i32 %41, %43
  %45 = and i32 %40, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %49 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %52 = call i32 @rdev_get_id(%struct.regulator_dev* %51)
  %53 = add nsw i32 %52, 1
  %54 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @REGULATOR_STATUS_ERROR, align 4
  store i32 %55, i32* %2, align 4
  br label %93

56:                                               ; preds = %39
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @WM831X_DC1_HC_STS, align 4
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %60 = call i32 @rdev_get_id(%struct.regulator_dev* %59)
  %61 = shl i32 %58, %60
  %62 = and i32 %57, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %66 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %69 = call i32 @rdev_get_id(%struct.regulator_dev* %68)
  %70 = add nsw i32 %69, 1
  %71 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @REGULATOR_STATUS_ERROR, align 4
  store i32 %72, i32* %2, align 4
  br label %93

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %35
  %75 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %76 = load i32, i32* @WM831X_DCDC_STATUS, align 4
  %77 = call i32 @wm831x_reg_read(%struct.wm831x* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %93

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %85 = call i32 @rdev_get_id(%struct.regulator_dev* %84)
  %86 = shl i32 1, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @REGULATOR_STATUS_OFF, align 4
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @REGULATOR_STATUS_ON, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %89, %80, %64, %47, %26, %17
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
