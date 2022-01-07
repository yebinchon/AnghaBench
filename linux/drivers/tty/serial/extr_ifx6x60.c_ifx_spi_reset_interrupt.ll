; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_reset_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_reset_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MR_START = common dso_local global i32 0, align 4
@MR_INPROGRESS = common dso_local global i32 0, align 4
@MR_COMPLETE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ifx_spi_reset_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_reset_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifx_spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ifx_spi_device*
  store %struct.ifx_spi_device* %9, %struct.ifx_spi_device** %5, align 8
  %10 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %5, align 8
  %11 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpio_get_value(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @MR_START, align 4
  %16 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %5, align 8
  %17 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load i32, i32* @MR_INPROGRESS, align 4
  %23 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %5, align 8
  %24 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %23, i32 0, i32 1
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %5, align 8
  %30 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %29, i32 0, i32 2
  %31 = call i32 @tty_port_tty_hangup(i32* %30, i32 0)
  br label %32

32:                                               ; preds = %28, %21
  br label %49

33:                                               ; preds = %2
  %34 = load i32, i32* @MR_INPROGRESS, align 4
  %35 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %5, align 8
  %36 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* @MR_COMPLETE, align 4
  %42 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %5, align 8
  %43 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %42, i32 0, i32 1
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  %45 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %5, align 8
  %46 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %45, i32 0, i32 0
  %47 = call i32 @wake_up(i32* %46)
  br label %48

48:                                               ; preds = %40, %33
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tty_port_tty_hangup(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
