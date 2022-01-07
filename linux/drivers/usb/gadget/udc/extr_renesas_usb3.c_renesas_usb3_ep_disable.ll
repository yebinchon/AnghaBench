; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.renesas_usb3_ep = type { i32 }
%struct.renesas_usb3_request = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @renesas_usb3_ep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_usb3_ep_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.renesas_usb3_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  %5 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %6 = call %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep* %5)
  store %struct.renesas_usb3_ep* %6, %struct.renesas_usb3_ep** %3, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %9 = call %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep* %8)
  store %struct.renesas_usb3_request* %9, %struct.renesas_usb3_request** %4, align 8
  %10 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %11 = icmp ne %struct.renesas_usb3_request* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %23

13:                                               ; preds = %7
  %14 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %15 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %16 = call i32 @usb3_dma_try_stop(%struct.renesas_usb3_ep* %14, %struct.renesas_usb3_request* %15)
  %17 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %18 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %19 = load i32, i32* @ESHUTDOWN, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @usb3_request_done(%struct.renesas_usb3_ep* %17, %struct.renesas_usb3_request* %18, i32 %20)
  br label %22

22:                                               ; preds = %13
  br i1 true, label %7, label %23

23:                                               ; preds = %22, %12
  %24 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %25 = call i32 @usb3_disable_pipe_n(%struct.renesas_usb3_ep* %24)
  ret i32 %25
}

declare dso_local %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep*) #1

declare dso_local %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_dma_try_stop(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

declare dso_local i32 @usb3_request_done(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

declare dso_local i32 @usb3_disable_pipe_n(%struct.renesas_usb3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
