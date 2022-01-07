; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_reg_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_reg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.men_z135_port = type { i32, %struct.uart_port }
%struct.uart_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.men_z135_port*, i64, i64)* @men_z135_reg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z135_reg_set(%struct.men_z135_port* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.men_z135_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.men_z135_port* %0, %struct.men_z135_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.men_z135_port*, %struct.men_z135_port** %4, align 8
  %11 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %10, i32 0, i32 1
  store %struct.uart_port* %11, %struct.uart_port** %7, align 8
  %12 = load %struct.men_z135_port*, %struct.men_z135_port** %4, align 8
  %13 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @ioread32(i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32(i64 %25, i64 %30)
  %32 = load %struct.men_z135_port*, %struct.men_z135_port** %4, align 8
  %33 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
