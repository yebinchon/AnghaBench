; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.max77686_rtc_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@RTC_NR_TIME = common dso_local global i32 0, align 4
@MAX77686_RTC_READ = common dso_local global i32 0, align 4
@REG_RTC_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Fail to read time reg(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max77686_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.max77686_rtc_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.max77686_rtc_info* @dev_get_drvdata(%struct.device* %9)
  store %struct.max77686_rtc_info* %10, %struct.max77686_rtc_info** %5, align 8
  %11 = load i32, i32* @RTC_NR_TIME, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %16 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %19 = load i32, i32* @MAX77686_RTC_READ, align 4
  %20 = call i32 @max77686_rtc_update(%struct.max77686_rtc_info* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %26 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %29 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @REG_RTC_SEC, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ARRAY_SIZE(i32* %14)
  %37 = call i32 @regmap_bulk_read(i32 %27, i32 %35, i32* %14, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %42 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %50

46:                                               ; preds = %24
  %47 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %48 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %49 = call i32 @max77686_rtc_data_to_tm(i32* %14, %struct.rtc_time* %47, %struct.max77686_rtc_info* %48)
  br label %50

50:                                               ; preds = %46, %40, %23
  %51 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %52 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 %54
}

declare dso_local %struct.max77686_rtc_info* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max77686_rtc_update(%struct.max77686_rtc_info*, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max77686_rtc_data_to_tm(i32*, %struct.rtc_time*, %struct.max77686_rtc_info*) #1

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
