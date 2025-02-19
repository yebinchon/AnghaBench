; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orion_watchdog = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orion_watchdog*)* @orion_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_enabled(%struct.orion_watchdog* %0) #0 {
  %2 = alloca %struct.orion_watchdog*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.orion_watchdog* %0, %struct.orion_watchdog** %2, align 8
  %5 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %6 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @readl(i64 %7)
  %9 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %10 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %8, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %16 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TIMER_CTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %22 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %20, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %1
  %33 = phi i1 [ false, %1 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
