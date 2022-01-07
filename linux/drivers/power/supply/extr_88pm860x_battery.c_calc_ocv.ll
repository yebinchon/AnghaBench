; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_calc_ocv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_calc_ocv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@OCV_MODE_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"VBAT average:%d, OCV:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_battery_info*, i32*)* @calc_ocv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_ocv(%struct.pm860x_battery_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm860x_battery_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %24 = load i32, i32* @OCV_MODE_ACTIVE, align 4
  %25 = call i32 @measure_vbatt(%struct.pm860x_battery_info* %23, i32 %24, i32* %8)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %81

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %34 = call i32 @measure_current(%struct.pm860x_battery_info* %33, i32* %8)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %81

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load i32, i32* %10, align 4
  %47 = sdiv i32 %46, 10
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sdiv i32 %48, 10
  store i32 %49, i32* %11, align 4
  %50 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %51 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %50, i32 0, i32 2
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %54 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %61 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = sdiv i32 %63, 1000
  %65 = sub nsw i32 %58, %64
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  br label %70

67:                                               ; preds = %45
  %68 = load i32, i32* %9, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %72 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %71, i32 0, i32 2
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %75 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79)
  store i32 0, i32* %3, align 4
  br label %83

81:                                               ; preds = %37, %28
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %70, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @measure_vbatt(%struct.pm860x_battery_info*, i32, i32*) #1

declare dso_local i32 @measure_current(%struct.pm860x_battery_info*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
