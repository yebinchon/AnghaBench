; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_send_terminator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_send_terminator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_fifo = type { i32 }
%struct.usbhs_priv = type { i32 }

@BVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_pipe*, %struct.usbhs_fifo*)* @usbhsf_send_terminator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsf_send_terminator(%struct.usbhs_pipe* %0, %struct.usbhs_fifo* %1) #0 {
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_fifo*, align 8
  %5 = alloca %struct.usbhs_priv*, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  store %struct.usbhs_fifo* %1, %struct.usbhs_fifo** %4, align 8
  %6 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %7 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %6)
  store %struct.usbhs_priv* %7, %struct.usbhs_priv** %5, align 8
  %8 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %9 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %10 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BVAL, align 4
  %13 = load i32, i32* @BVAL, align 4
  %14 = call i32 @usbhs_bset(%struct.usbhs_priv* %8, i32 %11, i32 %12, i32 %13)
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_bset(%struct.usbhs_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
