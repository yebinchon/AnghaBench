; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_dma_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_dma_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32, i32, i32, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart_dma_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_dma_shutdown(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %3 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %4 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %9 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %8, i32 0, i32 5
  %10 = call i32 @del_timer_sync(i32* %9)
  %11 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %12 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %11, i32 0, i32 4
  %13 = call i32 @lpuart_dma_rx_free(i32* %12)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %16 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %21 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %24 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event_interruptible(i32 %22, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %33 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %35 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dmaengine_terminate_all(i32 %36)
  br label %38

38:                                               ; preds = %31, %19
  br label %39

39:                                               ; preds = %38, %14
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lpuart_dma_rx_free(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
