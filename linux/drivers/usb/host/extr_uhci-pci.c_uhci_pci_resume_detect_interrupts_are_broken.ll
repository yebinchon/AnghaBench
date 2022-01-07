; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-pci.c_uhci_pci_resume_detect_interrupts_are_broken.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-pci.c_uhci_pci_resume_detect_interrupts_are_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@USBPORTSC1 = common dso_local global i64 0, align 8
@USBPORTSC_OC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*)* @uhci_pci_resume_detect_interrupts_are_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_pci_resume_detect_interrupts_are_broken(%struct.uhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  %5 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %6 = call i32 @uhci_dev(%struct.uhci_hcd* %5)
  %7 = call %struct.TYPE_2__* @to_pci_dev(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %10 [
    i32 129, label %11
    i32 128, label %12
  ]

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USBPORTSC1, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @inw(i32 %29)
  %31 = load i32, i32* @USBPORTSC_OC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %41

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %39, %10
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %34, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_2__* @to_pci_dev(i32) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
