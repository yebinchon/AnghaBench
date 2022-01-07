; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_fifo_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_fifo_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_fifo = type { i32 }
%struct.usbhs_priv = type { i32 }

@BCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_pipe*, %struct.usbhs_fifo*)* @usbhsf_fifo_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsf_fifo_clear(%struct.usbhs_pipe* %0, %struct.usbhs_fifo* %1) #0 {
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_fifo*, align 8
  %5 = alloca %struct.usbhs_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  store %struct.usbhs_fifo* %1, %struct.usbhs_fifo** %4, align 8
  %7 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %8 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %7)
  store %struct.usbhs_priv* %8, %struct.usbhs_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %10 = call i32 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %14 = call i64 @usbhs_pipe_is_dir_in(%struct.usbhs_pipe* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %18 = call i32 @usbhs_pipe_is_accessible(%struct.usbhs_pipe* %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %24 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %25 = call i32 @usbhsf_fifo_barrier(%struct.usbhs_priv* %23, %struct.usbhs_fifo* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %32 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %33 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BCLR, align 4
  %36 = call i32 @usbhs_write(%struct.usbhs_priv* %31, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_dir_in(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_is_accessible(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsf_fifo_barrier(%struct.usbhs_priv*, %struct.usbhs_fifo*) #1

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
