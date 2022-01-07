; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_max8925_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_max8925_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.max8925_rtc_info = type { i32 }

@TIME_NUM = common dso_local global i32 0, align 4
@MAX8925_ALARM0_SEC = common dso_local global i32 0, align 4
@MAX8925_ALARM0_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @max8925_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.max8925_rtc_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.max8925_rtc_info* @dev_get_drvdata(%struct.device* %9)
  store %struct.max8925_rtc_info* %10, %struct.max8925_rtc_info** %5, align 8
  %11 = load i32, i32* @TIME_NUM, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 1
  %17 = load i32, i32* @TIME_NUM, align 4
  %18 = call i32 @data_calc(i8* %14, i32* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %50

22:                                               ; preds = %2
  %23 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %24 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAX8925_ALARM0_SEC, align 4
  %27 = load i32, i32* @TIME_NUM, align 4
  %28 = call i32 @max8925_bulk_write(i32 %25, i32 %26, i32 %27, i8* %14)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %50

32:                                               ; preds = %22
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %39 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MAX8925_ALARM0_CNTL, align 4
  %42 = call i32 @max8925_reg_write(i32 %40, i32 %41, i32 119)
  store i32 %42, i32* %8, align 4
  br label %49

43:                                               ; preds = %32
  %44 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %45 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAX8925_ALARM0_CNTL, align 4
  %48 = call i32 @max8925_reg_write(i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %43, %37
  br label %50

50:                                               ; preds = %49, %31, %21
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 %51
}

declare dso_local %struct.max8925_rtc_info* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @data_calc(i8*, i32*, i32) #1

declare dso_local i32 @max8925_bulk_write(i32, i32, i32, i8*) #1

declare dso_local i32 @max8925_reg_write(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
