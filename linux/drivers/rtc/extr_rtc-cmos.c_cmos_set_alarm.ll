; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i8, i8, i8, i8 }
%struct.cmos_rtc = type { i32, i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_DM_BINARY = common dso_local global i8 0, align 1
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8
@rtc_lock = common dso_local global i32 0, align 4
@RTC_AIE = common dso_local global i32 0, align 4
@RTC_HOURS_ALARM = common dso_local global i64 0, align 8
@RTC_MINUTES_ALARM = common dso_local global i64 0, align 8
@RTC_SECONDS_ALARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cmos_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.cmos_rtc*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.cmos_rtc* @dev_get_drvdata(%struct.device* %14)
  store %struct.cmos_rtc* %15, %struct.cmos_rtc** %6, align 8
  %16 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %17 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @is_valid_irq(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %189

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = call i32 @cmos_validate_alarm(%struct.device* %25, %struct.rtc_wkalrm* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %3, align 4
  br label %189

32:                                               ; preds = %24
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %7, align 1
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 4
  store i8 %42, i8* %8, align 1
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %9, align 1
  %47 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i8, i8* %49, align 2
  store i8 %50, i8* %10, align 1
  %51 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %11, align 1
  %55 = load i32, i32* @RTC_CONTROL, align 4
  %56 = call zeroext i8 @CMOS_READ(i32 %55)
  store i8 %56, i8* %12, align 1
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @RTC_DM_BINARY, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %32
  %64 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %121

66:                                               ; preds = %63, %32
  %67 = load i8, i8* %7, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sle i32 %68, 12
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8, i8* %7, align 1
  %72 = call i32 @bin2bcd(i8 zeroext %71)
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 255, %73 ]
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %7, align 1
  %77 = load i8, i8* %8, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sge i32 %78, 1
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i8, i8* %8, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sle i32 %82, 31
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i8, i8* %8, align 1
  %86 = call i32 @bin2bcd(i8 zeroext %85)
  br label %88

87:                                               ; preds = %80, %74
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 255, %87 ]
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %8, align 1
  %91 = load i8, i8* %9, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp slt i32 %92, 24
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i8, i8* %9, align 1
  %96 = call i32 @bin2bcd(i8 zeroext %95)
  br label %98

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %94
  %99 = phi i32 [ %96, %94 ], [ 255, %97 ]
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %9, align 1
  %101 = load i8, i8* %10, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp slt i32 %102, 60
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i8, i8* %10, align 1
  %106 = call i32 @bin2bcd(i8 zeroext %105)
  br label %108

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 255, %107 ]
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %10, align 1
  %111 = load i8, i8* %11, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp slt i32 %112, 60
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i8, i8* %11, align 1
  %116 = call i32 @bin2bcd(i8 zeroext %115)
  br label %118

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi i32 [ %116, %114 ], [ 255, %117 ]
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %11, align 1
  br label %121

121:                                              ; preds = %118, %63
  %122 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %123 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %124 = load i32, i32* @RTC_AIE, align 4
  %125 = call i32 @cmos_irq_disable(%struct.cmos_rtc* %123, i32 %124)
  %126 = load i8, i8* %9, align 1
  %127 = load i64, i64* @RTC_HOURS_ALARM, align 8
  %128 = call i32 @CMOS_WRITE(i8 zeroext %126, i64 %127)
  %129 = load i8, i8* %10, align 1
  %130 = load i64, i64* @RTC_MINUTES_ALARM, align 8
  %131 = call i32 @CMOS_WRITE(i8 zeroext %129, i64 %130)
  %132 = load i8, i8* %11, align 1
  %133 = load i64, i64* @RTC_SECONDS_ALARM, align 8
  %134 = call i32 @CMOS_WRITE(i8 zeroext %132, i64 %133)
  %135 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %136 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %121
  %140 = load i8, i8* %8, align 1
  %141 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %142 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @CMOS_WRITE(i8 zeroext %140, i64 %143)
  %145 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %146 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %139
  %150 = load i8, i8* %7, align 1
  %151 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %152 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @CMOS_WRITE(i8 zeroext %150, i64 %153)
  br label %155

155:                                              ; preds = %149, %139
  br label %156

156:                                              ; preds = %155, %121
  %157 = call i64 (...) @use_hpet_alarm()
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %161 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i8, i8* %162, align 1
  %164 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %165 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i8, i8* %166, align 2
  %168 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %169 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 4
  %171 = load i8, i8* %170, align 1
  %172 = call i32 @hpet_set_alarm_time(i8 zeroext %163, i8 zeroext %167, i8 zeroext %171)
  br label %173

173:                                              ; preds = %159, %156
  %174 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %175 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %180 = load i32, i32* @RTC_AIE, align 4
  %181 = call i32 @cmos_irq_enable(%struct.cmos_rtc* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %173
  %183 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %184 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %185 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %184, i32 0, i32 0
  %186 = call i32 @rtc_tm_to_time64(%struct.TYPE_2__* %185)
  %187 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %188 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %182, %30, %21
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.cmos_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @is_valid_irq(i32) #1

declare dso_local i32 @cmos_validate_alarm(%struct.device*, %struct.rtc_wkalrm*) #1

declare dso_local zeroext i8 @CMOS_READ(i32) #1

declare dso_local i32 @bin2bcd(i8 zeroext) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cmos_irq_disable(%struct.cmos_rtc*, i32) #1

declare dso_local i32 @CMOS_WRITE(i8 zeroext, i64) #1

declare dso_local i64 @use_hpet_alarm(...) #1

declare dso_local i32 @hpet_set_alarm_time(i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @cmos_irq_enable(%struct.cmos_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
