; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_max8907_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_max8907_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.max8907_rtc = type { i32 }

@TIME_NUM = common dso_local global i32 0, align 4
@MAX8907_REG_ALARM0_CNTL = common dso_local global i32 0, align 4
@MAX8907_REG_ALARM0_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @max8907_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8907_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.max8907_rtc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.max8907_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.max8907_rtc* %12, %struct.max8907_rtc** %6, align 8
  %13 = load i32, i32* @TIME_NUM, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = call i32 @tm_to_regs(i32* %18, i32* %16)
  %20 = load %struct.max8907_rtc*, %struct.max8907_rtc** %6, align 8
  %21 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAX8907_REG_ALARM0_CNTL, align 4
  %24 = call i32 @regmap_write(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.max8907_rtc*, %struct.max8907_rtc** %6, align 8
  %31 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAX8907_REG_ALARM0_SEC, align 4
  %34 = load i32, i32* @TIME_NUM, align 4
  %35 = call i32 @regmap_bulk_write(i32 %32, i32 %33, i32* %16, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

40:                                               ; preds = %29
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.max8907_rtc*, %struct.max8907_rtc** %6, align 8
  %47 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAX8907_REG_ALARM0_CNTL, align 4
  %50 = call i32 @regmap_write(i32 %48, i32 %49, i32 119)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %38, %27
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.max8907_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tm_to_regs(i32*, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
