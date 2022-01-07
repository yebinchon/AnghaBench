; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }

@PID_MASK = common dso_local global i32 0, align 4
@PID_STALL10 = common dso_local global i32 0, align 4
@PID_STALL11 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_pipe_stall(%struct.usbhs_pipe* %0) #0 {
  %2 = alloca %struct.usbhs_pipe*, align 8
  %3 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %2, align 8
  %4 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %5 = call i32 @usbhsp_pipectrl_get(%struct.usbhs_pipe* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @PID_MASK, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %20 [
    i32 128, label %10
    i32 129, label %15
  ]

10:                                               ; preds = %1
  %11 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %12 = load i32, i32* @PID_MASK, align 4
  %13 = load i32, i32* @PID_STALL10, align 4
  %14 = call i32 @usbhsp_pipectrl_set(%struct.usbhs_pipe* %11, i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %17 = load i32, i32* @PID_MASK, align 4
  %18 = load i32, i32* @PID_STALL11, align 4
  %19 = call i32 @usbhsp_pipectrl_set(%struct.usbhs_pipe* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %1, %15, %10
  ret void
}

declare dso_local i32 @usbhsp_pipectrl_get(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipectrl_set(%struct.usbhs_pipe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
