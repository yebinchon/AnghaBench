; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.pm860x_rtc_info = type { i32, i32 }
%struct.rtc_time = type { i32 }

@PM8607_RTC1 = common dso_local global i32 0, align 4
@ALARM_EN = common dso_local global i32 0, align 4
@REG0_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%x-%x-%x-%x-%x-%x-%x-%x\0A\00", align 1
@PM8607_RTC_COUNTER1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"get base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", align 1
@PM8607_RTC_EXPIRE1 = common dso_local global i32 0, align 4
@ALARM = common dso_local global i32 0, align 4
@ALARM_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pm860x_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.pm860x_rtc_info*, align 8
  %6 = alloca %struct.rtc_time, align 4
  %7 = alloca %struct.rtc_time, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [8 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.pm860x_rtc_info* @dev_get_drvdata(%struct.device* %13)
  store %struct.pm860x_rtc_info* %14, %struct.pm860x_rtc_info** %5, align 8
  %15 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %16 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PM8607_RTC1, align 4
  %19 = load i32, i32* @ALARM_EN, align 4
  %20 = call i32 @pm860x_set_bits(i32 %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %22 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REG0_ADDR, align 4
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %26 = call i32 @pm860x_page_bulk_read(i32 %23, i32 %24, i32 8, i8* %25)
  %27 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %28 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 4
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 5
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 7
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %35, i64 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53)
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = shl i64 %57, 24
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 16
  %63 = sext i32 %62 to i64
  %64 = or i64 %58, %63
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 5
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = sext i32 %68 to i64
  %70 = or i64 %64, %69
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 7
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i64
  %74 = or i64 %70, %73
  store i64 %74, i64* %9, align 8
  %75 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %76 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PM8607_RTC_COUNTER1, align 4
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %80 = call i32 @pm860x_bulk_read(i32 %77, i32 %78, i32 4, i8* %79)
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  %84 = shl i64 %83, 24
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 16
  %89 = sext i32 %88 to i64
  %90 = or i64 %84, %89
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 %93, 8
  %95 = sext i32 %94 to i64
  %96 = or i64 %90, %95
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = or i64 %96, %99
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %101, %102
  store i64 %103, i64* %8, align 8
  %104 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %105 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %107, i64 %108, i64 %109)
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @rtc_time_to_tm(i64 %111, %struct.rtc_time* %6)
  %113 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %114 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %113, i32 0, i32 1
  %115 = call i32 @rtc_next_alarm_time(%struct.rtc_time* %7, %struct.rtc_time* %6, i32* %114)
  %116 = call i32 @rtc_tm_to_time(%struct.rtc_time* %7, i64* %8)
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub i64 %117, %118
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %10, align 8
  %121 = and i64 %120, 255
  %122 = trunc i64 %121 to i8
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  store i8 %122, i8* %123, align 1
  %124 = load i64, i64* %10, align 8
  %125 = lshr i64 %124, 8
  %126 = and i64 %125, 255
  %127 = trunc i64 %126 to i8
  %128 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 1
  store i8 %127, i8* %128, align 1
  %129 = load i64, i64* %10, align 8
  %130 = lshr i64 %129, 16
  %131 = and i64 %130, 255
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 2
  store i8 %132, i8* %133, align 1
  %134 = load i64, i64* %10, align 8
  %135 = lshr i64 %134, 24
  %136 = and i64 %135, 255
  %137 = trunc i64 %136 to i8
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 3
  store i8 %137, i8* %138, align 1
  %139 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %140 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PM8607_RTC_EXPIRE1, align 4
  %143 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %144 = call i32 @pm860x_bulk_write(i32 %141, i32 %142, i32 4, i8* %143)
  %145 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %146 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %2
  %150 = load i32, i32* @ALARM, align 4
  %151 = load i32, i32* @ALARM_WAKEUP, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @ALARM_EN, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %12, align 4
  %155 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %156 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @PM8607_RTC1, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @pm860x_set_bits(i32 %157, i32 %158, i32 %159, i32 %160)
  br label %177

162:                                              ; preds = %2
  %163 = load i32, i32* @ALARM, align 4
  %164 = load i32, i32* @ALARM_WAKEUP, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @ALARM_EN, align 4
  %167 = or i32 %165, %166
  store i32 %167, i32* %12, align 4
  %168 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %169 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PM8607_RTC1, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @ALARM, align 4
  %174 = load i32, i32* @ALARM_WAKEUP, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @pm860x_set_bits(i32 %170, i32 %171, i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %162, %149
  ret i32 0
}

declare dso_local %struct.pm860x_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm860x_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm860x_page_bulk_read(i32, i32, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @pm860x_bulk_read(i32, i32, i32, i8*) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @rtc_next_alarm_time(%struct.rtc_time*, %struct.rtc_time*, i32*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @pm860x_bulk_write(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
