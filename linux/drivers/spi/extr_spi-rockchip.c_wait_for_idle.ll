; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_wait_for_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_wait_for_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_spi = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_SR = common dso_local global i64 0, align 8
@SR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"spi controller is in busy state!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_spi*)* @wait_for_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_idle(%struct.rockchip_spi* %0) #0 {
  %2 = alloca %struct.rockchip_spi*, align 8
  %3 = alloca i64, align 8
  store %struct.rockchip_spi* %0, %struct.rockchip_spi** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = call i64 @msecs_to_jiffies(i32 5)
  %6 = add i64 %4, %5
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %9 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ROCKCHIP_SPI_SR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl_relaxed(i64 %12)
  %14 = load i32, i32* @SR_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %7
  br label %30

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @time_after(i64 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %7, label %25

25:                                               ; preds = %19
  %26 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %27 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %17
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
