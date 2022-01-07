; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_init_ep0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_init_ep0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32, %struct.TYPE_4__, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.cdns3_endpoint = type { i32, %struct.TYPE_6__, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ep0\00", align 1
@cdns3_gadget_ep0_ops = common dso_local global i32 0, align 4
@CDNS3_EP0_MAX_PACKET_LIMIT = common dso_local global i32 0, align 4
@cdns3_gadget_ep0_desc = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_init_ep0(%struct.cdns3_device* %0, %struct.cdns3_endpoint* %1) #0 {
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca %struct.cdns3_endpoint*, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %3, align 8
  store %struct.cdns3_endpoint* %1, %struct.cdns3_endpoint** %4, align 8
  %5 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %6 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @sprintf(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %10 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  store i32* @cdns3_gadget_ep0_ops, i32** %11, align 8
  %12 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %13 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %16 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %15, i32 0, i32 1
  %17 = load i32, i32* @CDNS3_EP0_MAX_PACKET_LIMIT, align 4
  %18 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %16, i32 %17)
  %19 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %23 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %27 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %35 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %38 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %41 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* @cdns3_gadget_ep0_desc, i32** %42, align 8
  %43 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %44 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %43, i32 0, i32 1
  %45 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %46 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %47, align 8
  %48 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %49 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %50 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %52 = call i32 @cdns3_allocate_trb_pool(%struct.cdns3_endpoint* %51)
  ret i32 %52
}

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cdns3_allocate_trb_pool(%struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
