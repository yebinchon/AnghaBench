; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_rdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_rdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_omap_port = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_omap_port*, i32)* @serial_omap_rdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_rdi(%struct.uart_omap_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.uart_omap_port* %0, %struct.uart_omap_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %5, align 1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @UART_LSR_DR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %14 = load i32, i32* @UART_RX, align 4
  %15 = call zeroext i8 @serial_in(%struct.uart_omap_port* %13, i32 %14)
  store i8 %15, i8* %5, align 1
  %16 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %23, i32 0, i32 0
  %25 = load i8, i8* %5, align 1
  %26 = call i64 @uart_handle_sysrq_char(%struct.TYPE_5__* %24, i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  br label %37

29:                                               ; preds = %12
  %30 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @UART_LSR_OE, align 4
  %34 = load i8, i8* %5, align 1
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @uart_insert_char(%struct.TYPE_5__* %31, i32 %32, i32 %33, i8 zeroext %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %28, %11
  ret void
}

declare dso_local zeroext i8 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_5__*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_5__*, i32, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
