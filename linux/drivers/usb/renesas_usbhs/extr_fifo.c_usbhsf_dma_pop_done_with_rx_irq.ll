; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_pop_done_with_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_pop_done_with_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i64, i32, i64, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dma_pop_done_with_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dma_pop_done_with_rx_irq(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca %struct.usbhs_pkt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbhs_pipe*, align 8
  %6 = alloca i32, align 4
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %8 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %7, i32 0, i32 3
  %9 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  store %struct.usbhs_pipe* %9, %struct.usbhs_pipe** %5, align 8
  %10 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %11 = call i32 @usbhs_pipe_get_maxpacket(%struct.usbhs_pipe* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %14 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usbhsf_dma_stop(%struct.usbhs_pipe* %12, i32 %15)
  %17 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %18 = call i32 @usbhsf_dma_unmap(%struct.usbhs_pkt* %17)
  %19 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %20 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %21 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %19, i32 %22)
  %24 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %25 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %29 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %33 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %36 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %41 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %2
  %46 = load i32*, i32** %4, align 8
  store i32 1, i32* %46, align 4
  %47 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %48 = call i32 @usbhs_pipe_running(%struct.usbhs_pipe* %47, i32 0)
  br label %55

49:                                               ; preds = %39
  %50 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %51 = call i32 @usbhs_pipe_running(%struct.usbhs_pipe* %50, i32 0)
  %52 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @usbhsf_prepare_pop(%struct.usbhs_pkt* %52, i32* %53)
  br label %55

55:                                               ; preds = %49, %45
  ret i32 0
}

declare dso_local i32 @usbhs_pipe_get_maxpacket(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsf_dma_stop(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_dma_unmap(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhs_pipe_running(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_prepare_pop(%struct.usbhs_pkt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
