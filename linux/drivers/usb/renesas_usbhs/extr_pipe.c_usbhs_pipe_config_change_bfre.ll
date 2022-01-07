; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_config_change_bfre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_config_change_bfre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }

@BFRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_pipe_config_change_bfre(%struct.usbhs_pipe* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %6 = call i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %28

9:                                                ; preds = %2
  %10 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %11 = call i32 @usbhsp_pipe_select(%struct.usbhs_pipe* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %14 = call i32 @usbhsp_pipe_cfg_get(%struct.usbhs_pipe* %13)
  %15 = load i32, i32* @BFRE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = xor i32 %12, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %9
  br label %28

24:                                               ; preds = %9
  %25 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @usbhs_pipe_clear_without_sequence(%struct.usbhs_pipe* %25, i32 1, i32 %26)
  br label %28

28:                                               ; preds = %24, %23, %8
  ret void
}

declare dso_local i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_select(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_cfg_get(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_clear_without_sequence(%struct.usbhs_pipe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
