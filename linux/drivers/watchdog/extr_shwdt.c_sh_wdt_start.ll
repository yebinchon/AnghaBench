; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_shwdt.c_sh_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_shwdt.c_sh_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sh_wdt = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@next_heartbeat = common dso_local global i64 0, align 8
@clock_division_ratio = common dso_local global i32 0, align 4
@WTCSR_WT = common dso_local global i32 0, align 4
@WTCSR_TME = common dso_local global i32 0, align 4
@WTCSR_RSTS = common dso_local global i32 0, align 4
@RSTCSR_RSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @sh_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.sh_wdt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %7 = call %struct.sh_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.sh_wdt* %7, %struct.sh_wdt** %3, align 8
  %8 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %9 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pm_runtime_get_sync(i32 %10)
  %12 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %13 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_enable(i32 %14)
  %16 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %17 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* @heartbeat, align 4
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  store i64 %25, i64* @next_heartbeat, align 8
  %26 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %27 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %26, i32 0, i32 1
  %28 = load i32, i32* @clock_division_ratio, align 4
  %29 = call i32 @next_ping_period(i32 %28)
  %30 = call i32 @mod_timer(i32* %27, i32 %29)
  %31 = call i32 (...) @sh_wdt_read_csr()
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @WTCSR_WT, align 4
  %33 = load i32, i32* @clock_division_ratio, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @sh_wdt_write_csr(i32 %37)
  %39 = call i32 @sh_wdt_write_cnt(i32 0)
  %40 = call i32 (...) @sh_wdt_read_csr()
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @WTCSR_TME, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @WTCSR_RSTS, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @sh_wdt_write_csr(i32 %48)
  %50 = load %struct.sh_wdt*, %struct.sh_wdt** %3, align 8
  %51 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %50, i32 0, i32 0
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret i32 0
}

declare dso_local %struct.sh_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @next_ping_period(i32) #1

declare dso_local i32 @sh_wdt_read_csr(...) #1

declare dso_local i32 @sh_wdt_write_csr(i32) #1

declare dso_local i32 @sh_wdt_write_cnt(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
