; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.da9063_compatible_rtc = type { i32, %struct.da9063_compatible_rtc_regmap* }
%struct.da9063_compatible_rtc_regmap = type { i64, i32, i32, i32, i32, i32 }

@RTC_DATA_LEN = common dso_local global i32 0, align 4
@RTC_SEC = common dso_local global i64 0, align 8
@RTC_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @da9063_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.da9063_compatible_rtc*, align 8
  %7 = alloca %struct.da9063_compatible_rtc_regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.da9063_compatible_rtc* @dev_get_drvdata(%struct.device* %13)
  store %struct.da9063_compatible_rtc* %14, %struct.da9063_compatible_rtc** %6, align 8
  %15 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %16 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %15, i32 0, i32 1
  %17 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %16, align 8
  store %struct.da9063_compatible_rtc_regmap* %17, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %18 = load i32, i32* @RTC_DATA_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i64, i64* @RTC_SEC, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 0, i32* %23, align 4
  %24 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %25 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %28 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %31 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %21, i64 %32
  %34 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %35 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regmap_bulk_read(i32 %26, i32 %29, i32* %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

42:                                               ; preds = %2
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 2
  %45 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %46 = call i32 @da9063_data_to_tm(i32* %21, i32* %44, %struct.da9063_compatible_rtc* %45)
  %47 = load i64, i64* @RTC_YEAR, align 8
  %48 = getelementptr inbounds i32, i32* %21, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %51 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %61 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %64 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @regmap_read(i32 %62, i32 %65, i32* %11)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %42
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

71:                                               ; preds = %42
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %74 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  br label %84

81:                                               ; preds = %71
  %82 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %69, %40
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.da9063_compatible_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @da9063_data_to_tm(i32*, i32*, %struct.da9063_compatible_rtc*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
