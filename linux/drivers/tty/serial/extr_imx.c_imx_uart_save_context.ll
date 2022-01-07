; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, %struct.TYPE_2__, i8** }
%struct.TYPE_2__ = type { i32 }

@UCR1 = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR3 = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@UFCR = common dso_local global i32 0, align 4
@UESC = common dso_local global i32 0, align 4
@UTIM = common dso_local global i32 0, align 4
@UBIR = common dso_local global i32 0, align 4
@UBMR = common dso_local global i32 0, align 4
@IMX21_UTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_save_context(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca i64, align 8
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %4 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %5 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %10 = load i32, i32* @UCR1, align 4
  %11 = call i8* @imx_uart_readl(%struct.imx_port* %9, i32 %10)
  %12 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %13 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %12, i32 0, i32 2
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %17 = load i32, i32* @UCR2, align 4
  %18 = call i8* @imx_uart_readl(%struct.imx_port* %16, i32 %17)
  %19 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %20 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* %18, i8** %22, align 8
  %23 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %24 = load i32, i32* @UCR3, align 4
  %25 = call i8* @imx_uart_readl(%struct.imx_port* %23, i32 %24)
  %26 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %27 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %26, i32 0, i32 2
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  store i8* %25, i8** %29, align 8
  %30 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %31 = load i32, i32* @UCR4, align 4
  %32 = call i8* @imx_uart_readl(%struct.imx_port* %30, i32 %31)
  %33 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %34 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  store i8* %32, i8** %36, align 8
  %37 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %38 = load i32, i32* @UFCR, align 4
  %39 = call i8* @imx_uart_readl(%struct.imx_port* %37, i32 %38)
  %40 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %41 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 4
  store i8* %39, i8** %43, align 8
  %44 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %45 = load i32, i32* @UESC, align 4
  %46 = call i8* @imx_uart_readl(%struct.imx_port* %44, i32 %45)
  %47 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %48 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 5
  store i8* %46, i8** %50, align 8
  %51 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %52 = load i32, i32* @UTIM, align 4
  %53 = call i8* @imx_uart_readl(%struct.imx_port* %51, i32 %52)
  %54 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %55 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 6
  store i8* %53, i8** %57, align 8
  %58 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %59 = load i32, i32* @UBIR, align 4
  %60 = call i8* @imx_uart_readl(%struct.imx_port* %58, i32 %59)
  %61 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %62 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %61, i32 0, i32 2
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 7
  store i8* %60, i8** %64, align 8
  %65 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %66 = load i32, i32* @UBMR, align 4
  %67 = call i8* @imx_uart_readl(%struct.imx_port* %65, i32 %66)
  %68 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %69 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 8
  store i8* %67, i8** %71, align 8
  %72 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %73 = load i32, i32* @IMX21_UTS, align 4
  %74 = call i8* @imx_uart_readl(%struct.imx_port* %72, i32 %73)
  %75 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %76 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 9
  store i8* %74, i8** %78, align 8
  %79 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %80 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %82 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
