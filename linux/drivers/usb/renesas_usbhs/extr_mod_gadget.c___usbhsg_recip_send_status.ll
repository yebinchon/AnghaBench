; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c___usbhsg_recip_send_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c___usbhsg_recip_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhsg_gpriv = type { i32 }
%struct.usbhsg_uep = type { i32 }
%struct.usbhs_pipe = type { i32* }
%struct.device = type { i32 }
%struct.usb_request = type { i32, i64, i32*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"recip request allocation fail\0A\00", align 1
@__usbhsg_recip_send_complete = common dso_local global i32 0, align 4
@usbhs_fifo_pio_push_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhsg_gpriv*, i16)* @__usbhsg_recip_send_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__usbhsg_recip_send_status(%struct.usbhsg_gpriv* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.usbhsg_gpriv*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.usbhsg_uep*, align 8
  %6 = alloca %struct.usbhs_pipe*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.usb_request*, align 8
  %9 = alloca i32*, align 8
  store %struct.usbhsg_gpriv* %0, %struct.usbhsg_gpriv** %3, align 8
  store i16 %1, i16* %4, align 2
  %10 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %3, align 8
  %11 = call %struct.usbhsg_uep* @usbhsg_gpriv_to_dcp(%struct.usbhsg_gpriv* %10)
  store %struct.usbhsg_uep* %11, %struct.usbhsg_uep** %5, align 8
  %12 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %13 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %12)
  store %struct.usbhs_pipe* %13, %struct.usbhs_pipe** %6, align 8
  %14 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %3, align 8
  %15 = call %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv* %14)
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %17 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.usb_request* @usb_ep_alloc_request(i32* %17, i32 %18)
  store %struct.usb_request* %19, %struct.usb_request** %8, align 8
  %20 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %21 = icmp ne %struct.usb_request* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %55

25:                                               ; preds = %2
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32* @kmalloc(i32 4, i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %32 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %31, i32 0, i32 0
  %33 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %34 = call i32 @usb_ep_free_request(i32* %32, %struct.usb_request* %33)
  br label %55

35:                                               ; preds = %25
  %36 = load i16, i16* %4, align 2
  %37 = call i32 @cpu_to_le16(i16 zeroext %36)
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @__usbhsg_recip_send_complete, align 4
  %40 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %41 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %44 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %46 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %48 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %50 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %49, i32 0, i32 0
  store i32* @usbhs_fifo_pio_push_handler, i32** %50, align 8
  %51 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %52 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %53 = call i32 @usbhsg_req_to_ureq(%struct.usb_request* %52)
  %54 = call i32 @usbhsg_queue_push(%struct.usbhsg_uep* %51, i32 %53)
  br label %55

55:                                               ; preds = %35, %30, %22
  ret void
}

declare dso_local %struct.usbhsg_uep* @usbhsg_gpriv_to_dcp(%struct.usbhsg_gpriv*) #1

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv*) #1

declare dso_local %struct.usb_request* @usb_ep_alloc_request(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_ep_free_request(i32*, %struct.usb_request*) #1

declare dso_local i32 @cpu_to_le16(i16 zeroext) #1

declare dso_local i32 @usbhsg_queue_push(%struct.usbhsg_uep*, i32) #1

declare dso_local i32 @usbhsg_req_to_ureq(%struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
