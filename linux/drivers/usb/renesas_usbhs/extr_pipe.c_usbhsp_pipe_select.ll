; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_pipe_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_pipe_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }

@PIPESEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_pipe*)* @usbhsp_pipe_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsp_pipe_select(%struct.usbhs_pipe* %0) #0 {
  %2 = alloca %struct.usbhs_pipe*, align 8
  %3 = alloca %struct.usbhs_priv*, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %2, align 8
  %4 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %5 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %4)
  store %struct.usbhs_priv* %5, %struct.usbhs_priv** %3, align 8
  %6 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %7 = load i32, i32* @PIPESEL, align 4
  %8 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %9 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %8)
  %10 = and i32 15, %9
  %11 = call i32 @usbhs_write(%struct.usbhs_priv* %6, i32 %7, i32 %10)
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
