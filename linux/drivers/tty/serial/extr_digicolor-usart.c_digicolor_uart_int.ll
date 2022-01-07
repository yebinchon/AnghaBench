; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@UA_INT_STATUS = common dso_local global i64 0, align 8
@UA_INT_RX = common dso_local global i32 0, align 4
@UA_INT_TX = common dso_local global i32 0, align 4
@UA_INTFLAG_CLEAR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @digicolor_uart_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digicolor_uart_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.uart_port*
  store %struct.uart_port* %8, %struct.uart_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UA_INT_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readb_relaxed(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @UA_INT_RX, align 4
  %16 = load i32, i32* @UA_INT_TX, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UA_INTFLAG_CLEAR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writeb_relaxed(i32 %17, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @UA_INT_RX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %30 = call i32 @digicolor_uart_rx(%struct.uart_port* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @UA_INT_TX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %38 = call i32 @digicolor_uart_tx(%struct.uart_port* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @readb_relaxed(i64) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @digicolor_uart_rx(%struct.uart_port*) #1

declare dso_local i32 @digicolor_uart_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
