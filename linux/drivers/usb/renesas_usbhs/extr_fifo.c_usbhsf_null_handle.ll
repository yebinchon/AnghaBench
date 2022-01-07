; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_null_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_null_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"null handler\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_null_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_null_handle(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca %struct.usbhs_pkt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbhs_priv*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %8 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(i32 %9)
  store %struct.usbhs_priv* %10, %struct.usbhs_priv** %5, align 8
  %11 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %12 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %11)
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  ret i32 %16
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(i32) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
