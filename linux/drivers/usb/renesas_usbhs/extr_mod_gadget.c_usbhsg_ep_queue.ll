; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.usbhsg_uep = type { i32 }
%struct.usbhsg_gpriv = type { i32 }
%struct.usbhsg_request = type { i32 }
%struct.usbhs_pipe = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @usbhsg_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_ep_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbhsg_uep*, align 8
  %9 = alloca %struct.usbhsg_gpriv*, align 8
  %10 = alloca %struct.usbhsg_request*, align 8
  %11 = alloca %struct.usbhs_pipe*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %13 = call %struct.usbhsg_uep* @usbhsg_ep_to_uep(%struct.usb_ep* %12)
  store %struct.usbhsg_uep* %13, %struct.usbhsg_uep** %8, align 8
  %14 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %8, align 8
  %15 = call %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep* %14)
  store %struct.usbhsg_gpriv* %15, %struct.usbhsg_gpriv** %9, align 8
  %16 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %17 = call %struct.usbhsg_request* @usbhsg_req_to_ureq(%struct.usb_request* %16)
  store %struct.usbhsg_request* %17, %struct.usbhsg_request** %10, align 8
  %18 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %8, align 8
  %19 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %18)
  store %struct.usbhs_pipe* %19, %struct.usbhs_pipe** %11, align 8
  %20 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %9, align 8
  %21 = call i64 @usbhsg_is_not_connected(%struct.usbhsg_gpriv* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %3
  %24 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %9, align 8
  %25 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %23
  %33 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %11, align 8
  %34 = icmp ne %struct.usbhs_pipe* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %23, %3
  %40 = load i32, i32* @ESHUTDOWN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %32
  %43 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %8, align 8
  %44 = load %struct.usbhsg_request*, %struct.usbhsg_request** %10, align 8
  %45 = call i32 @usbhsg_queue_push(%struct.usbhsg_uep* %43, %struct.usbhsg_request* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.usbhsg_uep* @usbhsg_ep_to_uep(%struct.usb_ep*) #1

declare dso_local %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep*) #1

declare dso_local %struct.usbhsg_request* @usbhsg_req_to_ureq(%struct.usb_request*) #1

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local i64 @usbhsg_is_not_connected(%struct.usbhsg_gpriv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usbhsg_queue_push(%struct.usbhsg_uep*, %struct.usbhsg_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
