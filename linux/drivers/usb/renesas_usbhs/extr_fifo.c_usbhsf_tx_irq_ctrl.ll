; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_tx_irq_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_tx_irq_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_pipe*, i32)* @usbhsf_tx_irq_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsf_tx_irq_ctrl(%struct.usbhs_pipe* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %6 = call i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @usbhsf_irq_empty_ctrl(%struct.usbhs_pipe* %9, i32 %10)
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @usbhsf_irq_ready_ctrl(%struct.usbhs_pipe* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsf_irq_empty_ctrl(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_irq_ready_ctrl(%struct.usbhs_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
