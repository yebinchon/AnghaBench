; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_pipectrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_pipectrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }

@DCPCTR = common dso_local global i64 0, align 8
@PIPEnCTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pipe*)* @usbhsp_pipectrl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsp_pipectrl_get(%struct.usbhs_pipe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  %6 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %7 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %6)
  store %struct.usbhs_priv* %7, %struct.usbhs_priv** %4, align 8
  %8 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %9 = call i32 @usbhsp_addr_offset(%struct.usbhs_pipe* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %11 = call i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %15 = load i64, i64* @DCPCTR, align 8
  %16 = call i32 @usbhs_read(%struct.usbhs_priv* %14, i64 %15)
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %19 = load i64, i64* @PIPEnCTR, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @usbhs_read(%struct.usbhs_priv* %18, i64 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_addr_offset(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_read(%struct.usbhs_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
