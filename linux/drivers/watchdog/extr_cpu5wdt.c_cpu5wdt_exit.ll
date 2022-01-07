; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpu5wdt.c_cpu5wdt_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpu5wdt.c_cpu5wdt_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@cpu5wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cpu5wdt_misc = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@CPU5WDT_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu5wdt_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu5wdt_exit() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 2), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 2), align 8
  %4 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 1))
  %5 = call i32 @del_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 0))
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 @misc_deregister(i32* @cpu5wdt_misc)
  %8 = load i32, i32* @port, align 4
  %9 = load i32, i32* @CPU5WDT_EXTENT, align 4
  %10 = call i32 @release_region(i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
