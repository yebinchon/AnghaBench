; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_enable_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_enable_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_rtc = type { i32 }

@DA9052_ALARM_Y_REG = common dso_local global i32 0, align 4
@DA9052_ALARM_Y_ALARM_ON = common dso_local global i32 0, align 4
@DA9052_ALARM_Y_TICK_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to enable ALM: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Write error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_rtc*, i32)* @da9052_rtc_enable_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_rtc_enable_alarm(%struct.da9052_rtc* %0, i32 %1) #0 {
  %3 = alloca %struct.da9052_rtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.da9052_rtc* %0, %struct.da9052_rtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.da9052_rtc*, %struct.da9052_rtc** %3, align 8
  %10 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DA9052_ALARM_Y_REG, align 4
  %13 = load i32, i32* @DA9052_ALARM_Y_ALARM_ON, align 4
  %14 = load i32, i32* @DA9052_ALARM_Y_TICK_ON, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DA9052_ALARM_Y_ALARM_ON, align 4
  %17 = call i32 @da9052_reg_update(i32 %11, i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = load %struct.da9052_rtc*, %struct.da9052_rtc** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rtc_err(%struct.da9052_rtc* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %8
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.da9052_rtc*, %struct.da9052_rtc** %3, align 8
  %27 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DA9052_ALARM_Y_REG, align 4
  %30 = load i32, i32* @DA9052_ALARM_Y_ALARM_ON, align 4
  %31 = load i32, i32* @DA9052_ALARM_Y_TICK_ON, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @da9052_reg_update(i32 %28, i32 %29, i32 %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.da9052_rtc*, %struct.da9052_rtc** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @rtc_err(%struct.da9052_rtc* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %25
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @da9052_reg_update(i32, i32, i32, i32) #1

declare dso_local i32 @rtc_err(%struct.da9052_rtc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
