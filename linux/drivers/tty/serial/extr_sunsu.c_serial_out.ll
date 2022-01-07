; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_serial_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@UART_MCR = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsu_port*, i32, i32)* @serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_out(%struct.uart_sunsu_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_sunsu_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @UART_MCR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* @UART_MCR_OUT2, align 4
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %10, %3
  %15 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %22 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %54 [
    i32 129, label %25
    i32 128, label %45
  ]

25:                                               ; preds = %14
  %26 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %27 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @outb(i32 %32, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %40 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @outb(i32 %38, i32 %43)
  br label %63

45:                                               ; preds = %14
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @writeb(i32 %46, i32 %52)
  br label %63

54:                                               ; preds = %14
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @outb(i32 %55, i32 %61)
  br label %63

63:                                               ; preds = %54, %45, %25
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
