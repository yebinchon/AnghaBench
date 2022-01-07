; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_dma_map_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_dma_map_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usbhs_pkt = type { i32 }
%struct.usbhsh_request = type { %struct.urb* }
%struct.urb = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.usbhs_pkt*, i32)* @usbhsh_dma_map_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_dma_map_ctrl(%struct.device* %0, %struct.usbhs_pkt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.usbhs_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbhsh_request*, align 8
  %9 = alloca %struct.urb*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.usbhs_pkt* %1, %struct.usbhs_pkt** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %14 = call %struct.usbhsh_request* @usbhsh_pkt_to_ureq(%struct.usbhs_pkt* %13)
  store %struct.usbhsh_request* %14, %struct.usbhsh_request** %8, align 8
  %15 = load %struct.usbhsh_request*, %struct.usbhsh_request** %8, align 8
  %16 = getelementptr inbounds %struct.usbhsh_request, %struct.usbhsh_request* %15, i32 0, i32 0
  %17 = load %struct.urb*, %struct.urb** %16, align 8
  store %struct.urb* %17, %struct.urb** %9, align 8
  %18 = load %struct.urb*, %struct.urb** %9, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %12
  %26 = load %struct.urb*, %struct.urb** %9, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %30 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %32 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %3
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %35, %22
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.usbhsh_request* @usbhsh_pkt_to_ureq(%struct.usbhs_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
