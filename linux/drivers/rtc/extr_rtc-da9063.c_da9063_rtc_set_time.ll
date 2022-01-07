; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.da9063_compatible_rtc = type { i32, %struct.da9063_compatible_rtc_regmap* }
%struct.da9063_compatible_rtc_regmap = type { i32 }

@RTC_DATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to set RTC time data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @da9063_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.da9063_compatible_rtc*, align 8
  %6 = alloca %struct.da9063_compatible_rtc_regmap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.da9063_compatible_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.da9063_compatible_rtc* %11, %struct.da9063_compatible_rtc** %5, align 8
  %12 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %12, i32 0, i32 1
  %14 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %13, align 8
  store %struct.da9063_compatible_rtc_regmap* %14, %struct.da9063_compatible_rtc_regmap** %6, align 8
  %15 = load i32, i32* @RTC_DATA_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %20 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %5, align 8
  %21 = call i32 @da9063_tm_to_data(%struct.rtc_time* %19, i32* %18, %struct.da9063_compatible_rtc* %20)
  %22 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %5, align 8
  %23 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %6, align 8
  %26 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RTC_DATA_LEN, align 4
  %29 = call i32 @regmap_bulk_write(i32 %24, i32 %27, i32* %18, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %38)
  ret i32 %37
}

declare dso_local %struct.da9063_compatible_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @da9063_tm_to_data(%struct.rtc_time*, i32*, %struct.da9063_compatible_rtc*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
