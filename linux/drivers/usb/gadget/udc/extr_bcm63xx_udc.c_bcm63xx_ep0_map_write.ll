; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_map_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_map_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32, %struct.usb_request*, %struct.iudma_ch* }
%struct.iudma_ch = type { i32 }
%struct.usb_request = type { i64 }
%struct.bcm63xx_req = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*, i32, %struct.usb_request*)* @bcm63xx_ep0_map_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_ep0_map_write(%struct.bcm63xx_udc* %0, i32 %1, %struct.usb_request* %2) #0 {
  %4 = alloca %struct.bcm63xx_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca %struct.bcm63xx_req*, align 8
  %8 = alloca %struct.iudma_ch*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.usb_request* %2, %struct.usb_request** %6, align 8
  %9 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %10 = call %struct.bcm63xx_req* @our_req(%struct.usb_request* %9)
  store %struct.bcm63xx_req* %10, %struct.bcm63xx_req** %7, align 8
  %11 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %12 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %11, i32 0, i32 2
  %13 = load %struct.iudma_ch*, %struct.iudma_ch** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %13, i64 %15
  store %struct.iudma_ch* %16, %struct.iudma_ch** %8, align 8
  %17 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %17, i32 0, i32 1
  %19 = load %struct.usb_request*, %struct.usb_request** %18, align 8
  %20 = call i32 @BUG_ON(%struct.usb_request* %19)
  %21 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %22 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %23 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %22, i32 0, i32 1
  store %struct.usb_request* %21, %struct.usb_request** %23, align 8
  %24 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %25 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.bcm63xx_req*, %struct.bcm63xx_req** %7, align 8
  %27 = getelementptr inbounds %struct.bcm63xx_req, %struct.bcm63xx_req* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %29 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %28, i32 0, i32 0
  %30 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %31 = load %struct.iudma_ch*, %struct.iudma_ch** %8, align 8
  %32 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_gadget_map_request(i32* %29, %struct.usb_request* %30, i32 %33)
  %35 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %36 = load %struct.iudma_ch*, %struct.iudma_ch** %8, align 8
  %37 = load %struct.bcm63xx_req*, %struct.bcm63xx_req** %7, align 8
  %38 = call i32 @iudma_write(%struct.bcm63xx_udc* %35, %struct.iudma_ch* %36, %struct.bcm63xx_req* %37)
  ret void
}

declare dso_local %struct.bcm63xx_req* @our_req(%struct.usb_request*) #1

declare dso_local i32 @BUG_ON(%struct.usb_request*) #1

declare dso_local i32 @usb_gadget_map_request(i32*, %struct.usb_request*, i32) #1

declare dso_local i32 @iudma_write(%struct.bcm63xx_udc*, %struct.iudma_ch*, %struct.bcm63xx_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
