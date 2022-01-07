; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fm3130.c_fm3130_rtc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fm3130.c_fm3130_rtc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fm3130 = type { i32*, i32 }

@FM3130_RTC_CONTROL = common dso_local global i64 0, align 8
@FM3130_RTC_CONTROL_BIT_WRITE = common dso_local global i32 0, align 4
@FM3130_RTC_CONTROL_BIT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @fm3130_rtc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm3130_rtc_mode(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm3130*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.fm3130* @dev_get_drvdata(%struct.device* %6)
  store %struct.fm3130* %7, %struct.fm3130** %5, align 8
  %8 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %9 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %12 = call i32 @i2c_smbus_read_byte_data(i32 %10, i64 %11)
  %13 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %14 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %12, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %49 [
    i32 130, label %19
    i32 128, label %31
    i32 129, label %40
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @FM3130_RTC_CONTROL_BIT_WRITE, align 4
  %21 = load i32, i32* @FM3130_RTC_CONTROL_BIT_READ, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %25 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %23
  store i32 %30, i32* %28, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load i32, i32* @FM3130_RTC_CONTROL_BIT_WRITE, align 4
  %33 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %34 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %32
  store i32 %39, i32* %37, align 4
  br label %53

40:                                               ; preds = %2
  %41 = load i32, i32* @FM3130_RTC_CONTROL_BIT_READ, align 4
  %42 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %43 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %41
  store i32 %48, i32* %46, align 4
  br label %53

49:                                               ; preds = %2
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %40, %31, %19
  %54 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %55 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %58 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %59 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(i32 %56, i64 %57, i32 %63)
  ret void
}

declare dso_local %struct.fm3130* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
