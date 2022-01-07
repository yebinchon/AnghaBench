; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_update_pxa_ep_matches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_update_pxa_ep_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { %struct.udc_usb_ep* }
%struct.udc_usb_ep = type { i64 }

@NR_USB_ENDPOINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*)* @update_pxa_ep_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pxa_ep_matches(%struct.pxa_udc* %0) #0 {
  %2 = alloca %struct.pxa_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.udc_usb_ep*, align 8
  store %struct.pxa_udc* %0, %struct.pxa_udc** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NR_USB_ENDPOINTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %11 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %10, i32 0, i32 0
  %12 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.udc_usb_ep, %struct.udc_usb_ep* %12, i64 %14
  store %struct.udc_usb_ep* %15, %struct.udc_usb_ep** %4, align 8
  %16 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %4, align 8
  %17 = getelementptr inbounds %struct.udc_usb_ep, %struct.udc_usb_ep* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %22 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %4, align 8
  %23 = call i64 @find_pxa_ep(%struct.pxa_udc* %21, %struct.udc_usb_ep* %22)
  %24 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %4, align 8
  %25 = getelementptr inbounds %struct.udc_usb_ep, %struct.udc_usb_ep* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %9
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  ret void
}

declare dso_local i64 @find_pxa_ep(%struct.pxa_udc*, %struct.udc_usb_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
