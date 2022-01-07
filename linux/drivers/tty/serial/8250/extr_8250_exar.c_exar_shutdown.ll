; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_exar.c_exar_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_exar.c_exar_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.uart_8250_port = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_TEMT = common dso_local global i8 0, align 1
@UART_LSR_THRE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @exar_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exar_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %8)
  store %struct.uart_8250_port* %9, %struct.uart_8250_port** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.circ_buf* %13, %struct.circ_buf** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %42, %1
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %16 = load i32, i32* @UART_LSR, align 4
  %17 = call zeroext i8 @serial_in(%struct.uart_8250_port* %15, i32 %16)
  store i8 %17, i8* %3, align 1
  %18 = load i8, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @UART_LSR_TEMT, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @UART_LSR_THRE, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = and i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %29

28:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %31

31:                                               ; preds = %29
  %32 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %33 = call i32 @uart_circ_empty(%struct.circ_buf* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = icmp slt i32 %39, 1000
  br label %42

42:                                               ; preds = %38, %35, %31
  %43 = phi i1 [ false, %35 ], [ false, %31 ], [ %41, %38 ]
  br i1 %43, label %14, label %44

44:                                               ; preds = %42
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = call i32 @serial8250_do_shutdown(%struct.uart_port* %45)
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @serial8250_do_shutdown(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
