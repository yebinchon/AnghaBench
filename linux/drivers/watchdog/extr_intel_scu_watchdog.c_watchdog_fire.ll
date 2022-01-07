; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_intel_scu_watchdog.c_watchdog_fire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_intel_scu_watchdog.c_watchdog_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@force_boot = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Initiating system reboot\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Reboot didn't ?????\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Immediate Reboot Disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"System will reset when watchdog timer times out!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @watchdog_fire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog_fire() #0 {
  %1 = load i64, i64* @force_boot, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = call i32 @pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @emergency_restart()
  %6 = call i32 @pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %10

7:                                                ; preds = %0
  %8 = call i32 @pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @emergency_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
