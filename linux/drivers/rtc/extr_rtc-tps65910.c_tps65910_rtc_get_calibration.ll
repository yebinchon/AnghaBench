; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_get_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_get_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tps65910 = type { i32 }

@NUM_COMP_REGS = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL_AUTO_COMP = common dso_local global i32 0, align 4
@TPS65910_RTC_COMP_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rtc_get_calibration error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*)* @tps65910_rtc_get_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_rtc_get_calibration(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tps65910*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @NUM_COMP_REGS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.tps65910* @dev_get_drvdata(i32 %19)
  store %struct.tps65910* %20, %struct.tps65910** %8, align 8
  %21 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %22 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TPS65910_RTC_CTRL, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @TPS65910_RTC_CTRL_AUTO_COMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

37:                                               ; preds = %30
  %38 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %39 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TPS65910_RTC_COMP_LSB, align 4
  %42 = load i32, i32* @NUM_COMP_REGS, align 4
  %43 = call i32 @regmap_bulk_read(i32 %40, i32 %41, i8* %16, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

51:                                               ; preds = %37
  %52 = getelementptr inbounds i8, i8* %16, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds i8, i8* %16, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 8
  %59 = or i32 %54, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %51, %46, %35, %28
  %63 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i8*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
