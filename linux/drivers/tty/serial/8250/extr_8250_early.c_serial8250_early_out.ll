; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_early.c_serial8250_early_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_early.c_serial8250_early_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 (%struct.uart_port*, i32, i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @serial8250_early_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_early_out(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %65 [
    i32 132, label %17
    i32 131, label %25
    i32 130, label %33
    i32 129, label %41
    i32 128, label %49
    i32 133, label %57
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @writeb(i32 %18, i32 %23)
  br label %65

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @writew(i32 %26, i32 %31)
  br label %65

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @writel(i32 %34, i32 %39)
  br label %65

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @iowrite32be(i32 %42, i32 %47)
  br label %65

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @outb(i32 %50, i32 %55)
  br label %65

57:                                               ; preds = %3
  %58 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 2
  %60 = load i32 (%struct.uart_port*, i32, i32)*, i32 (%struct.uart_port*, i32, i32)** %59, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 %60(%struct.uart_port* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %3, %57, %49, %41, %33, %25, %17
  ret void
}

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
