; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i64 }
%struct.pm8xxx_rtc = type { i32, i32, %struct.pm8xxx_rtc_regs* }
%struct.pm8xxx_rtc_regs = type { i32, i32, i32 }

@NUM_8_BIT_RTC_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Write to RTC ALARM register failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Write to RTC alarm control register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Alarm Set for h:m:s=%ptRt, y-m-d=%ptRdr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pm8xxx_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pm8xxx_rtc*, align 8
  %13 = alloca %struct.pm8xxx_rtc_regs*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %14 = load i32, i32* @NUM_8_BIT_RTC_REGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device* %18)
  store %struct.pm8xxx_rtc* %19, %struct.pm8xxx_rtc** %12, align 8
  %20 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %12, align 8
  %21 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %20, i32 0, i32 2
  %22 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %21, align 8
  store %struct.pm8xxx_rtc_regs* %22, %struct.pm8xxx_rtc_regs** %13, align 8
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 0
  %25 = call i32 @rtc_tm_to_time(i32* %24, i64* %10)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %38, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NUM_8_BIT_RTC_REGS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = and i64 %31, 255
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %17, i64 %34
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %10, align 8
  %37 = lshr i64 %36, 8
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %12, align 8
  %43 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %42, i32 0, i32 0
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %12, align 8
  %47 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %13, align 8
  %50 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = mul nuw i64 8, %15
  %53 = trunc i64 %52 to i32
  %54 = call i32 @regmap_bulk_write(i32 %48, i32 %51, i64* %17, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %110

60:                                               ; preds = %41
  %61 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %12, align 8
  %62 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %13, align 8
  %65 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regmap_read(i32 %63, i32 %66, i32* %9)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %110

71:                                               ; preds = %60
  %72 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %73 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %13, align 8
  %78 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %89

82:                                               ; preds = %71
  %83 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %13, align 8
  %84 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %82, %76
  %90 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %12, align 8
  %91 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %13, align 8
  %94 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @regmap_write(i32 %92, i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %110

103:                                              ; preds = %89
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %106 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %105, i32 0, i32 0
  %107 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %108 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %107, i32 0, i32 0
  %109 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %106, i32* %108)
  br label %110

110:                                              ; preds = %103, %100, %70, %57
  %111 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %12, align 8
  %112 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %111, i32 0, i32 0
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %116)
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device*) #2

declare dso_local i32 @rtc_tm_to_time(i32*, i64*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @regmap_bulk_write(i32, i32, i64*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*, i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
