; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_queue_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhsg_uep = type { i32 }
%struct.usbhsg_request = type { %struct.usb_request }
%struct.usb_request = type { i32, i32, i32, i32, i64 }
%struct.usbhsg_gpriv = type { i32 }
%struct.device = type { i32 }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_pkt = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@usbhsg_queue_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pipe %d : queue push (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhsg_uep*, %struct.usbhsg_request*)* @usbhsg_queue_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsg_queue_push(%struct.usbhsg_uep* %0, %struct.usbhsg_request* %1) #0 {
  %3 = alloca %struct.usbhsg_uep*, align 8
  %4 = alloca %struct.usbhsg_request*, align 8
  %5 = alloca %struct.usbhsg_gpriv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.usbhs_pipe*, align 8
  %8 = alloca %struct.usbhs_pkt*, align 8
  %9 = alloca %struct.usb_request*, align 8
  store %struct.usbhsg_uep* %0, %struct.usbhsg_uep** %3, align 8
  store %struct.usbhsg_request* %1, %struct.usbhsg_request** %4, align 8
  %10 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %3, align 8
  %11 = call %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep* %10)
  store %struct.usbhsg_gpriv* %11, %struct.usbhsg_gpriv** %5, align 8
  %12 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %5, align 8
  %13 = call %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv* %12)
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %3, align 8
  %15 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %14)
  store %struct.usbhs_pipe* %15, %struct.usbhs_pipe** %7, align 8
  %16 = load %struct.usbhsg_request*, %struct.usbhsg_request** %4, align 8
  %17 = call %struct.usbhs_pkt* @usbhsg_ureq_to_pkt(%struct.usbhsg_request* %16)
  store %struct.usbhs_pkt* %17, %struct.usbhs_pkt** %8, align 8
  %18 = load %struct.usbhsg_request*, %struct.usbhsg_request** %4, align 8
  %19 = getelementptr inbounds %struct.usbhsg_request, %struct.usbhsg_request* %18, i32 0, i32 0
  store %struct.usb_request* %19, %struct.usb_request** %9, align 8
  %20 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %21 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @EINPROGRESS, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %25 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %7, align 8
  %27 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %8, align 8
  %28 = load i32, i32* @usbhsg_queue_done, align 4
  %29 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %30 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %33 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %36 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usbhs_pkt_push(%struct.usbhs_pipe* %26, %struct.usbhs_pkt* %27, i32 %28, i32 %31, i32 %34, i32 %37, i32 -1)
  %39 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %7, align 8
  %40 = call i32 @usbhs_pkt_start(%struct.usbhs_pipe* %39)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %7, align 8
  %43 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %42)
  %44 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %45 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  ret void
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep*) #1

declare dso_local %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv*) #1

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local %struct.usbhs_pkt* @usbhsg_ureq_to_pkt(%struct.usbhsg_request*) #1

declare dso_local i32 @usbhs_pkt_push(%struct.usbhs_pipe*, %struct.usbhs_pkt*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usbhs_pkt_start(%struct.usbhs_pipe*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
