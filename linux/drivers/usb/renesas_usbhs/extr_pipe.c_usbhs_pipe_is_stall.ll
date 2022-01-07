; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_is_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_is_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }

@PID_MASK = common dso_local global i64 0, align 8
@PID_STALL10 = common dso_local global i64 0, align 8
@PID_STALL11 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhs_pipe_is_stall(%struct.usbhs_pipe* %0) #0 {
  %2 = alloca %struct.usbhs_pipe*, align 8
  %3 = alloca i64, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %2, align 8
  %4 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %5 = call i64 @usbhsp_pipectrl_get(%struct.usbhs_pipe* %4)
  %6 = load i64, i64* @PID_MASK, align 8
  %7 = and i64 %5, %6
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @PID_STALL10, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @PID_STALL11, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i1 [ true, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @usbhsp_pipectrl_get(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
