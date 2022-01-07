; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_dma_push_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_dma_push_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { i32, %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Rx overrun: dropping %u bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eg20t_port*, i32)* @dma_push_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_push_rx(%struct.eg20t_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eg20t_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.tty_port*, align 8
  store %struct.eg20t_port* %0, %struct.eg20t_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.eg20t_port*, %struct.eg20t_port** %4, align 8
  %10 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %9, i32 0, i32 1
  store %struct.uart_port* %10, %struct.uart_port** %7, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.tty_port* %14, %struct.tty_port** %8, align 8
  %15 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @tty_buffer_request_room(%struct.tty_port* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %47

33:                                               ; preds = %29
  %34 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %35 = load %struct.eg20t_port*, %struct.eg20t_port** %4, align 8
  %36 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %35, i32 0, i32 0
  %37 = call i32 @sg_virt(i32* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @tty_insert_flip_string(%struct.tty_port* %34, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %40
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %33, %32
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @tty_buffer_request_room(%struct.tty_port*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @sg_virt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
