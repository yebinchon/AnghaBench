; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250.h_ns16550a_goto_highspeed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250.h_ns16550a_goto_highspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @ns16550a_goto_highspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns16550a_goto_highspeed(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %6 = call zeroext i8 @serial_in(%struct.uart_8250_port* %5, i32 4)
  store i8 %6, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 48
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, -177
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %4, align 1
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, 16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %4, align 1
  %21 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %22 = load i8, i8* %4, align 1
  %23 = call i32 @serial_out(%struct.uart_8250_port* %21, i32 4, i8 zeroext %22)
  br label %24

24:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
