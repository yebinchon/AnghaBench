; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_handle_srdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_handle_srdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i32, i32, i32 }

@IFX_SPI_STATE_TIMER_PENDING = common dso_local global i32 0, align 4
@IFX_SPI_POWER_SRDY = common dso_local global i32 0, align 4
@IFX_SPI_STATE_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@IFX_SPI_STATE_IO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifx_spi_device*)* @ifx_spi_handle_srdy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifx_spi_handle_srdy(%struct.ifx_spi_device* %0) #0 {
  %2 = alloca %struct.ifx_spi_device*, align 8
  store %struct.ifx_spi_device* %0, %struct.ifx_spi_device** %2, align 8
  %3 = load i32, i32* @IFX_SPI_STATE_TIMER_PENDING, align 4
  %4 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %5 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %10 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %9, i32 0, i32 2
  %11 = call i32 @del_timer(i32* %10)
  %12 = load i32, i32* @IFX_SPI_STATE_TIMER_PENDING, align 4
  %13 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %14 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %13, i32 0, i32 0
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %18 = load i32, i32* @IFX_SPI_POWER_SRDY, align 4
  %19 = call i32 @ifx_spi_power_state_set(%struct.ifx_spi_device* %17, i32 %18)
  %20 = load i32, i32* @IFX_SPI_STATE_IO_IN_PROGRESS, align 4
  %21 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %22 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %27 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %26, i32 0, i32 1
  %28 = call i32 @tasklet_schedule(i32* %27)
  br label %34

29:                                               ; preds = %16
  %30 = load i32, i32* @IFX_SPI_STATE_IO_READY, align 4
  %31 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %32 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %31, i32 0, i32 0
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %29, %25
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ifx_spi_power_state_set(%struct.ifx_spi_device*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
