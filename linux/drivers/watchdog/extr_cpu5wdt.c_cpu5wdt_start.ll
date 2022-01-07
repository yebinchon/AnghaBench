; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpu5wdt.c_cpu5wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpu5wdt.c_cpu5wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@cpu5wdt_lock = common dso_local global i32 0, align 4
@cpu5wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@port = common dso_local global i64 0, align 8
@CPU5WDT_TIME_A_REG = common dso_local global i64 0, align 8
@CPU5WDT_TIME_B_REG = common dso_local global i64 0, align 8
@CPU5WDT_MODE_REG = common dso_local global i64 0, align 8
@CPU5WDT_RESET_REG = common dso_local global i64 0, align 8
@CPU5WDT_ENABLE_REG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@CPU5WDT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu5wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu5wdt_start() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @cpu5wdt_lock, i64 %2)
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 0), align 4
  %7 = load i64, i64* @port, align 8
  %8 = load i64, i64* @CPU5WDT_TIME_A_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @outb(i32 0, i64 %9)
  %11 = load i64, i64* @port, align 8
  %12 = load i64, i64* @CPU5WDT_TIME_B_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i32 0, i64 %13)
  %15 = load i64, i64* @port, align 8
  %16 = load i64, i64* @CPU5WDT_MODE_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i32 1, i64 %17)
  %19 = load i64, i64* @port, align 8
  %20 = load i64, i64* @CPU5WDT_RESET_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 0, i64 %21)
  %23 = load i64, i64* @port, align 8
  %24 = load i64, i64* @CPU5WDT_ENABLE_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 0, i64 %25)
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* @CPU5WDT_INTERVAL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 2), i64 %29)
  br label %31

31:                                               ; preds = %6, %0
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 1), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 1), align 4
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @cpu5wdt_lock, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
