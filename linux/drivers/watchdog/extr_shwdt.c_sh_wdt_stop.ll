; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_shwdt.c_sh_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_shwdt.c_sh_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sh_wdt = type { i32, i32, i32, i32 }

@WTCSR_TME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @sh_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.sh_wdt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %7 = call %struct.sh_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.sh_wdt* %7, %struct.sh_wdt** %3, align 8
  %8 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %9 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %8, i32 0, i32 2
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %13 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %12, i32 0, i32 3
  %14 = call i32 @del_timer(i32* %13)
  %15 = call i32 (...) @sh_wdt_read_csr()
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @WTCSR_TME, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sh_wdt_write_csr(i32 %20)
  %22 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %23 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %22, i32 0, i32 2
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %27 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable(i32 %28)
  %30 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %31 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_put_sync(i32 %32)
  ret i32 0
}

declare dso_local %struct.sh_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @sh_wdt_read_csr(...) #1

declare dso_local i32 @sh_wdt_write_csr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
