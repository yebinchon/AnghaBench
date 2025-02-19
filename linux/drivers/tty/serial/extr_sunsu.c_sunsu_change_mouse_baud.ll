; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_sunsu_change_mouse_baud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_sunsu_change_mouse_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CBAUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsu_port*)* @sunsu_change_mouse_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsu_change_mouse_baud(%struct.uart_sunsu_port* %0) #0 {
  %2 = alloca %struct.uart_sunsu_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %2, align 8
  %6 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @CBAUD, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @suncore_mouse_baud_cflag_next(i32 %15, i32* %5)
  %17 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 16, %25
  %27 = sdiv i32 %24, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %28, i32 0, i32 1
  %30 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sunsu_change_speed(%struct.TYPE_2__* %29, i32 %32, i32 0, i32 %33)
  ret void
}

declare dso_local i32 @suncore_mouse_baud_cflag_next(i32, i32*) #1

declare dso_local i32 @sunsu_change_speed(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
