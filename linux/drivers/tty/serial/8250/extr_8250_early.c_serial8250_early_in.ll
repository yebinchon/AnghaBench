; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_early.c_serial8250_early_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_early.c_serial8250_early_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, {}*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @serial8250_early_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_early_in(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %59 [
    i32 132, label %16
    i32 131, label %23
    i32 130, label %30
    i32 129, label %37
    i32 128, label %44
    i32 133, label %51
  ]

16:                                               ; preds = %2
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @readb(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %2
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @readw(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %60

30:                                               ; preds = %2
  %31 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @readl(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %2
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @ioread32be(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %60

44:                                               ; preds = %2
  %45 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @inb(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %60

51:                                               ; preds = %2
  %52 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 2
  %54 = bitcast {}** %53 to i32 (%struct.uart_port*, i32)**
  %55 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %54, align 8
  %56 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 %55(%struct.uart_port* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %51, %44, %37, %30, %23, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
