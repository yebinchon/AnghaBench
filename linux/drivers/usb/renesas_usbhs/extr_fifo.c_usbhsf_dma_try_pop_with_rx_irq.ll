; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_try_pop_with_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_try_pop_with_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { {}* }
%struct.usbhs_pkt = type { i32, %struct.TYPE_2__*, i32, i64, i64, i64, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i32 }

@pio_dma_border = common dso_local global i32 0, align 4
@xfer_work = common dso_local global i32 0, align 4
@usbhs_fifo_pio_pop_handler = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dma_try_pop_with_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dma_try_pop_with_rx_irq(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usbhs_pipe*, align 8
  %7 = alloca %struct.usbhs_priv*, align 8
  %8 = alloca %struct.usbhs_fifo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %12 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %11, i32 0, i32 6
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %12, align 8
  store %struct.usbhs_pipe* %13, %struct.usbhs_pipe** %6, align 8
  %14 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %15 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %14)
  store %struct.usbhs_priv* %15, %struct.usbhs_priv** %7, align 8
  %16 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %17 = call i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

20:                                               ; preds = %2
  %21 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %22 = call i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %103

25:                                               ; preds = %20
  %26 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %27 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %28 = call %struct.usbhs_fifo* @usbhsf_get_dma_fifo(%struct.usbhs_priv* %26, %struct.usbhs_pkt* %27)
  store %struct.usbhs_fifo* %28, %struct.usbhs_fifo** %8, align 8
  %29 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %30 = icmp ne %struct.usbhs_fifo* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %103

32:                                               ; preds = %25
  %33 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %34 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %37 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = and i64 %39, 7
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %103

43:                                               ; preds = %32
  %44 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %45 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %46 = call i32 @usbhsf_fifo_select(%struct.usbhs_pipe* %44, %struct.usbhs_fifo* %45, i32 0)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %103

50:                                               ; preds = %43
  %51 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %52 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %53 = call i32 @usbhsf_fifo_rcv_len(%struct.usbhs_priv* %51, %struct.usbhs_fifo* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %55 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %58 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @min(i64 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 7
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %99

67:                                               ; preds = %50
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %70 = load i32, i32* @pio_dma_border, align 4
  %71 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %69, i32 %70)
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %99

74:                                               ; preds = %67
  %75 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %76 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %77 = call i32 @usbhsf_fifo_barrier(%struct.usbhs_priv* %75, %struct.usbhs_fifo* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %99

81:                                               ; preds = %74
  %82 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %83 = call i64 @usbhsf_dma_map(%struct.usbhs_pkt* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %99

86:                                               ; preds = %81
  %87 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %88 = call i32 @usbhsf_rx_irq_ctrl(%struct.usbhs_pipe* %87, i32 0)
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %91 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %93 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %92, i32 0, i32 2
  %94 = load i32, i32* @xfer_work, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %97 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %96, i32 0, i32 2
  %98 = call i32 @schedule_work(i32* %97)
  store i32 0, i32* %3, align 4
  br label %115

99:                                               ; preds = %85, %80, %73, %66
  %100 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %101 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %102 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %100, %struct.usbhs_fifo* %101)
  br label %103

103:                                              ; preds = %99, %49, %42, %31, %24
  %104 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %105 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %104, i32 0, i32 1
  store %struct.TYPE_2__* @usbhs_fifo_pio_pop_handler, %struct.TYPE_2__** %105, align 8
  %106 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %107 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = bitcast {}** %109 to i32 (%struct.usbhs_pkt*, i32*)**
  %111 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %110, align 8
  %112 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 %111(%struct.usbhs_pkt* %112, i32* %113)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %103, %86, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_fifo* @usbhsf_get_dma_fifo(%struct.usbhs_priv*, %struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_fifo_select(%struct.usbhs_pipe*, %struct.usbhs_fifo*, i32) #1

declare dso_local i32 @usbhsf_fifo_rcv_len(%struct.usbhs_priv*, %struct.usbhs_fifo*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhsf_fifo_barrier(%struct.usbhs_priv*, %struct.usbhs_fifo*) #1

declare dso_local i64 @usbhsf_dma_map(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_rx_irq_ctrl(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
