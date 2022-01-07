; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_of_xilinx_wdt.c_xilinx_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_of_xilinx_wdt.c_xilinx_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.xwdt_device = type { i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@XWT_TWCSR0_OFFSET = common dso_local global i64 0, align 8
@XWT_CSR0_WRS_MASK = common dso_local global i32 0, align 4
@XWT_CSR0_WDS_MASK = common dso_local global i32 0, align 4
@XWT_CSR0_EWDT1_MASK = common dso_local global i32 0, align 4
@XWT_CSRX_EWDT2_MASK = common dso_local global i32 0, align 4
@XWT_TWCSR1_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @xilinx_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xwdt_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.xwdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.xwdt_device* %8, %struct.xwdt_device** %6, align 8
  %9 = load %struct.xwdt_device*, %struct.xwdt_device** %6, align 8
  %10 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_enable(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %17 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.xwdt_device*, %struct.xwdt_device** %6, align 8
  %23 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.xwdt_device*, %struct.xwdt_device** %6, align 8
  %26 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XWT_TWCSR0_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @ioread32(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @XWT_CSR0_WRS_MASK, align 4
  %32 = load i32, i32* @XWT_CSR0_WDS_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @XWT_CSR0_EWDT1_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.xwdt_device*, %struct.xwdt_device** %6, align 8
  %40 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XWT_TWCSR0_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite32(i32 %38, i64 %43)
  %45 = load i32, i32* @XWT_CSRX_EWDT2_MASK, align 4
  %46 = load %struct.xwdt_device*, %struct.xwdt_device** %6, align 8
  %47 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XWT_TWCSR1_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite32(i32 %45, i64 %50)
  %52 = load %struct.xwdt_device*, %struct.xwdt_device** %6, align 8
  %53 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %21, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.xwdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
