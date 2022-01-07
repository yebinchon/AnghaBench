; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-platform.c_uhci_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-platform.c_uhci_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.uhci_hcd = type { i32*, i32*, i32*, i32, i32, i64 }

@uhci_generic_reset_hc = common dso_local global i32 0, align 4
@uhci_generic_check_and_reset_hc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @uhci_platform_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_platform_init(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.uhci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd* %4)
  store %struct.uhci_hcd* %5, %struct.uhci_hcd** %3, align 8
  %6 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %12 = call i64 @uhci_count_ports(%struct.usb_hcd* %11)
  %13 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %13, i32 0, i32 5
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @uhci_generic_reset_hc, align 4
  %17 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @uhci_generic_check_and_reset_hc, align 4
  %20 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %25 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %29 = call i32 @check_and_reset_hc(%struct.uhci_hcd* %28)
  ret i32 0
}

declare dso_local %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd*) #1

declare dso_local i64 @uhci_count_ports(%struct.usb_hcd*) #1

declare dso_local i32 @check_and_reset_hc(%struct.uhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
