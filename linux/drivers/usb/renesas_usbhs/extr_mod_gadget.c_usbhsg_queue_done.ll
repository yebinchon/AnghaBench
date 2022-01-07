; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_queue_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_queue_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_pkt = type { i32, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhsg_uep = type { i32 }
%struct.usbhsg_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_priv*, %struct.usbhs_pkt*)* @usbhsg_queue_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsg_queue_done(%struct.usbhs_priv* %0, %struct.usbhs_pkt* %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca %struct.usbhs_pipe*, align 8
  %6 = alloca %struct.usbhsg_uep*, align 8
  %7 = alloca %struct.usbhsg_request*, align 8
  %8 = alloca i64, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store %struct.usbhs_pkt* %1, %struct.usbhs_pkt** %4, align 8
  %9 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %10 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %9, i32 0, i32 1
  %11 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %10, align 8
  store %struct.usbhs_pipe* %11, %struct.usbhs_pipe** %5, align 8
  %12 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %13 = call %struct.usbhsg_uep* @usbhsg_pipe_to_uep(%struct.usbhs_pipe* %12)
  store %struct.usbhsg_uep* %13, %struct.usbhsg_uep** %6, align 8
  %14 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %15 = call %struct.usbhsg_request* @usbhsg_pkt_to_ureq(%struct.usbhs_pkt* %14)
  store %struct.usbhsg_request* %15, %struct.usbhsg_request** %7, align 8
  %16 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %17 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usbhsg_request*, %struct.usbhsg_request** %7, align 8
  %20 = getelementptr inbounds %struct.usbhsg_request, %struct.usbhsg_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @usbhs_lock(%struct.usbhs_priv* %22, i64 %23)
  %25 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %6, align 8
  %26 = icmp ne %struct.usbhsg_uep* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %6, align 8
  %29 = load %struct.usbhsg_request*, %struct.usbhsg_request** %7, align 8
  %30 = call i32 @__usbhsg_queue_pop(%struct.usbhsg_uep* %28, %struct.usbhsg_request* %29, i32 0)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @usbhs_unlock(%struct.usbhs_priv* %32, i64 %33)
  ret void
}

declare dso_local %struct.usbhsg_uep* @usbhsg_pipe_to_uep(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhsg_request* @usbhsg_pkt_to_ureq(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @__usbhsg_queue_pop(%struct.usbhsg_uep*, %struct.usbhsg_request*, i32) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
