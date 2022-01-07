; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rdc321x_wdt.c_rdc321x_wdt_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rdc321x_wdt.c_rdc321x_wdt_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.timer_list = type { i32 }

@rdc321x_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ticks = common dso_local global i64 0, align 8
@RDC_WDT_EN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RDC_WDT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rdc321x_wdt_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdc321x_wdt_trigger(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 6), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @ticks, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* @ticks, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 3), i64 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 5), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 4), align 4
  %15 = call i32 @pci_read_config_dword(i32 %13, i32 %14, i32* %4)
  %16 = load i32, i32* @RDC_WDT_EN, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 5), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 4), align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pci_write_config_dword(i32 %19, i32 %20, i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 3), i64 %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 2), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %10
  %28 = load i64, i64* @ticks, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @RDC_WDT_INTERVAL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 1), i64 %33)
  br label %37

35:                                               ; preds = %27, %10
  %36 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 0))
  br label %37

37:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
