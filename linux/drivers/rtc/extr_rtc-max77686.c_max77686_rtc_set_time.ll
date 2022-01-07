; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.max77686_rtc_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@RTC_NR_TIME = common dso_local global i32 0, align 4
@REG_RTC_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Fail to write time reg(%d)\0A\00", align 1
@MAX77686_RTC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max77686_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.max77686_rtc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.max77686_rtc_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.max77686_rtc_info* %12, %struct.max77686_rtc_info** %6, align 8
  %13 = load i32, i32* @RTC_NR_TIME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %18 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %19 = call i32 @max77686_rtc_tm_to_data(%struct.rtc_time* %17, i32* %16, %struct.max77686_rtc_info* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %26 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %29 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %32 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @REG_RTC_SEC, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ARRAY_SIZE(i32* %16)
  %40 = call i32 @regmap_bulk_write(i32 %30, i32 %38, i32* %16, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %24
  %44 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %45 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %53

49:                                               ; preds = %24
  %50 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %51 = load i32, i32* @MAX77686_RTC_WRITE, align 4
  %52 = call i32 @max77686_rtc_update(%struct.max77686_rtc_info* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %55 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %22
  %59 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.max77686_rtc_info* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @max77686_rtc_tm_to_data(%struct.rtc_time*, i32*, %struct.max77686_rtc_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max77686_rtc_update(%struct.max77686_rtc_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
