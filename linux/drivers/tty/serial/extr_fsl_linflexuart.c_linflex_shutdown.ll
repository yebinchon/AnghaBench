; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i64 }

@LINIER = common dso_local global i64 0, align 8
@LINFLEXD_LINIER_DRIE = common dso_local global i64 0, align 8
@LINFLEXD_LINIER_DTIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @linflex_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linflex_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 2
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LINIER, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl(i64 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @LINFLEXD_LINIER_DRIE, align 8
  %16 = load i64, i64* @LINFLEXD_LINIER_DTIE, align 8
  %17 = or i64 %15, %16
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LINIER, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i64 %21, i64 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 2
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = call i32 @devm_free_irq(i32 %34, i32 %37, %struct.uart_port* %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
