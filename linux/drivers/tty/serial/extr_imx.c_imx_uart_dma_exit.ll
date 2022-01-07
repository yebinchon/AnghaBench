; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32*, i32*, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_dma_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_dma_exit(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %3 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %4 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %9 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @dmaengine_terminate_sync(i32* %10)
  %12 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %13 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dma_release_channel(i32* %14)
  %16 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %17 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %21 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %23 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %27 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %7, %1
  %29 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %30 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %35 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @dmaengine_terminate_sync(i32* %36)
  %38 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %39 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dma_release_channel(i32* %40)
  %42 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %43 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @dmaengine_terminate_sync(i32*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
