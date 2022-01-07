; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_change_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }

@AML_UART_BAUD_XTAL = common dso_local global i32 0, align 4
@AML_UART_BAUD_USE = common dso_local global i32 0, align 4
@AML_UART_REG5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i64)* @meson_uart_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_uart_change_speed(%struct.uart_port* %0, i64 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call i32 @meson_uart_tx_empty(%struct.uart_port* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 (...) @cpu_relax()
  br label %6

13:                                               ; preds = %6
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 24000000
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %4, align 8
  %25 = udiv i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @AML_UART_BAUD_XTAL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %13
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 10
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %4, align 8
  %38 = mul i64 %37, 4
  %39 = udiv i64 %36, %38
  %40 = add i64 %39, 5
  %41 = udiv i64 %40, 10
  %42 = sub i64 %41, 1
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %31, %18
  %45 = load i32, i32* @AML_UART_BAUD_USE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AML_UART_REG5, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  ret void
}

declare dso_local i32 @meson_uart_tx_empty(%struct.uart_port*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
