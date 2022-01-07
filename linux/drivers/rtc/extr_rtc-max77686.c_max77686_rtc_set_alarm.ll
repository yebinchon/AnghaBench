; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.max77686_rtc_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@RTC_NR_TIME = common dso_local global i32 0, align 4
@REG_ALARM1_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Fail to write alarm reg(%d)\0A\00", align 1
@MAX77686_RTC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @max77686_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.max77686_rtc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.max77686_rtc_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.max77686_rtc_info* %12, %struct.max77686_rtc_info** %6, align 8
  %13 = load i32, i32* @RTC_NR_TIME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %20 = call i32 @max77686_rtc_tm_to_data(i32* %18, i32* %16, %struct.max77686_rtc_info* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %27 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %30 = call i32 @max77686_rtc_stop_alarm(%struct.max77686_rtc_info* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %72

34:                                               ; preds = %25
  %35 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %36 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %39 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @REG_ALARM1_SEC, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ARRAY_SIZE(i32* %16)
  %47 = call i32 @regmap_bulk_write(i32 %37, i32 %45, i32* %16, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %52 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %72

56:                                               ; preds = %34
  %57 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %58 = load i32, i32* @MAX77686_RTC_WRITE, align 4
  %59 = call i32 @max77686_rtc_update(%struct.max77686_rtc_info* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %72

63:                                               ; preds = %56
  %64 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %70 = call i32 @max77686_rtc_start_alarm(%struct.max77686_rtc_info* %69)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %62, %50, %33
  %73 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %74 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %72, %23
  %78 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.max77686_rtc_info* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @max77686_rtc_tm_to_data(i32*, i32*, %struct.max77686_rtc_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max77686_rtc_stop_alarm(%struct.max77686_rtc_info*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max77686_rtc_update(%struct.max77686_rtc_info*, i32) #1

declare dso_local i32 @max77686_rtc_start_alarm(%struct.max77686_rtc_info*) #1

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
