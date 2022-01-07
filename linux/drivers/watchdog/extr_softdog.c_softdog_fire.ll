; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_softdog.c_softdog_fire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_softdog.c_softdog_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@soft_noboot = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Triggered - Reboot ignored\0A\00", align 1
@soft_panic = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Initiating panic\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Software Watchdog Timer expired\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Initiating system reboot\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Reboot didn't ?????\0A\00", align 1
@HRTIMER_NORESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*)* @softdog_fire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softdog_fire(%struct.hrtimer* %0) #0 {
  %2 = alloca %struct.hrtimer*, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %2, align 8
  %3 = load i32, i32* @THIS_MODULE, align 4
  %4 = call i32 @module_put(i32 %3)
  %5 = load i64, i64* @soft_noboot, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %20

9:                                                ; preds = %1
  %10 = load i64, i64* @soft_panic, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %19

15:                                               ; preds = %9
  %16 = call i32 @pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 (...) @emergency_restart()
  %18 = call i32 @pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %12
  br label %20

20:                                               ; preds = %19, %7
  %21 = load i32, i32* @HRTIMER_NORESTART, align 4
  ret i32 %21
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @emergency_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
