; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hcd.c_resume_detect_interrupts_are_broken.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hcd.c_resume_detect_interrupts_are_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { {}* }

@ignore_oc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*)* @resume_detect_interrupts_are_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_detect_interrupts_are_broken(%struct.uhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhci_hcd*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  %4 = load i64, i64* @ignore_oc, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %8 = call i64 @uhci_is_aspeed(%struct.uhci_hcd* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %27

11:                                               ; preds = %6
  %12 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.uhci_hcd*)**
  %15 = load i32 (%struct.uhci_hcd*)*, i32 (%struct.uhci_hcd*)** %14, align 8
  %16 = icmp ne i32 (%struct.uhci_hcd*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.uhci_hcd*)**
  %21 = load i32 (%struct.uhci_hcd*)*, i32 (%struct.uhci_hcd*)** %20, align 8
  %22 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %23 = call i32 %21(%struct.uhci_hcd* %22)
  br label %25

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %17
  %26 = phi i32 [ %23, %17 ], [ 0, %24 ]
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @uhci_is_aspeed(%struct.uhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
