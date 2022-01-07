; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_send_xchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { i32 }
%struct.uart_port = type { i8, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*, i8)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @uart_send_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_send_xchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  store %struct.uart_state* %10, %struct.uart_state** %5, align 8
  %11 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %12 = call %struct.uart_port* @uart_port_ref(%struct.uart_state* %11)
  store %struct.uart_port* %12, %struct.uart_port** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %14 = icmp ne %struct.uart_port* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.uart_port*, i8)*, i32 (%struct.uart_port*, i8)** %20, align 8
  %22 = icmp ne i32 (%struct.uart_port*, i8)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.uart_port*, i8)*, i32 (%struct.uart_port*, i8)** %27, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %30 = load i8, i8* %4, align 1
  %31 = call i32 %28(%struct.uart_port* %29, i8 signext %30)
  br label %55

32:                                               ; preds = %16
  %33 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 1
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i8, i8* %4, align 1
  %38 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 8
  %40 = load i8, i8* %4, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %46, align 8
  %48 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %49 = call i32 %47(%struct.uart_port* %48)
  br label %50

50:                                               ; preds = %42, %32
  %51 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 1
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %50, %23
  %56 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %57 = call i32 @uart_port_deref(%struct.uart_port* %56)
  br label %58

58:                                               ; preds = %55, %15
  ret void
}

declare dso_local %struct.uart_port* @uart_port_ref(%struct.uart_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uart_port_deref(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
