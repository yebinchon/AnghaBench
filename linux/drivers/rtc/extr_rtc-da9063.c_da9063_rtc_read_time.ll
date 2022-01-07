; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.da9063_compatible_rtc = type { i32, %struct.rtc_time, i32, %struct.da9063_compatible_rtc_regmap* }
%struct.da9063_compatible_rtc_regmap = type { i32, i32 }

@RTC_DATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to read RTC time data: %d\0A\00", align 1
@RTC_SEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"RTC not yet ready to be read by the host\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @da9063_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.da9063_compatible_rtc*, align 8
  %7 = alloca %struct.da9063_compatible_rtc_regmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.da9063_compatible_rtc* @dev_get_drvdata(%struct.device* %14)
  store %struct.da9063_compatible_rtc* %15, %struct.da9063_compatible_rtc** %6, align 8
  %16 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %17 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %16, i32 0, i32 3
  %18 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %17, align 8
  store %struct.da9063_compatible_rtc_regmap* %18, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %19 = load i32, i32* @RTC_DATA_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %24 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %27 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RTC_DATA_LEN, align 4
  %30 = call i32 @regmap_bulk_read(i32 %25, i32 %28, i32* %22, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %79

38:                                               ; preds = %2
  %39 = load i64, i64* @RTC_SEC, align 8
  %40 = getelementptr inbounds i32, i32* %22, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %43 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %79

52:                                               ; preds = %38
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %55 = call i32 @da9063_data_to_tm(i32* %22, %struct.rtc_time* %53, %struct.da9063_compatible_rtc* %54)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %56)
  store i64 %57, i64* %8, align 8
  %58 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %59 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %58, i32 0, i32 1
  %60 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %59)
  store i64 %60, i64* %9, align 8
  %61 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %62 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %75

65:                                               ; preds = %52
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %8, align 8
  %68 = sub i64 %66, %67
  %69 = icmp eq i64 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %73 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %72, i32 0, i32 1
  %74 = call i32 @memcpy(%struct.rtc_time* %71, %struct.rtc_time* %73, i32 4)
  br label %78

75:                                               ; preds = %65, %52
  %76 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %77 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %70
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %78, %47, %33
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.da9063_compatible_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @da9063_data_to_tm(i32*, %struct.rtc_time*, %struct.da9063_compatible_rtc*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @memcpy(%struct.rtc_time*, %struct.rtc_time*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
