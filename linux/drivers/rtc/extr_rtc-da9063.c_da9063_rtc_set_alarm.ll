; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.da9063_compatible_rtc = type { i32, i32, %struct.da9063_compatible_rtc_regmap* }
%struct.da9063_compatible_rtc_regmap = type { i64, i32, i32 }

@RTC_DATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to stop alarm: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to write alarm: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to start alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @da9063_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.da9063_compatible_rtc*, align 8
  %7 = alloca %struct.da9063_compatible_rtc_regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.da9063_compatible_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.da9063_compatible_rtc* %13, %struct.da9063_compatible_rtc** %6, align 8
  %14 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %14, i32 0, i32 2
  %16 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %15, align 8
  store %struct.da9063_compatible_rtc_regmap* %16, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %17 = load i32, i32* @RTC_DATA_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 1
  %23 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %24 = call i32 @da9063_tm_to_data(i32* %22, i32* %20, %struct.da9063_compatible_rtc* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @da9063_rtc_stop_alarm(%struct.device* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %78

34:                                               ; preds = %2
  %35 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %36 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %39 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %42 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %20, i64 %43
  %45 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %46 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regmap_bulk_write(i32 %37, i32 %40, i32* %44, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %78

56:                                               ; preds = %34
  %57 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %58 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %57, i32 0, i32 0
  %59 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %60 = call i32 @da9063_data_to_tm(i32* %20, i32* %58, %struct.da9063_compatible_rtc* %59)
  %61 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @da9063_rtc_start_alarm(%struct.device* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %78

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %56
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %70, %51, %29
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.da9063_compatible_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @da9063_tm_to_data(i32*, i32*, %struct.da9063_compatible_rtc*) #1

declare dso_local i32 @da9063_rtc_stop_alarm(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @da9063_data_to_tm(i32*, i32*, %struct.da9063_compatible_rtc*) #1

declare dso_local i32 @da9063_rtc_start_alarm(%struct.device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
