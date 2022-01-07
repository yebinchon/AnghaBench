; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_ep_set_maxpacket_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_ep_set_maxpacket_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_ep_set_maxpacket_limit(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %7 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %10 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %12 = call i32 @trace_usb_ep_set_maxpacket_limit(%struct.usb_ep* %11, i32 0)
  ret void
}

declare dso_local i32 @trace_usb_ep_set_maxpacket_limit(%struct.usb_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
