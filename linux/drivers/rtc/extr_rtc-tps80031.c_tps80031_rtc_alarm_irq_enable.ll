; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_tps80031_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_tps80031_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@TPS80031_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@ENABLE_ALARM_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Update on RTC_INT failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @tps80031_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %14 = load i32, i32* @TPS80031_RTC_INTERRUPTS_REG, align 4
  %15 = load i32, i32* @ENABLE_ALARM_INT, align 4
  %16 = call i32 @tps80031_set_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %22 = load i32, i32* @TPS80031_RTC_INTERRUPTS_REG, align 4
  %23 = load i32, i32* @ENABLE_ALARM_INT, align 4
  %24 = call i32 @tps80031_clr_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %17, %9
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @tps80031_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @tps80031_clr_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
