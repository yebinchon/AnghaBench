; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_insert_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_insert_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@TTY_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_insert_char(%struct.uart_port* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tty_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.tty_port* %15, %struct.tty_port** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %16, %19
  %21 = load i32, i32* %8, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load %struct.tty_port*, %struct.tty_port** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @tty_insert_flip_char(%struct.tty_port* %26, i32 %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %38
  %49 = load %struct.tty_port*, %struct.tty_port** %11, align 8
  %50 = load i32, i32* @TTY_OVERRUN, align 4
  %51 = call i64 @tty_insert_flip_char(%struct.tty_port* %49, i32 0, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %48
  br label %60

60:                                               ; preds = %59, %38
  ret void
}

declare dso_local i64 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
