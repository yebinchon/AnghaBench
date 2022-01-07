; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_nuke_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_nuke_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { %struct.usb_request*, i64, i32, %struct.usb_request* }
%struct.usb_request = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*, i32)* @bcm63xx_ep0_nuke_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_ep0_nuke_reply(%struct.bcm63xx_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_request*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %7 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %6, i32 0, i32 3
  %8 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  store %struct.usb_request* %8, %struct.usb_request** %5, align 8
  %9 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %10 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %9, i32 0, i32 3
  store %struct.usb_request* null, %struct.usb_request** %10, align 8
  %11 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %12 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %11, i32 0, i32 2
  %13 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @usb_gadget_unmap_request(i32* %12, %struct.usb_request* %13, i32 %14)
  %16 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %17 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %16, i32 0, i32 0
  %18 = load %struct.usb_request*, %struct.usb_request** %17, align 8
  %19 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %20 = icmp eq %struct.usb_request* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %23 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %25 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %24, i32 0, i32 0
  store %struct.usb_request* null, %struct.usb_request** %25, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %28 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %29 = load i32, i32* @ESHUTDOWN, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @bcm63xx_ep0_complete(%struct.bcm63xx_udc* %27, %struct.usb_request* %28, i32 %30)
  ret void
}

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.usb_request*, i32) #1

declare dso_local i32 @bcm63xx_ep0_complete(%struct.bcm63xx_udc*, %struct.usb_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
