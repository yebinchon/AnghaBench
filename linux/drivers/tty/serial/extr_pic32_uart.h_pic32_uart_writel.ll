; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.h_pic32_uart_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.h_pic32_uart_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_sport = type { i32 }
%struct.uart_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic32_sport*, i64, i64)* @pic32_uart_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_uart_writel(%struct.pic32_sport* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pic32_sport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uart_port*, align 8
  store %struct.pic32_sport* %0, %struct.pic32_sport** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.pic32_sport*, %struct.pic32_sport** %4, align 8
  %9 = call %struct.uart_port* @pic32_get_port(%struct.pic32_sport* %8)
  store %struct.uart_port* %9, %struct.uart_port** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @__raw_writel(i64 %10, i64 %15)
  ret void
}

declare dso_local %struct.uart_port* @pic32_get_port(%struct.pic32_sport*) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
