; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91sam9_wdt.c_at91_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91sam9_wdt.c_at91_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91wdt = type { i64, i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"I will reset your machine !\0A\00", align 1
@wdt = common dso_local global %struct.at91wdt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @at91_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_ping(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.at91wdt*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.at91wdt*, %struct.at91wdt** %3, align 8
  %5 = ptrtoint %struct.at91wdt* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.at91wdt* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.at91wdt* %8, %struct.at91wdt** %3, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load %struct.at91wdt*, %struct.at91wdt** %3, align 8
  %11 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @time_before(i64 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.at91wdt*, %struct.at91wdt** %3, align 8
  %17 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %16, i32 0, i32 2
  %18 = call i32 @watchdog_active(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.at91wdt*, %struct.at91wdt** %3, align 8
  %22 = call i32 @at91_wdt_reset(%struct.at91wdt* %21)
  %23 = load %struct.at91wdt*, %struct.at91wdt** %3, align 8
  %24 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %23, i32 0, i32 1
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.at91wdt*, %struct.at91wdt** %3, align 8
  %27 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i32 @mod_timer(i32* %24, i64 %29)
  br label %33

31:                                               ; preds = %15
  %32 = call i32 @pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %20
  ret void
}

declare dso_local %struct.at91wdt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @watchdog_active(i32*) #1

declare dso_local i32 @at91_wdt_reset(%struct.at91wdt*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_crit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
