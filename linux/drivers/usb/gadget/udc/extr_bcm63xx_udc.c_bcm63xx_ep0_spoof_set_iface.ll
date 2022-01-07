; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_spoof_set_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_spoof_set_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32, i32, i32 }
%struct.usb_ctrlrequest = type { i32, i64, i8*, i8*, i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_REQ_SET_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"hardware auto-acked bad SET_INTERFACE(%d,%d) request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*)* @bcm63xx_ep0_spoof_set_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_ep0_spoof_set_iface(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca %struct.bcm63xx_udc*, align 8
  %3 = alloca %struct.usb_ctrlrequest, align 8
  %4 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %2, align 8
  %5 = load i32, i32* @USB_DIR_OUT, align 4
  %6 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* @USB_REQ_SET_INTERFACE, align 4
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  %11 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %12 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %17 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %23 = call i32 @bcm63xx_ep0_setup_callback(%struct.bcm63xx_udc* %22, %struct.usb_ctrlrequest* %3)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %28 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %31 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %34 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_warn_ratelimited(i32 %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %26, %1
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @bcm63xx_ep0_setup_callback(%struct.bcm63xx_udc*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
