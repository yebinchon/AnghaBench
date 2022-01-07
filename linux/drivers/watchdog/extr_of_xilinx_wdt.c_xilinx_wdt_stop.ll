; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_of_xilinx_wdt.c_xilinx_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_of_xilinx_wdt.c_xilinx_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.xwdt_device = type { i32, i32, i64 }

@XWT_TWCSR0_OFFSET = common dso_local global i64 0, align 8
@XWT_CSR0_EWDT1_MASK = common dso_local global i32 0, align 4
@XWT_TWCSR1_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"Stopped!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @xilinx_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xwdt_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.xwdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.xwdt_device* %6, %struct.xwdt_device** %4, align 8
  %7 = load %struct.xwdt_device*, %struct.xwdt_device** %4, align 8
  %8 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.xwdt_device*, %struct.xwdt_device** %4, align 8
  %11 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XWT_TWCSR0_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @XWT_CSR0_EWDT1_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load %struct.xwdt_device*, %struct.xwdt_device** %4, align 8
  %21 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XWT_TWCSR0_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i32 %19, i64 %24)
  %26 = load %struct.xwdt_device*, %struct.xwdt_device** %4, align 8
  %27 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XWT_TWCSR1_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32(i32 0, i64 %30)
  %32 = load %struct.xwdt_device*, %struct.xwdt_device** %4, align 8
  %33 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.xwdt_device*, %struct.xwdt_device** %4, align 8
  %36 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_disable(i32 %37)
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.xwdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
