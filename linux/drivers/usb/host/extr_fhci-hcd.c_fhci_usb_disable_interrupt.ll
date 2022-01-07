; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_fhci_usb_disable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_fhci_usb_disable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_usb = type { i64, %struct.fhci_hcd* }
%struct.fhci_hcd = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_usb_disable_interrupt(%struct.fhci_usb* %0) #0 {
  %2 = alloca %struct.fhci_usb*, align 8
  %3 = alloca %struct.fhci_hcd*, align 8
  store %struct.fhci_usb* %0, %struct.fhci_usb** %2, align 8
  %4 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %5 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %4, i32 0, i32 1
  %6 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  store %struct.fhci_hcd* %6, %struct.fhci_hcd** %3, align 8
  %7 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %8 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @disable_irq_nosync(i32 %16)
  %18 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %19 = call %struct.TYPE_6__* @fhci_to_hcd(%struct.fhci_hcd* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @disable_irq_nosync(i32 %21)
  %23 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %24 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %23, i32 0, i32 1
  %25 = load %struct.fhci_hcd*, %struct.fhci_hcd** %24, align 8
  %26 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @out_be16(i32* %28, i32 0)
  br label %30

30:                                               ; preds = %11, %1
  %31 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %32 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  ret void
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local %struct.TYPE_6__* @fhci_to_hcd(%struct.fhci_hcd*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
