; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_status_stage_packet_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_status_stage_packet_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhsh_hpriv = type { i32 }
%struct.urb = type { i32, i32 }
%struct.usbhs_pipe = type { i32* }
%struct.usbhsh_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@usbhs_dcp_status_stage_in_handler = common dso_local global i32 0, align 4
@usbhs_dcp_status_stage_out_handler = common dso_local global i32 0, align 4
@usbhsh_queue_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhsh_hpriv*, %struct.urb*, %struct.usbhs_pipe*, i32)* @usbhsh_status_stage_packet_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_status_stage_packet_push(%struct.usbhsh_hpriv* %0, %struct.urb* %1, %struct.usbhs_pipe* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbhsh_hpriv*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.usbhs_pipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usbhsh_request*, align 8
  store %struct.usbhsh_hpriv* %0, %struct.usbhsh_hpriv** %6, align 8
  store %struct.urb* %1, %struct.urb** %7, align 8
  store %struct.usbhs_pipe* %2, %struct.usbhs_pipe** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %6, align 8
  %12 = load %struct.urb*, %struct.urb** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.usbhsh_request* @usbhsh_ureq_alloc(%struct.usbhsh_hpriv* %11, %struct.urb* %12, i32 %13)
  store %struct.usbhsh_request* %14, %struct.usbhsh_request** %10, align 8
  %15 = load %struct.usbhsh_request*, %struct.usbhsh_request** %10, align 8
  %16 = icmp ne %struct.usbhsh_request* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load %struct.urb*, %struct.urb** %7, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @usb_pipein(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %32 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %31, i32 0, i32 0
  store i32* @usbhs_dcp_status_stage_in_handler, i32** %32, align 8
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %35 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %34, i32 0, i32 0
  store i32* @usbhs_dcp_status_stage_out_handler, i32** %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %38 = load %struct.usbhsh_request*, %struct.usbhsh_request** %10, align 8
  %39 = getelementptr inbounds %struct.usbhsh_request, %struct.usbhsh_request* %38, i32 0, i32 0
  %40 = load i32, i32* @usbhsh_queue_done, align 4
  %41 = load %struct.urb*, %struct.urb** %7, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usbhs_pkt_push(%struct.usbhs_pipe* %37, i32* %39, i32 %40, i32* null, i32 %43, i32 0, i32 -1)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %36, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.usbhsh_request* @usbhsh_ureq_alloc(%struct.usbhsh_hpriv*, %struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usbhs_pkt_push(%struct.usbhs_pipe*, i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
