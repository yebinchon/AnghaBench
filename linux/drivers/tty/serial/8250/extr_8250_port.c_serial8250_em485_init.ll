; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_em485_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_em485_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.uart_8250_port*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@serial8250_em485_handle_stop_tx = common dso_local global i32 0, align 4
@serial8250_em485_handle_start_tx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_em485_init(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %5 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.TYPE_3__* @kmalloc(i32 4, i32 %10)
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 0
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %9
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %27 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %28 = call i32 @hrtimer_init(%struct.TYPE_4__* %25, i32 %26, i32 %27)
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %34 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %35 = call i32 @hrtimer_init(%struct.TYPE_4__* %32, i32 %33, i32 %34)
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* @serial8250_em485_handle_stop_tx, i32** %40, align 8
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* @serial8250_em485_handle_start_tx, i32** %45, align 8
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store %struct.uart_8250_port* %46, %struct.uart_8250_port** %50, align 8
  %51 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %52 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %56 = call i32 @serial8250_em485_rts_after_send(%struct.uart_8250_port* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %21, %18, %8
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @serial8250_em485_rts_after_send(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
