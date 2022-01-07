; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_fifo_clear_dcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_fifo_clear_dcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_fifo_clear_dcp(%struct.usbhs_pipe* %0) #0 {
  %2 = alloca %struct.usbhs_pipe*, align 8
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usbhs_fifo*, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %2, align 8
  %5 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %6 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %5)
  store %struct.usbhs_priv* %6, %struct.usbhs_priv** %3, align 8
  %7 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %8 = call %struct.usbhs_fifo* @usbhsf_get_cfifo(%struct.usbhs_priv* %7)
  store %struct.usbhs_fifo* %8, %struct.usbhs_fifo** %4, align 8
  %9 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %10 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %11 = call i64 @usbhsf_fifo_select(%struct.usbhs_pipe* %9, %struct.usbhs_fifo* %10, i32 1)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %16 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %17 = call i32 @usbhsf_fifo_clear(%struct.usbhs_pipe* %15, %struct.usbhs_fifo* %16)
  %18 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %19 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %20 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %18, %struct.usbhs_fifo* %19)
  %21 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %22 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %23 = call i64 @usbhsf_fifo_select(%struct.usbhs_pipe* %21, %struct.usbhs_fifo* %22, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %33

26:                                               ; preds = %14
  %27 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %28 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %29 = call i32 @usbhsf_fifo_clear(%struct.usbhs_pipe* %27, %struct.usbhs_fifo* %28)
  %30 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %31 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %32 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %30, %struct.usbhs_fifo* %31)
  br label %33

33:                                               ; preds = %26, %25, %13
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_fifo* @usbhsf_get_cfifo(%struct.usbhs_priv*) #1

declare dso_local i64 @usbhsf_fifo_select(%struct.usbhs_pipe*, %struct.usbhs_fifo*, i32) #1

declare dso_local i32 @usbhsf_fifo_clear(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

declare dso_local i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
