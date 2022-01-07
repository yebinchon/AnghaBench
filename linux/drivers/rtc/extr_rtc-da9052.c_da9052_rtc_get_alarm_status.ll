; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_get_alarm_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_get_alarm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_rtc = type { i32 }

@DA9052_ALARM_Y_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read ALM: %d\0A\00", align 1
@DA9052_ALARM_Y_ALARM_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_rtc*)* @da9052_rtc_get_alarm_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_rtc_get_alarm_status(%struct.da9052_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9052_rtc*, align 8
  %4 = alloca i32, align 4
  store %struct.da9052_rtc* %0, %struct.da9052_rtc** %3, align 8
  %5 = load %struct.da9052_rtc*, %struct.da9052_rtc** %3, align 8
  %6 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DA9052_ALARM_Y_REG, align 4
  %9 = call i32 @da9052_reg_read(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.da9052_rtc*, %struct.da9052_rtc** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @rtc_err(%struct.da9052_rtc* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DA9052_ALARM_Y_ALARM_ON, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @da9052_reg_read(i32, i32) #1

declare dso_local i32 @rtc_err(%struct.da9052_rtc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
