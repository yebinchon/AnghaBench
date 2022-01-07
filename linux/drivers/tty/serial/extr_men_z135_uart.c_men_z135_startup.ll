; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.men_z135_port = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MEN_Z135_CONF_REG = common dso_local global i64 0, align 8
@MEN_Z135_ALL_IRQS = common dso_local global i32 0, align 4
@MEN_Z135_IER_TXCIEN = common dso_local global i32 0, align 4
@txlvl = common dso_local global i32 0, align 4
@rxlvl = common dso_local global i32 0, align 4
@rx_timeout = common dso_local global i32 0, align 4
@MEN_Z135_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @men_z135_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z135_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.men_z135_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.men_z135_port* @to_men_z135(%struct.uart_port* %7)
  store %struct.men_z135_port* %8, %struct.men_z135_port** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.men_z135_port*, %struct.men_z135_port** %4, align 8
  %10 = call i32 @men_z135_request_irq(%struct.men_z135_port* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MEN_Z135_CONF_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @ioread32(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @MEN_Z135_ALL_IRQS, align 4
  %24 = load i32, i32* @MEN_Z135_IER_TXCIEN, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -16711681
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @txlvl, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @rxlvl, align 4
  %36 = shl i32 %35, 20
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MEN_Z135_CONF_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite32(i32 %39, i64 %44)
  %46 = load i32, i32* @rx_timeout, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %16
  %49 = load i32, i32* @rx_timeout, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MEN_Z135_TIMEOUT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @iowrite32(i32 %49, i64 %54)
  br label %56

56:                                               ; preds = %48, %16
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.men_z135_port* @to_men_z135(%struct.uart_port*) #1

declare dso_local i32 @men_z135_request_irq(%struct.men_z135_port*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
