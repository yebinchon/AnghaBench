; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_select_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_select_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { %struct.usbhs_fifo* }
%struct.usbhs_fifo = type { %struct.usbhs_pipe* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_pipe_select_fifo(%struct.usbhs_pipe* %0, %struct.usbhs_fifo* %1) #0 {
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_fifo*, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  store %struct.usbhs_fifo* %1, %struct.usbhs_fifo** %4, align 8
  %5 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %6 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %5, i32 0, i32 0
  %7 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %8 = icmp ne %struct.usbhs_fifo* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %11 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %10, i32 0, i32 0
  %12 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %11, align 8
  %13 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %12, i32 0, i32 0
  store %struct.usbhs_pipe* null, %struct.usbhs_pipe** %13, align 8
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %16 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %17 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %16, i32 0, i32 0
  store %struct.usbhs_fifo* %15, %struct.usbhs_fifo** %17, align 8
  %18 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %19 = icmp ne %struct.usbhs_fifo* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %22 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %23 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %22, i32 0, i32 0
  store %struct.usbhs_pipe* %21, %struct.usbhs_pipe** %23, align 8
  br label %24

24:                                               ; preds = %20, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
