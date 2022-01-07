; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)* }

@RTC_SECS_ALARM = common dso_local global i32 0, align 4
@RTC_MINS_ALARM = common dso_local global i32 0, align 4
@RTC_HRS_ALARM = common dso_local global i32 0, align 4
@RTC_MDAY_ALARM = common dso_local global i32 0, align 4
@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_CTRL_C = common dso_local global i32 0, align 4
@RTC_SECS_BCD_MASK = common dso_local global i32 0, align 4
@RTC_SECS_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MINS_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MINS_BIN_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BCD_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MDAY_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MDAY_BIN_MASK = common dso_local global i32 0, align 4
@RTC_CTRL_B_AIE = common dso_local global i32 0, align 4
@RTC_CTRL_C_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1685_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ds1685_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.ds1685_priv* @dev_get_drvdata(%struct.device* %14)
  store %struct.ds1685_priv* %15, %struct.ds1685_priv** %6, align 8
  %16 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %17 = call i32 @ds1685_rtc_begin_data_access(%struct.ds1685_priv* %16)
  %18 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %18, i32 0, i32 0
  %20 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %19, align 8
  %21 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %22 = load i32, i32* @RTC_SECS_ALARM, align 4
  %23 = call i32 %20(%struct.ds1685_priv* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %24, i32 0, i32 0
  %26 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %25, align 8
  %27 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %28 = load i32, i32* @RTC_MINS_ALARM, align 4
  %29 = call i32 %26(%struct.ds1685_priv* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %30, i32 0, i32 0
  %32 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %31, align 8
  %33 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %34 = load i32, i32* @RTC_HRS_ALARM, align 4
  %35 = call i32 %32(%struct.ds1685_priv* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %37 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %36, i32 0, i32 0
  %38 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %37, align 8
  %39 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %40 = load i32, i32* @RTC_MDAY_ALARM, align 4
  %41 = call i32 %38(%struct.ds1685_priv* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %43 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %42, i32 0, i32 0
  %44 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %43, align 8
  %45 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %46 = load i32, i32* @RTC_CTRL_B, align 4
  %47 = call i32 %44(%struct.ds1685_priv* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %49 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %48, i32 0, i32 0
  %50 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %49, align 8
  %51 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %52 = load i32, i32* @RTC_CTRL_C, align 4
  %53 = call i32 %50(%struct.ds1685_priv* %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %55 = call i32 @ds1685_rtc_end_data_access(%struct.ds1685_priv* %54)
  %56 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @ds1685_rtc_check_mday(%struct.ds1685_priv* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %2
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %3, align 4
  br label %135

63:                                               ; preds = %2
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 192
  %66 = zext i1 %65 to i32
  %67 = call i64 @likely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @RTC_SECS_BCD_MASK, align 4
  %73 = load i32, i32* @RTC_SECS_BIN_MASK, align 4
  %74 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i8* %74, i8** %77, align 8
  br label %78

78:                                               ; preds = %69, %63
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 192
  %81 = zext i1 %80 to i32
  %82 = call i64 @likely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @RTC_MINS_BCD_MASK, align 4
  %88 = load i32, i32* @RTC_MINS_BIN_MASK, align 4
  %89 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %84, %78
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 192
  %96 = zext i1 %95 to i32
  %97 = call i64 @likely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @RTC_HRS_24_BCD_MASK, align 4
  %103 = load i32, i32* @RTC_HRS_24_BIN_MASK, align 4
  %104 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %106 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  br label %108

108:                                              ; preds = %99, %93
  %109 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @RTC_MDAY_BCD_MASK, align 4
  %112 = load i32, i32* @RTC_MDAY_BIN_MASK, align 4
  %113 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %115 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @RTC_CTRL_B_AIE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %125 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @RTC_CTRL_C_AF, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %134 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %108, %61
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.ds1685_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ds1685_rtc_begin_data_access(%struct.ds1685_priv*) #1

declare dso_local i32 @ds1685_rtc_end_data_access(%struct.ds1685_priv*) #1

declare dso_local i32 @ds1685_rtc_check_mday(%struct.ds1685_priv*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
