; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.h_pic32_uart_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.h_pic32_uart_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_sport = type { i32 }
%struct.uart_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pic32_sport*, i64)* @pic32_uart_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pic32_uart_readl(%struct.pic32_sport* %0, i64 %1) #0 {
  %3 = alloca %struct.pic32_sport*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uart_port*, align 8
  store %struct.pic32_sport* %0, %struct.pic32_sport** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %7 = call %struct.uart_port* @pic32_get_port(%struct.pic32_sport* %6)
  store %struct.uart_port* %7, %struct.uart_port** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @__raw_readl(i64 %12)
  ret i64 %13
}

declare dso_local %struct.uart_port* @pic32_get_port(%struct.pic32_sport*) #1

declare dso_local i64 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
