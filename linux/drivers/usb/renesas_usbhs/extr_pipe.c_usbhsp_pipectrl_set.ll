; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_pipectrl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_pipectrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }

@DCPCTR = common dso_local global i64 0, align 8
@PIPEnCTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_pipe*, i32, i32)* @usbhsp_pipectrl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsp_pipectrl_set(%struct.usbhs_pipe* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usbhs_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbhs_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %10 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %9)
  store %struct.usbhs_priv* %10, %struct.usbhs_priv** %7, align 8
  %11 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %12 = call i32 @usbhsp_addr_offset(%struct.usbhs_pipe* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %14 = call i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %18 = load i64, i64* @DCPCTR, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @usbhs_bset(%struct.usbhs_priv* %17, i64 %18, i32 %19, i32 %20)
  br label %31

22:                                               ; preds = %3
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %24 = load i64, i64* @PIPEnCTR, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @usbhs_bset(%struct.usbhs_priv* %23, i64 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %16
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_addr_offset(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_bset(%struct.usbhs_priv*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
