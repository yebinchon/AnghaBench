; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.usbhsh_hpriv = type { i32 }
%struct.usbhsh_request = type { %struct.usbhs_pkt }
%struct.usbhs_pkt = type { i32 }
%struct.usbhs_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @usbhsh_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbhsh_hpriv*, align 8
  %8 = alloca %struct.usbhsh_request*, align 8
  %9 = alloca %struct.usbhs_priv*, align 8
  %10 = alloca %struct.usbhs_pkt*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = call %struct.usbhsh_hpriv* @usbhsh_hcd_to_hpriv(%struct.usb_hcd* %11)
  store %struct.usbhsh_hpriv* %12, %struct.usbhsh_hpriv** %7, align 8
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = call %struct.usbhsh_request* @usbhsh_urb_to_ureq(%struct.urb* %13)
  store %struct.usbhsh_request* %14, %struct.usbhsh_request** %8, align 8
  %15 = load %struct.usbhsh_request*, %struct.usbhsh_request** %8, align 8
  %16 = icmp ne %struct.usbhsh_request* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %7, align 8
  %19 = call %struct.usbhs_priv* @usbhsh_hpriv_to_priv(%struct.usbhsh_hpriv* %18)
  store %struct.usbhs_priv* %19, %struct.usbhs_priv** %9, align 8
  %20 = load %struct.usbhsh_request*, %struct.usbhsh_request** %8, align 8
  %21 = getelementptr inbounds %struct.usbhsh_request, %struct.usbhsh_request* %20, i32 0, i32 0
  store %struct.usbhs_pkt* %21, %struct.usbhs_pkt** %10, align 8
  %22 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %10, align 8
  %23 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %10, align 8
  %26 = call i32 @usbhs_pkt_pop(i32 %24, %struct.usbhs_pkt* %25)
  %27 = load %struct.usbhs_priv*, %struct.usbhs_priv** %9, align 8
  %28 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %10, align 8
  %29 = call i32 @usbhsh_queue_done(%struct.usbhs_priv* %27, %struct.usbhs_pkt* %28)
  br label %30

30:                                               ; preds = %17, %3
  ret i32 0
}

declare dso_local %struct.usbhsh_hpriv* @usbhsh_hcd_to_hpriv(%struct.usb_hcd*) #1

declare dso_local %struct.usbhsh_request* @usbhsh_urb_to_ureq(%struct.urb*) #1

declare dso_local %struct.usbhs_priv* @usbhsh_hpriv_to_priv(%struct.usbhsh_hpriv*) #1

declare dso_local i32 @usbhs_pkt_pop(i32, %struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsh_queue_done(%struct.usbhs_priv*, %struct.usbhs_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
