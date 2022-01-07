; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.h_hcd_to_xhci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.h_hcd_to_xhci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.usb_hcd = type { i64, %struct.usb_hcd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_hcd* (%struct.usb_hcd*)* @hcd_to_xhci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 1
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  store %struct.usb_hcd* %12, %struct.usb_hcd** %3, align 8
  br label %13

13:                                               ; preds = %9, %7
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.xhci_hcd*
  ret %struct.xhci_hcd* %17
}

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
