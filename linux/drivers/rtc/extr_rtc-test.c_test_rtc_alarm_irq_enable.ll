; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-test.c_test_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-test.c_test_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_test_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @test_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtc_test_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.rtc_test_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.rtc_test_data* %7, %struct.rtc_test_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rtc_test_data*, %struct.rtc_test_data** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.rtc_test_data*, %struct.rtc_test_data** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %14, i32 0, i32 1
  %16 = call i32 @add_timer(i32* %15)
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.rtc_test_data*, %struct.rtc_test_data** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %18, i32 0, i32 1
  %20 = call i32 @del_timer(i32* %19)
  br label %21

21:                                               ; preds = %17, %13
  ret i32 0
}

declare dso_local %struct.rtc_test_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @add_timer(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
