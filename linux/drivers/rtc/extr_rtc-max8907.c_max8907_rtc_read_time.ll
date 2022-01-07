; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_max8907_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_max8907_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.max8907_rtc = type { i32 }

@TIME_NUM = common dso_local global i32 0, align 4
@MAX8907_REG_RTC_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max8907_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8907_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.max8907_rtc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.max8907_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.max8907_rtc* %12, %struct.max8907_rtc** %6, align 8
  %13 = load i32, i32* @TIME_NUM, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.max8907_rtc*, %struct.max8907_rtc** %6, align 8
  %18 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAX8907_REG_RTC_SEC, align 4
  %21 = load i32, i32* @TIME_NUM, align 4
  %22 = call i32 @regmap_bulk_read(i32 %19, i32 %20, i32* %16, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = call i32 @regs_to_tm(i32* %16, %struct.rtc_time* %28)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.max8907_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @regs_to_tm(i32*, %struct.rtc_time*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
