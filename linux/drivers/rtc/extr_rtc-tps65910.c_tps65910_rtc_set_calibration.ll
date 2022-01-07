; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_set_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_set_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tps65910 = type { i32 }

@NUM_COMP_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RTC calibration value out of range: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS65910_RTC_COMP_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"rtc_set_calibration error: %d\0A\00", align 1
@TPS65910_RTC_CTRL = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL_AUTO_COMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"auto_comp enable failed with error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @tps65910_rtc_set_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_rtc_set_calibration(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tps65910*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @NUM_COMP_REGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tps65910* @dev_get_drvdata(i32 %18)
  store %struct.tps65910* %19, %struct.tps65910** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, -32768
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 32766
  br i1 %24, label %25, label %31

25:                                               ; preds = %22, %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %37, i8* %38, align 16
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %43, i8* %44, align 1
  %45 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %46 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TPS65910_RTC_COMP_LSB, align 4
  %49 = load i32, i32* @NUM_COMP_REGS, align 4
  %50 = call i32 @regmap_bulk_write(i32 %47, i32 %48, i8* %15, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %31
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

58:                                               ; preds = %31
  %59 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %60 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TPS65910_RTC_CTRL, align 4
  %63 = load i32, i32* @TPS65910_RTC_CTRL_AUTO_COMP, align 4
  %64 = load i32, i32* @TPS65910_RTC_CTRL_AUTO_COMP, align 4
  %65 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %72, %53, %25
  %75 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
