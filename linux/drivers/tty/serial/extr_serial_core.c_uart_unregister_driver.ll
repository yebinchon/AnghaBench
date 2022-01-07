; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { i32, %struct.tty_driver*, %struct.TYPE_2__* }
%struct.tty_driver = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_unregister_driver(%struct.uart_driver* %0) #0 {
  %2 = alloca %struct.uart_driver*, align 8
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_driver* %0, %struct.uart_driver** %2, align 8
  %5 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %6 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %5, i32 0, i32 1
  %7 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  store %struct.tty_driver* %7, %struct.tty_driver** %3, align 8
  %8 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %9 = call i32 @tty_unregister_driver(%struct.tty_driver* %8)
  %10 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %11 = call i32 @put_tty_driver(%struct.tty_driver* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %15 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %20 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @tty_port_destroy(i32* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %32 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @kfree(%struct.TYPE_2__* %33)
  %35 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %36 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %35, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %38 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %37, i32 0, i32 1
  store %struct.tty_driver* null, %struct.tty_driver** %38, align 8
  ret void
}

declare dso_local i32 @tty_unregister_driver(%struct.tty_driver*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
