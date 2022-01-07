; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sch311x_wdt.c_sch311x_wdt_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sch311x_wdt.c_sch311x_wdt_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@sch311x_wdt_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WDT_CTRL = common dso_local global i64 0, align 8
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sch311x_wdt_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sch311x_wdt_get_status(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 0))
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 1), align 8
  %7 = load i64, i64* @WDT_CTRL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call zeroext i8 @inb(i64 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @WDIOF_CARDRESET, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 0))
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
