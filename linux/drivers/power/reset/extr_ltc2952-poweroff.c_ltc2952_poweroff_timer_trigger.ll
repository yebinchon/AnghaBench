; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_timer_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_timer_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }
%struct.ltc2952_poweroff = type { i32 }

@timer_trigger = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"executing shutdown\0A\00", align 1
@HRTIMER_NORESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*)* @ltc2952_poweroff_timer_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2952_poweroff_timer_trigger(%struct.hrtimer* %0) #0 {
  %2 = alloca %struct.hrtimer*, align 8
  %3 = alloca %struct.ltc2952_poweroff*, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %2, align 8
  %4 = load %struct.hrtimer*, %struct.hrtimer** %2, align 8
  %5 = load i32, i32* @timer_trigger, align 4
  %6 = call %struct.ltc2952_poweroff* @to_ltc2952(%struct.hrtimer* %4, i32 %5)
  store %struct.ltc2952_poweroff* %6, %struct.ltc2952_poweroff** %3, align 8
  %7 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %3, align 8
  %8 = call i32 @ltc2952_poweroff_start_wde(%struct.ltc2952_poweroff* %7)
  %9 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %3, align 8
  %10 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @orderly_poweroff(i32 1)
  %14 = load i32, i32* @HRTIMER_NORESTART, align 4
  ret i32 %14
}

declare dso_local %struct.ltc2952_poweroff* @to_ltc2952(%struct.hrtimer*, i32) #1

declare dso_local i32 @ltc2952_poweroff_start_wde(%struct.ltc2952_poweroff*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @orderly_poweroff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
