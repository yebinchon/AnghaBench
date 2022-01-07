; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_spoof_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_spoof_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i64, i64, i32, i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"hardware auto-acked bad SET_CONFIGURATION(%d) request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*)* @bcm63xx_ep0_spoof_set_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_ep0_spoof_set_cfg(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca %struct.bcm63xx_udc*, align 8
  %3 = alloca %struct.usb_ctrlrequest, align 8
  %4 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %2, align 8
  %5 = load i32, i32* @USB_DIR_OUT, align 4
  %6 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %12 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %19 = call i32 @bcm63xx_ep0_setup_callback(%struct.bcm63xx_udc* %18, %struct.usb_ctrlrequest* %3)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %24 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %27 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn_ratelimited(i32 %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @bcm63xx_ep0_setup_callback(%struct.bcm63xx_udc*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
