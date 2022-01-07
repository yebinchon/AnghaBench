; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.renesas_usb3_ep = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @renesas_usb3_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_usb3_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.renesas_usb3_ep*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %6 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %7 = call %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep* %6)
  store %struct.renesas_usb3_ep* %7, %struct.renesas_usb3_ep** %5, align 8
  %8 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %9 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %10 = call i32 @usb3_enable_pipe_n(%struct.renesas_usb3_ep* %8, %struct.usb_endpoint_descriptor* %9)
  ret i32 %10
}

declare dso_local %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep*) #1

declare dso_local i32 @usb3_enable_pipe_n(%struct.renesas_usb3_ep*, %struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
