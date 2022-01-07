; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2123.c_pcf2123_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2123.c_pcf2123_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcf2123_data = type { i32 }

@PCF2123_REG_CTRL1 = common dso_local global i32 0, align 4
@CTRL1_SW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"stopping RTC\0A\00", align 1
@CTRL1_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"checking for presence of RTC\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"received data from RTC (0x%08X)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CTRL1_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pcf2123_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf2123_reset(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pcf2123_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pcf2123_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.pcf2123_data* %8, %struct.pcf2123_data** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.pcf2123_data*, %struct.pcf2123_data** %4, align 8
  %10 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCF2123_REG_CTRL1, align 4
  %13 = load i32, i32* @CTRL1_SW_RESET, align 4
  %14 = call i32 @regmap_write(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.pcf2123_data*, %struct.pcf2123_data** %4, align 8
  %23 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCF2123_REG_CTRL1, align 4
  %26 = load i32, i32* @CTRL1_STOP, align 4
  %27 = call i32 @regmap_write(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.pcf2123_data*, %struct.pcf2123_data** %4, align 8
  %36 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCF2123_REG_CTRL1, align 4
  %39 = call i32 @regmap_read(i32 %37, i32 %38, i32* %6)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %67

44:                                               ; preds = %32
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @CTRL1_STOP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %67

55:                                               ; preds = %44
  %56 = load %struct.pcf2123_data*, %struct.pcf2123_data** %4, align 8
  %57 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PCF2123_REG_CTRL1, align 4
  %60 = load i32, i32* @CTRL1_CLEAR, align 4
  %61 = call i32 @regmap_write(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %64, %52, %42, %30, %17
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.pcf2123_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
