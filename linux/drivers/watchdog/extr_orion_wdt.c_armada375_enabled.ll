; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada375_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada375_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orion_watchdog = type { %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orion_watchdog*)* @armada375_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada375_enabled(%struct.orion_watchdog* %0) #0 {
  %2 = alloca %struct.orion_watchdog*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.orion_watchdog* %0, %struct.orion_watchdog** %2, align 8
  %6 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %7 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @readl(i64 %8)
  %10 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %11 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %9, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %17 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @readl(i64 %18)
  %20 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %21 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %19, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %27 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TIMER_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  %32 = load %struct.orion_watchdog*, %struct.orion_watchdog** %2, align 8
  %33 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %31, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %43, %40, %1
  %47 = phi i1 [ false, %40 ], [ false, %1 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
