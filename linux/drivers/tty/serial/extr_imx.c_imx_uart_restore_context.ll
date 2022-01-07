; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UFCR = common dso_local global i32 0, align 4
@UESC = common dso_local global i32 0, align 4
@UTIM = common dso_local global i32 0, align 4
@UBIR = common dso_local global i32 0, align 4
@UBMR = common dso_local global i32 0, align 4
@IMX21_UTS = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR2_SRST = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR3 = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_restore_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_restore_context(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca i64, align 8
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %4 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %5 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %10 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %15 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  br label %109

19:                                               ; preds = %1
  %20 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %21 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %22 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UFCR, align 4
  %27 = call i32 @imx_uart_writel(%struct.imx_port* %20, i32 %25, i32 %26)
  %28 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %29 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %30 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UESC, align 4
  %35 = call i32 @imx_uart_writel(%struct.imx_port* %28, i32 %33, i32 %34)
  %36 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %37 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %38 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UTIM, align 4
  %43 = call i32 @imx_uart_writel(%struct.imx_port* %36, i32 %41, i32 %42)
  %44 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %45 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %46 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UBIR, align 4
  %51 = call i32 @imx_uart_writel(%struct.imx_port* %44, i32 %49, i32 %50)
  %52 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %53 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %54 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UBMR, align 4
  %59 = call i32 @imx_uart_writel(%struct.imx_port* %52, i32 %57, i32 %58)
  %60 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %61 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %62 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IMX21_UTS, align 4
  %67 = call i32 @imx_uart_writel(%struct.imx_port* %60, i32 %65, i32 %66)
  %68 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %69 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %70 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @UCR1, align 4
  %75 = call i32 @imx_uart_writel(%struct.imx_port* %68, i32 %73, i32 %74)
  %76 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %77 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %78 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UCR2_SRST, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @UCR2, align 4
  %85 = call i32 @imx_uart_writel(%struct.imx_port* %76, i32 %83, i32 %84)
  %86 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %87 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %88 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UCR3, align 4
  %93 = call i32 @imx_uart_writel(%struct.imx_port* %86, i32 %91, i32 %92)
  %94 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %95 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %96 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @UCR4, align 4
  %101 = call i32 @imx_uart_writel(%struct.imx_port* %94, i32 %99, i32 %100)
  %102 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %103 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %105 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %3, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  br label %109

109:                                              ; preds = %19, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
