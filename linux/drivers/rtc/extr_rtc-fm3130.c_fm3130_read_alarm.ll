; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fm3130.c_fm3130_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fm3130.c_fm3130_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i64, i32, i32, i8*, i8*, i8*, i8* }
%struct.fm3130 = type { i32*, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"alarm read %02x %02x %02x %02x %02x\0A\00", align 1
@FM3130_ALARM_SECONDS = common dso_local global i64 0, align 8
@FM3130_ALARM_MINUTES = common dso_local global i64 0, align 8
@FM3130_ALARM_HOURS = common dso_local global i64 0, align 8
@FM3130_ALARM_DATE = common dso_local global i64 0, align 8
@FM3130_ALARM_MONTHS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"read alarm\00", align 1
@FM3130_RTC_CONTROL = common dso_local global i64 0, align 8
@FM3130_RTC_CONTROL_BIT_AEN = common dso_local global i32 0, align 4
@FM3130_RTC_CONTROL_BIT_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @fm3130_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm3130_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.fm3130*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.fm3130* @dev_get_drvdata(%struct.device* %9)
  store %struct.fm3130* %10, %struct.fm3130** %6, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  store %struct.rtc_time* %12, %struct.rtc_time** %8, align 8
  %13 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %14 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %190

20:                                               ; preds = %2
  %21 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %22 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %27 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = call i32 @i2c_transfer(i32 %25, i32* %29, i32 2)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %190

39:                                               ; preds = %20
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %42 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %48 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @FM3130_ALARM_MINUTES, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %54 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @FM3130_ALARM_HOURS, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %60 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @FM3130_ALARM_DATE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %66 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @FM3130_ALARM_MONTHS, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %52, i32 %58, i32 %64, i32 %70)
  %72 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %73 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 127
  %79 = call i8* @bcd2bin(i32 %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %83 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @FM3130_ALARM_MINUTES, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 127
  %89 = call i8* @bcd2bin(i32 %88)
  %90 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %93 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @FM3130_ALARM_HOURS, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 63
  %99 = call i8* @bcd2bin(i32 %98)
  %100 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %101 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %103 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @FM3130_ALARM_DATE, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 63
  %109 = call i8* @bcd2bin(i32 %108)
  %110 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %113 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @FM3130_ALARM_MONTHS, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 31
  %119 = call i8* @bcd2bin(i32 %118)
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %122 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %124 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %39
  %128 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %129 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 1
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %127, %39
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 6
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %138 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %137, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %141 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %140, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %144 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %147 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %150 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %153 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %133, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %136, i8* %139, i8* %142, i8* %145, i64 %148, i32 %151, i32 %154)
  %156 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %157 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %160 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %158, i64 %159)
  %161 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %162 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %167 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @FM3130_RTC_CONTROL_BIT_AEN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %132
  %176 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %177 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* @FM3130_RTC_CONTROL_BIT_CAL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %175
  %187 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %188 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %175, %132
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %33, %17
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local %struct.fm3130* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_transfer(i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
