; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32, i32)*, i64 }

@RTC_SECS_BIN_MASK = common dso_local global i32 0, align 4
@RTC_SECS_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MINS_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MINS_BCD_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BIN_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MDAY_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MDAY_BCD_MASK = common dso_local global i32 0, align 4
@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_CTRL_B_AIE = common dso_local global i32 0, align 4
@RTC_CTRL_C = common dso_local global i32 0, align 4
@RTC_CTRL_B_DM = common dso_local global i32 0, align 4
@RTC_SECS_ALARM = common dso_local global i32 0, align 4
@RTC_MINS_ALARM = common dso_local global i32 0, align 4
@RTC_HRS_ALARM = common dso_local global i32 0, align 4
@RTC_MDAY_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1685_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
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
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.ds1685_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.ds1685_priv* %14, %struct.ds1685_priv** %6, align 8
  %15 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %16 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RTC_SECS_BIN_MASK, align 4
  %21 = load i32, i32* @RTC_SECS_BCD_MASK, align 4
  %22 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %15, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %24 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RTC_MINS_BIN_MASK, align 4
  %29 = load i32, i32* @RTC_MINS_BCD_MASK, align 4
  %30 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %23, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RTC_HRS_24_BIN_MASK, align 4
  %37 = load i32, i32* @RTC_HRS_24_BCD_MASK, align 4
  %38 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %31, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RTC_MDAY_BIN_MASK, align 4
  %45 = load i32, i32* @RTC_MDAY_BCD_MASK, align 4
  %46 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %39, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @ds1685_rtc_check_mday(%struct.ds1685_priv* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %2
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %3, align 4
  br label %194

54:                                               ; preds = %2
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 192
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 255, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %9, align 4
  %63 = icmp sge i32 %62, 192
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 255, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 192
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 255, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  %79 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 -1, i32* %81, align 4
  %82 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 -1, i32* %84, align 8
  %85 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 -1, i32* %87, align 4
  %88 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  store i32 -1, i32* %90, align 8
  %91 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %92 = call i32 @ds1685_rtc_begin_data_access(%struct.ds1685_priv* %91)
  %93 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %94 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %93, i32 0, i32 0
  %95 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %94, align 8
  %96 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %97 = load i32, i32* @RTC_CTRL_B, align 4
  %98 = call i32 %95(%struct.ds1685_priv* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %100 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %99, i32 0, i32 1
  %101 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %100, align 8
  %102 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %103 = load i32, i32* @RTC_CTRL_B, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @RTC_CTRL_B_AIE, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = call i32 %101(%struct.ds1685_priv* %102, i32 %103, i32 %107)
  %109 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %110 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %109, i32 0, i32 0
  %111 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %110, align 8
  %112 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %113 = load i32, i32* @RTC_CTRL_C, align 4
  %114 = call i32 %111(%struct.ds1685_priv* %112, i32 %113)
  %115 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %116 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %115, i32 0, i32 0
  %117 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %116, align 8
  %118 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %119 = load i32, i32* @RTC_CTRL_B, align 4
  %120 = call i32 %117(%struct.ds1685_priv* %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %122 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %75
  %126 = load i32, i32* @RTC_CTRL_B_DM, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %134

130:                                              ; preds = %75
  %131 = load i32, i32* @RTC_CTRL_B_DM, align 4
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %130, %125
  %135 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %136 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %135, i32 0, i32 1
  %137 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %136, align 8
  %138 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %139 = load i32, i32* @RTC_CTRL_B, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 %137(%struct.ds1685_priv* %138, i32 %139, i32 %140)
  %142 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %143 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %142, i32 0, i32 1
  %144 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %143, align 8
  %145 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %146 = load i32, i32* @RTC_SECS_ALARM, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 %144(%struct.ds1685_priv* %145, i32 %146, i32 %147)
  %149 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %150 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %149, i32 0, i32 1
  %151 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %150, align 8
  %152 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %153 = load i32, i32* @RTC_MINS_ALARM, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 %151(%struct.ds1685_priv* %152, i32 %153, i32 %154)
  %156 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %157 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %156, i32 0, i32 1
  %158 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %157, align 8
  %159 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %160 = load i32, i32* @RTC_HRS_ALARM, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 %158(%struct.ds1685_priv* %159, i32 %160, i32 %161)
  %163 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %164 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %163, i32 0, i32 1
  %165 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %164, align 8
  %166 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %167 = load i32, i32* @RTC_MDAY_ALARM, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 %165(%struct.ds1685_priv* %166, i32 %167, i32 %168)
  %170 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %171 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %134
  %175 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %176 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %175, i32 0, i32 0
  %177 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %176, align 8
  %178 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %179 = load i32, i32* @RTC_CTRL_B, align 4
  %180 = call i32 %177(%struct.ds1685_priv* %178, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* @RTC_CTRL_B_AIE, align 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  %184 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %185 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %184, i32 0, i32 1
  %186 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %185, align 8
  %187 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %188 = load i32, i32* @RTC_CTRL_B, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 %186(%struct.ds1685_priv* %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %174, %134
  %192 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %193 = call i32 @ds1685_rtc_end_data_access(%struct.ds1685_priv* %192)
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %191, %52
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.ds1685_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv*, i32, i32, i32) #1

declare dso_local i32 @ds1685_rtc_check_mday(%struct.ds1685_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ds1685_rtc_begin_data_access(%struct.ds1685_priv*) #1

declare dso_local i32 @ds1685_rtc_end_data_access(%struct.ds1685_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
