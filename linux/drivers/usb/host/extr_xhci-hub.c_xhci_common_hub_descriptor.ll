; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_common_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_common_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, i64 }

@HUB_CHAR_INDV_PORT_LPSM = common dso_local global i32 0, align 4
@HUB_CHAR_NO_LPSM = common dso_local global i32 0, align 4
@HUB_CHAR_INDV_PORT_OCPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.usb_hub_descriptor*, i32)* @xhci_common_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_common_hub_descriptor(%struct.xhci_hcd* %0, %struct.usb_hub_descriptor* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.usb_hub_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.usb_hub_descriptor* %1, %struct.usb_hub_descriptor** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %9 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %8, i32 0, i32 0
  store i32 10, i32* %9, align 8
  %10 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %11 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %14 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @HCC_PPC(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @HUB_CHAR_INDV_PORT_LPSM, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @HUB_CHAR_NO_LPSM, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @HUB_CHAR_INDV_PORT_OCPM, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %35 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  ret void
}

declare dso_local i64 @HCC_PPC(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
