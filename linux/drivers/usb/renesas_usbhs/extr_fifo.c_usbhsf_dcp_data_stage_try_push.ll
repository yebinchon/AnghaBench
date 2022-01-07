; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dcp_data_stage_try_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dcp_data_stage_try_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { {}* }
%struct.usbhs_pkt = type { %struct.TYPE_2__*, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }

@usbhs_fifo_pio_push_handler = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dcp_data_stage_try_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dcp_data_stage_try_push(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca %struct.usbhs_pkt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbhs_pipe*, align 8
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %7 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %6, i32 0, i32 1
  %8 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %7, align 8
  store %struct.usbhs_pipe* %8, %struct.usbhs_pipe** %5, align 8
  %9 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %10 = call i32 @usbhs_pipe_sequence_data1(%struct.usbhs_pipe* %9)
  %11 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %12 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %11, i32 0, i32 0
  store %struct.TYPE_2__* @usbhs_fifo_pio_push_handler, %struct.TYPE_2__** %12, align 8
  %13 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %14 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.usbhs_pkt*, i32*)**
  %18 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %17, align 8
  %19 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 %18(%struct.usbhs_pkt* %19, i32* %20)
  ret i32 %21
}

declare dso_local i32 @usbhs_pipe_sequence_data1(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
