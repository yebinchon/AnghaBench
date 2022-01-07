; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sch311x_wdt.c_sch311x_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sch311x_wdt.c_sch311x_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@sch311x_wdt_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GP60 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sch311x_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sch311x_wdt_stop() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 0))
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 1), align 8
  %4 = load i64, i64* @GP60, align 8
  %5 = add nsw i64 %3, %4
  %6 = call zeroext i8 @inb(i64 %5)
  store i8 %6, i8* %1, align 1
  %7 = load i8, i8* %1, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, -14
  %10 = or i32 %9, 1
  %11 = trunc i32 %10 to i8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 1), align 8
  %13 = load i64, i64* @GP60, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i8 zeroext %11, i64 %14)
  %16 = call i32 @sch311x_wdt_set_timeout(i32 0)
  %17 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 0))
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @sch311x_wdt_set_timeout(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
