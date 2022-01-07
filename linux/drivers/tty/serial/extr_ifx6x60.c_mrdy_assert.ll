; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_mrdy_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_mrdy_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFX_SPI_STATE_TIMER_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IFX_SPI_TIMEOUT_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IFX_SPI_POWER_DATA_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifx_spi_device*)* @mrdy_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrdy_assert(%struct.ifx_spi_device* %0) #0 {
  %2 = alloca %struct.ifx_spi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ifx_spi_device* %0, %struct.ifx_spi_device** %2, align 8
  %4 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %5 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpio_get_value(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @IFX_SPI_STATE_TIMER_PENDING, align 4
  %13 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %14 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %13, i32 0, i32 1
  %15 = call i32 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %19 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %18, i32 0, i32 0
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* @IFX_SPI_TIMEOUT_SEC, align 4
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = call i32 @mod_timer(i32* %19, i64 %25)
  br label %27

27:                                               ; preds = %17, %11
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %30 = load i32, i32* @IFX_SPI_POWER_DATA_PENDING, align 4
  %31 = call i32 @ifx_spi_power_state_set(%struct.ifx_spi_device* %29, i32 %30)
  %32 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %33 = call i32 @mrdy_set_high(%struct.ifx_spi_device* %32)
  ret void
}

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ifx_spi_power_state_set(%struct.ifx_spi_device*, i32) #1

declare dso_local i32 @mrdy_set_high(%struct.ifx_spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
