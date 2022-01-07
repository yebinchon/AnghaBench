; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@USBHSF_PKT_DMA_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dma_complete run_error %d : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usbhsf_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsf_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.usbhs_pipe*
  store %struct.usbhs_pipe* %8, %struct.usbhs_pipe** %3, align 8
  %9 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %10 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %9)
  store %struct.usbhs_priv* %10, %struct.usbhs_priv** %4, align 8
  %11 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %12 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %11)
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %14 = load i32, i32* @USBHSF_PKT_DMA_DONE, align 4
  %15 = call i32 @usbhsf_pkt_handler(%struct.usbhs_pipe* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %21 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhsf_pkt_handler(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
