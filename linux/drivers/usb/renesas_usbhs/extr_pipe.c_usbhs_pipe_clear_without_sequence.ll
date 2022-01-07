; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_clear_without_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_clear_without_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }

@BFRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_pipe_clear_without_sequence(%struct.usbhs_pipe* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usbhs_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %9 = call i32 @usbhsp_pipe_select(%struct.usbhs_pipe* %8)
  %10 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %11 = call i32 @usbhs_pipe_get_data_sequence(%struct.usbhs_pipe* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %16 = load i32, i32* @BFRE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @BFRE, align 4
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @usbhsp_pipe_cfg_set(%struct.usbhs_pipe* %15, i32 %16, i32 %23)
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %27 = call i32 @usbhs_pipe_clear(%struct.usbhs_pipe* %26)
  %28 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @usbhs_pipe_data_sequence(%struct.usbhs_pipe* %28, i32 %29)
  ret void
}

declare dso_local i32 @usbhsp_pipe_select(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_get_data_sequence(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_cfg_set(%struct.usbhs_pipe*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_clear(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_data_sequence(%struct.usbhs_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
