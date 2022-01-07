; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_max8907_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_max8907_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.max8907_rtc = type { i32 }

@TIME_NUM = common dso_local global i32 0, align 4
@MAX8907_REG_ALARM0_SEC = common dso_local global i32 0, align 4
@MAX8907_REG_ALARM0_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @max8907_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8907_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.max8907_rtc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.max8907_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.max8907_rtc* %13, %struct.max8907_rtc** %6, align 8
  %14 = load i32, i32* @TIME_NUM, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.max8907_rtc*, %struct.max8907_rtc** %6, align 8
  %19 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAX8907_REG_ALARM0_SEC, align 4
  %22 = load i32, i32* @TIME_NUM, align 4
  %23 = call i32 @regmap_bulk_read(i32 %20, i32 %21, i32* %17, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 1
  %31 = call i32 @regs_to_tm(i32* %17, i32* %30)
  %32 = load %struct.max8907_rtc*, %struct.max8907_rtc** %6, align 8
  %33 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX8907_REG_ALARM0_CNTL, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %50

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 127
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %41, %39, %26
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.max8907_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @regs_to_tm(i32*, i32*) #1

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
