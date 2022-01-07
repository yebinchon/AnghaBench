; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_ep_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_ep_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.usbhsg_uep = type { i32 }
%struct.usbhsg_request = type { i32 }
%struct.usbhs_pipe = type { i32 }

@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*)* @usbhsg_ep_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_ep_dequeue(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.usbhsg_uep*, align 8
  %6 = alloca %struct.usbhsg_request*, align 8
  %7 = alloca %struct.usbhs_pipe*, align 8
  %8 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %9 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %10 = call %struct.usbhsg_uep* @usbhsg_ep_to_uep(%struct.usb_ep* %9)
  store %struct.usbhsg_uep* %10, %struct.usbhsg_uep** %5, align 8
  %11 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %12 = call %struct.usbhsg_request* @usbhsg_req_to_ureq(%struct.usb_request* %11)
  store %struct.usbhsg_request* %12, %struct.usbhsg_request** %6, align 8
  %13 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %14 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %18 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %17)
  store %struct.usbhs_pipe* %18, %struct.usbhs_pipe** %7, align 8
  %19 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %7, align 8
  %20 = icmp ne %struct.usbhs_pipe* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %7, align 8
  %23 = load %struct.usbhsg_request*, %struct.usbhsg_request** %6, align 8
  %24 = call i32 @usbhsg_ureq_to_pkt(%struct.usbhsg_request* %23)
  %25 = call i32 @usbhs_pkt_pop(%struct.usbhs_pipe* %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %28 = load %struct.usbhsg_request*, %struct.usbhsg_request** %6, align 8
  %29 = load i32, i32* @ECONNRESET, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @usbhsg_queue_pop(%struct.usbhsg_uep* %27, %struct.usbhsg_request* %28, i32 %30)
  %32 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %33 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret i32 0
}

declare dso_local %struct.usbhsg_uep* @usbhsg_ep_to_uep(%struct.usb_ep*) #1

declare dso_local %struct.usbhsg_request* @usbhsg_req_to_ureq(%struct.usb_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local i32 @usbhs_pkt_pop(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsg_ureq_to_pkt(%struct.usbhsg_request*) #1

declare dso_local i32 @usbhsg_queue_pop(%struct.usbhsg_uep*, %struct.usbhsg_request*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
