; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_prepare_pop_with_usb_dmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_prepare_pop_with_usb_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { {}* }
%struct.usbhs_pkt = type { i64, i64, %struct.TYPE_2__*, i64, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i32 }

@pio_dma_border = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@USBHS_USB_DMAC_XFER_SIZE = common dso_local global i32 0, align 4
@usbhs_fifo_pio_pop_handler = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dma_prepare_pop_with_usb_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dma_prepare_pop_with_usb_dmac(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usbhs_pipe*, align 8
  %7 = alloca %struct.usbhs_priv*, align 8
  %8 = alloca %struct.usbhs_fifo*, align 8
  %9 = alloca i32, align 4
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %11 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %10, i32 0, i32 4
  %12 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %11, align 8
  store %struct.usbhs_pipe* %12, %struct.usbhs_pipe** %6, align 8
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %14 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %13)
  store %struct.usbhs_priv* %14, %struct.usbhs_priv** %7, align 8
  %15 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %16 = call i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

19:                                               ; preds = %2
  %20 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %21 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %24 = load i32, i32* @pio_dma_border, align 4
  %25 = call i64 @usbhs_get_dparam(%struct.usbhs_priv* %23, i32 %24)
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %29 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %30 = call i64 @usbhs_pipe_type_is(%struct.usbhs_pipe* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %19
  br label %83

33:                                               ; preds = %27
  %34 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %35 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %36 = call %struct.usbhs_fifo* @usbhsf_get_dma_fifo(%struct.usbhs_priv* %34, %struct.usbhs_pkt* %35)
  store %struct.usbhs_fifo* %36, %struct.usbhs_fifo** %8, align 8
  %37 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %38 = icmp ne %struct.usbhs_fifo* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %83

40:                                               ; preds = %33
  %41 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %42 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @USBHS_USB_DMAC_XFER_SIZE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = and i64 %43, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %83

50:                                               ; preds = %40
  %51 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %52 = call i64 @usbhs_pipe_is_running(%struct.usbhs_pipe* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %97

55:                                               ; preds = %50
  %56 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %57 = call i32 @usbhs_pipe_config_change_bfre(%struct.usbhs_pipe* %56, i32 1)
  %58 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %59 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %60 = call i32 @usbhsf_fifo_select(%struct.usbhs_pipe* %58, %struct.usbhs_fifo* %59, i32 0)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %83

64:                                               ; preds = %55
  %65 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %66 = call i64 @usbhsf_dma_map(%struct.usbhs_pkt* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %79

69:                                               ; preds = %64
  %70 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %71 = call i32 @usbhsf_rx_irq_ctrl(%struct.usbhs_pipe* %70, i32 0)
  %72 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %73 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %76 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %78 = call i32 @usbhsf_dma_xfer_preparing(%struct.usbhs_pkt* %77)
  store i32 0, i32* %3, align 4
  br label %97

79:                                               ; preds = %68
  %80 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %81 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %82 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %80, %struct.usbhs_fifo* %81)
  br label %83

83:                                               ; preds = %79, %63, %49, %39, %32
  %84 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %85 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %84, i32 0, i32 2
  store %struct.TYPE_2__* @usbhs_fifo_pio_pop_handler, %struct.TYPE_2__** %85, align 8
  %86 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %87 = call i32 @usbhs_pipe_config_change_bfre(%struct.usbhs_pipe* %86, i32 0)
  %88 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %89 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = bitcast {}** %91 to i32 (%struct.usbhs_pkt*, i32*)**
  %93 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %92, align 8
  %94 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 %93(%struct.usbhs_pkt* %94, i32* %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %83, %69, %54, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local i64 @usbhs_pipe_type_is(%struct.usbhs_pipe*, i32) #1

declare dso_local %struct.usbhs_fifo* @usbhsf_get_dma_fifo(%struct.usbhs_priv*, %struct.usbhs_pkt*) #1

declare dso_local i64 @usbhs_pipe_is_running(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_config_change_bfre(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_fifo_select(%struct.usbhs_pipe*, %struct.usbhs_fifo*, i32) #1

declare dso_local i64 @usbhsf_dma_map(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_rx_irq_ctrl(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_dma_xfer_preparing(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
