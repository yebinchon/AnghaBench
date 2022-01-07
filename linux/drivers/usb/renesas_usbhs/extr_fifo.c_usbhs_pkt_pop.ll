; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_pkt_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_pkt_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_pkt = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i32 }
%struct.dma_chan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usbhs_pkt* @usbhs_pkt_pop(%struct.usbhs_pipe* %0, %struct.usbhs_pkt* %1) #0 {
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca %struct.usbhs_priv*, align 8
  %6 = alloca %struct.usbhs_fifo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dma_chan*, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  store %struct.usbhs_pkt* %1, %struct.usbhs_pkt** %4, align 8
  %9 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %10 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %9)
  store %struct.usbhs_priv* %10, %struct.usbhs_priv** %5, align 8
  %11 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %12 = call %struct.usbhs_fifo* @usbhs_pipe_to_fifo(%struct.usbhs_pipe* %11)
  store %struct.usbhs_fifo* %12, %struct.usbhs_fifo** %6, align 8
  %13 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @usbhs_lock(%struct.usbhs_priv* %13, i64 %14)
  %16 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %17 = call i32 @usbhs_pipe_disable(%struct.usbhs_pipe* %16)
  %18 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %19 = icmp ne %struct.usbhs_pkt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %22 = call %struct.usbhs_pkt* @__usbhsf_pkt_get(%struct.usbhs_pipe* %21)
  store %struct.usbhs_pkt* %22, %struct.usbhs_pkt** %4, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %25 = icmp ne %struct.usbhs_pkt* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  store %struct.dma_chan* null, %struct.dma_chan** %8, align 8
  %27 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %28 = icmp ne %struct.usbhs_fifo* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %31 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %32 = call %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo* %30, %struct.usbhs_pkt* %31)
  store %struct.dma_chan* %32, %struct.dma_chan** %8, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %35 = icmp ne %struct.dma_chan* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %38 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %37)
  %39 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %40 = call i32 @usbhsf_dma_unmap(%struct.usbhs_pkt* %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %43 = call i32 @usbhs_pipe_clear_without_sequence(%struct.usbhs_pipe* %42, i32 0, i32 0)
  %44 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %45 = call i32 @__usbhsf_pkt_del(%struct.usbhs_pkt* %44)
  br label %46

46:                                               ; preds = %41, %23
  %47 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %48 = icmp ne %struct.usbhs_fifo* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %51 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %52 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %50, %struct.usbhs_fifo* %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @usbhs_unlock(%struct.usbhs_priv* %54, i64 %55)
  %57 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  ret %struct.usbhs_pkt* %57
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_fifo* @usbhs_pipe_to_fifo(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @usbhs_pipe_disable(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_pkt* @__usbhsf_pkt_get(%struct.usbhs_pipe*) #1

declare dso_local %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo*, %struct.usbhs_pkt*) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @usbhsf_dma_unmap(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhs_pipe_clear_without_sequence(%struct.usbhs_pipe*, i32, i32) #1

declare dso_local i32 @__usbhsf_pkt_del(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
