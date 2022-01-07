; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@spi_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"*** SPI Timeout ***\00", align 1
@IFX_SPI_STATE_TIMER_PENDING = common dso_local global i32 0, align 4
@ifx_dev = common dso_local global %struct.ifx_spi_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ifx_spi_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifx_spi_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ifx_spi_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %5 = ptrtoint %struct.ifx_spi_device* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @spi_timer, align 4
  %8 = call %struct.ifx_spi_device* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.ifx_spi_device* %8, %struct.ifx_spi_device** %3, align 8
  %9 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dev_warn(i32* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %14, i32 0, i32 1
  %16 = call i32 @tty_port_tty_hangup(i32* %15, i32 0)
  %17 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %18 = call i32 @mrdy_set_low(%struct.ifx_spi_device* %17)
  %19 = load i32, i32* @IFX_SPI_STATE_TIMER_PENDING, align 4
  %20 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  ret void
}

declare dso_local %struct.ifx_spi_device* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @tty_port_tty_hangup(i32*, i32) #1

declare dso_local i32 @mrdy_set_low(%struct.ifx_spi_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
