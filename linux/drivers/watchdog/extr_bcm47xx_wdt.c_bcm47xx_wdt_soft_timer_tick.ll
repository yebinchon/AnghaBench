; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm47xx_wdt.c_bcm47xx_wdt_soft_timer_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm47xx_wdt.c_bcm47xx_wdt_soft_timer_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm47xx_wdt = type { i32, i32 (%struct.bcm47xx_wdt*, i32)*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@soft_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Watchdog will fire soon!!!\0A\00", align 1
@wdt = common dso_local global %struct.bcm47xx_wdt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bcm47xx_wdt_soft_timer_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm47xx_wdt_soft_timer_tick(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bcm47xx_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %3, align 8
  %6 = ptrtoint %struct.bcm47xx_wdt* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @soft_timer, align 4
  %9 = call %struct.bcm47xx_wdt* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.bcm47xx_wdt* %9, %struct.bcm47xx_wdt** %3, align 8
  %10 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %3, align 8
  %11 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 1000
  %15 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %3, align 8
  %16 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @min(i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %3, align 8
  %20 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %19, i32 0, i32 2
  %21 = call i32 @atomic_dec_and_test(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %1
  %24 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %3, align 8
  %25 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %24, i32 0, i32 1
  %26 = load i32 (%struct.bcm47xx_wdt*, i32)*, i32 (%struct.bcm47xx_wdt*, i32)** %25, align 8
  %27 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %26(%struct.bcm47xx_wdt* %27, i32 %28)
  %30 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %3, align 8
  %31 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %30, i32 0, i32 0
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @HZ, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @mod_timer(i32* %31, i64 %34)
  br label %38

36:                                               ; preds = %1
  %37 = call i32 @pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %23
  ret void
}

declare dso_local %struct.bcm47xx_wdt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_crit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
