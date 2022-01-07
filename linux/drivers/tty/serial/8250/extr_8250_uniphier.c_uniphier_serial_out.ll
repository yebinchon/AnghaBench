; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_uniphier.c_uniphier_serial_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_uniphier.c_uniphier_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.uniphier8250_priv* }
%struct.uniphier8250_priv = type { i32 }

@UNIPHIER_UART_CHAR_FCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UNIPHIER_UART_LCR_MCR = common dso_local global i32 0, align 4
@UNIPHIER_UART_REGSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @uniphier_serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_serial_out(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uniphier8250_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 131, label %14
    i32 130, label %16
    i32 129, label %21
  ]

13:                                               ; preds = %3
  store i32 8, i32* %7, align 4
  br label %14

14:                                               ; preds = %3, %13
  %15 = load i32, i32* @UNIPHIER_UART_CHAR_FCR, align 4
  store i32 %15, i32* %5, align 4
  br label %27

16:                                               ; preds = %3
  store i32 8, i32* %7, align 4
  %17 = load i32, i32* @UART_LCR_DLAB, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %3, %16
  %22 = load i32, i32* @UNIPHIER_UART_LCR_MCR, align 4
  store i32 %22, i32* %5, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @UNIPHIER_UART_REGSHIFT, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %21, %14
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel(i32 %31, i64 %37)
  br label %76

39:                                               ; preds = %27
  %40 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 1
  %42 = load %struct.uniphier8250_priv*, %struct.uniphier8250_priv** %41, align 8
  store %struct.uniphier8250_priv* %42, %struct.uniphier8250_priv** %9, align 8
  %43 = load %struct.uniphier8250_priv*, %struct.uniphier8250_priv** %9, align 8
  %44 = getelementptr inbounds %struct.uniphier8250_priv, %struct.uniphier8250_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 @readl(i64 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 255, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = call i32 @writel(i32 %64, i64 %70)
  %72 = load %struct.uniphier8250_priv*, %struct.uniphier8250_priv** %9, align 8
  %73 = getelementptr inbounds %struct.uniphier8250_priv, %struct.uniphier8250_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
