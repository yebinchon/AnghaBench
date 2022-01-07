; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_dma_map_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_dma_map_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usbhs_pkt = type { i32, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhsg_request = type { %struct.usb_request }
%struct.usb_request = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.usbhs_pkt*, i32)* @usbhsg_dma_map_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_dma_map_ctrl(%struct.device* %0, %struct.usbhs_pkt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.usbhs_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbhsg_request*, align 8
  %9 = alloca %struct.usb_request*, align 8
  %10 = alloca %struct.usbhs_pipe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.usbhs_pkt* %1, %struct.usbhs_pkt** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %14 = call %struct.usbhsg_request* @usbhsg_pkt_to_ureq(%struct.usbhs_pkt* %13)
  store %struct.usbhsg_request* %14, %struct.usbhsg_request** %8, align 8
  %15 = load %struct.usbhsg_request*, %struct.usbhsg_request** %8, align 8
  %16 = getelementptr inbounds %struct.usbhsg_request, %struct.usbhsg_request* %15, i32 0, i32 0
  store %struct.usb_request* %16, %struct.usb_request** %9, align 8
  %17 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %18 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %17, i32 0, i32 1
  %19 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %18, align 8
  store %struct.usbhs_pipe* %19, %struct.usbhs_pipe** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %10, align 8
  %21 = call i32 @usbhs_pipe_is_dir_host(%struct.usbhs_pipe* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %3
  %25 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @usb_gadget_map_request_by_dev(%struct.device* %29, %struct.usb_request* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %24
  %38 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %39 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %42 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %48

43:                                               ; preds = %3
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @usb_gadget_unmap_request_by_dev(%struct.device* %44, %struct.usb_request* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %35
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.usbhsg_request* @usbhsg_pkt_to_ureq(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhs_pipe_is_dir_host(%struct.usbhs_pipe*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @usb_gadget_map_request_by_dev(%struct.device*, %struct.usb_request*, i32) #1

declare dso_local i32 @usb_gadget_unmap_request_by_dev(%struct.device*, %struct.usb_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
