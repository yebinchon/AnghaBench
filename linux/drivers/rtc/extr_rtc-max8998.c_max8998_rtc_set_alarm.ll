; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8998.c_max8998_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8998.c_max8998_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.max8998_rtc_info = type { i64, i32 }

@MAX8998_ALARM0_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @max8998_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.max8998_rtc_info*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.max8998_rtc_info* @dev_get_drvdata(%struct.device* %9)
  store %struct.max8998_rtc_info* %10, %struct.max8998_rtc_info** %6, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %14 = call i32 @max8998_tm_to_data(i32* %12, i32* %13)
  %15 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %16 = call i32 @max8998_rtc_stop_alarm(%struct.max8998_rtc_info* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %23 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MAX8998_ALARM0_SEC, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %27 = call i32 @max8998_bulk_write(i32 %24, i32 %25, i32 8, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %34 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @msleep(i32 2000)
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %46 = call i32 @max8998_rtc_start_alarm(%struct.max8998_rtc_info* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %30, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.max8998_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @max8998_tm_to_data(i32*, i32*) #1

declare dso_local i32 @max8998_rtc_stop_alarm(%struct.max8998_rtc_info*) #1

declare dso_local i32 @max8998_bulk_write(i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @max8998_rtc_start_alarm(%struct.max8998_rtc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
