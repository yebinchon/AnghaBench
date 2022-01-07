; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rx51_battery.c_rx51_battery_read_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rx51_battery.c_rx51_battery_read_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx51_device_info = type { i32, i32 }

@rx51_temp_table2 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Could not read ADC: %d\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@rx51_temp_table1 = common dso_local global i32* null, align 8
@rx51_temp_table2_first = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx51_device_info*)* @rx51_battery_read_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx51_battery_read_temperature(%struct.rx51_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rx51_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rx51_device_info* %0, %struct.rx51_device_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32*, i32** @rx51_temp_table2, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.rx51_device_info*, %struct.rx51_device_info** %3, align 8
  %12 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rx51_battery_read_adc(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.rx51_device_info*, %struct.rx51_device_info** %3, align 8
  %19 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @INT_MAX, align 4
  store i32 %27, i32* %2, align 4
  br label %91

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 1024
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @INT_MIN, align 4
  store i32 %32, i32* %2, align 4
  br label %91

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** @rx51_temp_table1, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32*, i32** @rx51_temp_table1, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 10
  store i32 %44, i32* %2, align 4
  br label %91

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %85, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %52, %53
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %7, align 4
  %56 = load i32*, i32** @rx51_temp_table2, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %4, align 4
  br label %76

65:                                               ; preds = %51
  %66 = load i32*, i32** @rx51_temp_table2, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %65
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32*, i32** @rx51_temp_table2, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %86

85:                                               ; preds = %76
  br label %46

86:                                               ; preds = %84, %46
  %87 = load i32, i32* @rx51_temp_table2_first, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %87, %88
  %90 = mul nsw i32 %89, 10
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %38, %31, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rx51_battery_read_adc(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
