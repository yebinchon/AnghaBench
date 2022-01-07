; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.renesas_usb3_ep = type { i32 }
%struct.renesas_usb3_request = type { i32 }
%struct.renesas_usb3 = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ep_dequeue: ep%2d, %u\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*)* @renesas_usb3_ep_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_usb3_ep_dequeue(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.renesas_usb3_ep*, align 8
  %6 = alloca %struct.renesas_usb3_request*, align 8
  %7 = alloca %struct.renesas_usb3*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %8 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %9 = call %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep* %8)
  store %struct.renesas_usb3_ep* %9, %struct.renesas_usb3_ep** %5, align 8
  %10 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %11 = call %struct.renesas_usb3_request* @usb_req_to_usb3_req(%struct.usb_request* %10)
  store %struct.renesas_usb3_request* %11, %struct.renesas_usb3_request** %6, align 8
  %12 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %13 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %12)
  store %struct.renesas_usb3* %13, %struct.renesas_usb3** %7, align 8
  %14 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %15 = call i32 @usb3_to_dev(%struct.renesas_usb3* %14)
  %16 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %20 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %24 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %6, align 8
  %25 = call i32 @usb3_dma_try_stop(%struct.renesas_usb3_ep* %23, %struct.renesas_usb3_request* %24)
  %26 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %27 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %28 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %6, align 8
  %29 = load i32, i32* @ECONNRESET, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @usb3_request_done_pipen(%struct.renesas_usb3* %26, %struct.renesas_usb3_ep* %27, %struct.renesas_usb3_request* %28, i32 %30)
  ret i32 0
}

declare dso_local %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep*) #1

declare dso_local %struct.renesas_usb3_request* @usb_req_to_usb3_req(%struct.usb_request*) #1

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @usb3_to_dev(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_dma_try_stop(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

declare dso_local i32 @usb3_request_done_pipen(%struct.renesas_usb3*, %struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
