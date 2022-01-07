; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_fhci_create_lld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_fhci_create_lld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_usb = type { i32, i32, i32, %struct.fhci_hcd* }
%struct.fhci_hcd = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@fhci_transfer_confirm_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fhci_usb* (%struct.fhci_hcd*)* @fhci_create_lld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fhci_usb* @fhci_create_lld(%struct.fhci_hcd* %0) #0 {
  %2 = alloca %struct.fhci_usb*, align 8
  %3 = alloca %struct.fhci_hcd*, align 8
  %4 = alloca %struct.fhci_usb*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.fhci_usb* @kzalloc(i32 24, i32 %5)
  store %struct.fhci_usb* %6, %struct.fhci_usb** %4, align 8
  %7 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %8 = icmp ne %struct.fhci_usb* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.fhci_usb* null, %struct.fhci_usb** %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %12 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %13 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %12, i32 0, i32 3
  store %struct.fhci_hcd* %11, %struct.fhci_hcd** %13, align 8
  %14 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %18 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %23 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @fhci_transfer_confirm_callback, align 4
  %25 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %26 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  store %struct.fhci_usb* %27, %struct.fhci_usb** %2, align 8
  br label %28

28:                                               ; preds = %10, %9
  %29 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  ret %struct.fhci_usb* %29
}

declare dso_local %struct.fhci_usb* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
