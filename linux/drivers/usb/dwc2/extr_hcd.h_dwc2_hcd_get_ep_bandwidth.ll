; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.h_dwc2_hcd_get_ep_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.h_dwc2_hcd_get_ep_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.usb_host_endpoint = type { %struct.dwc2_qh* }
%struct.dwc2_qh = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.usb_host_endpoint*)* @dwc2_hcd_get_ep_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hcd_get_ep_bandwidth(%struct.dwc2_hsotg* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca %struct.dwc2_qh*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %5, align 8
  %7 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %8 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %7, i32 0, i32 0
  %9 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  store %struct.dwc2_qh* %9, %struct.dwc2_qh** %6, align 8
  %10 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %11 = icmp ne %struct.dwc2_qh* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %16 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
