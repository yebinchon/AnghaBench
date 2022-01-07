; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_prepare_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_prepare_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { {}* }
%struct.usbhs_pkt = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i32 }

@pio_dma_border = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@has_usb_dmac = common dso_local global i32 0, align 4
@USBHS_USB_DMAC_XFER_SIZE = common dso_local global i32 0, align 4
@xfer_work = common dso_local global i32 0, align 4
@usbhs_fifo_pio_push_handler = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dma_prepare_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dma_prepare_push(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usbhs_pipe*, align 8
  %7 = alloca %struct.usbhs_priv*, align 8
  %8 = alloca %struct.usbhs_fifo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %13 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %12, i32 0, i32 6
  %14 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %13, align 8
  store %struct.usbhs_pipe* %14, %struct.usbhs_pipe** %6, align 8
  %15 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %16 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %15)
  store %struct.usbhs_priv* %16, %struct.usbhs_priv** %7, align 8
  %17 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %18 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %21 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %25 = call i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %31 = load i32, i32* @pio_dma_border, align 4
  %32 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %30, i32 %31)
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %36 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %37 = call i64 @usbhs_pipe_type_is(%struct.usbhs_pipe* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %28
  br label %124

40:                                               ; preds = %34
  %41 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %42 = load i32, i32* @has_usb_dmac, align 4
  %43 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 7
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %124

50:                                               ; preds = %45, %40
  %51 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %52 = load i32, i32* @has_usb_dmac, align 4
  %53 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @USBHS_USB_DMAC_XFER_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 7, %58 ]
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %11, align 8
  %62 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %63 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %66 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %11, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %124

74:                                               ; preds = %59
  %75 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %76 = call i64 @usbhs_pipe_is_running(%struct.usbhs_pipe* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %136

79:                                               ; preds = %74
  %80 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %81 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %82 = call %struct.usbhs_fifo* @usbhsf_get_dma_fifo(%struct.usbhs_priv* %80, %struct.usbhs_pkt* %81)
  store %struct.usbhs_fifo* %82, %struct.usbhs_fifo** %8, align 8
  %83 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %84 = icmp ne %struct.usbhs_fifo* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %124

86:                                               ; preds = %79
  %87 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %88 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %89 = call i32 @usbhsf_fifo_select(%struct.usbhs_pipe* %87, %struct.usbhs_fifo* %88, i32 0)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %124

93:                                               ; preds = %86
  %94 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %95 = call i64 @usbhsf_dma_map(%struct.usbhs_pkt* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %120

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %101 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %103 = call i32 @usbhsf_tx_irq_ctrl(%struct.usbhs_pipe* %102, i32 0)
  %104 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %105 = load i32, i32* @has_usb_dmac, align 4
  %106 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %110 = call i32 @usbhsf_dma_xfer_preparing(%struct.usbhs_pkt* %109)
  br label %119

111:                                              ; preds = %98
  %112 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %113 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %112, i32 0, i32 5
  %114 = load i32, i32* @xfer_work, align 4
  %115 = call i32 @INIT_WORK(i32* %113, i32 %114)
  %116 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %117 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %116, i32 0, i32 5
  %118 = call i32 @schedule_work(i32* %117)
  br label %119

119:                                              ; preds = %111, %108
  store i32 0, i32* %3, align 4
  br label %136

120:                                              ; preds = %97
  %121 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %122 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %123 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %121, %struct.usbhs_fifo* %122)
  br label %124

124:                                              ; preds = %120, %92, %85, %73, %49, %39
  %125 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %126 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %125, i32 0, i32 4
  store %struct.TYPE_2__* @usbhs_fifo_pio_push_handler, %struct.TYPE_2__** %126, align 8
  %127 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %128 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %127, i32 0, i32 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = bitcast {}** %130 to i32 (%struct.usbhs_pkt*, i32*)**
  %132 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %131, align 8
  %133 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 %132(%struct.usbhs_pkt* %133, i32* %134)
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %124, %119, %78, %27
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local i64 @usbhs_pipe_type_is(%struct.usbhs_pipe*, i32) #1

declare dso_local i64 @usbhs_pipe_is_running(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_fifo* @usbhsf_get_dma_fifo(%struct.usbhs_priv*, %struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_fifo_select(%struct.usbhs_pipe*, %struct.usbhs_fifo*, i32) #1

declare dso_local i64 @usbhsf_dma_map(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_tx_irq_ctrl(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_dma_xfer_preparing(%struct.usbhs_pkt*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
