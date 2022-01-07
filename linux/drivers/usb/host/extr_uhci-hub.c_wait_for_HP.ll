; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_wait_for_HP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_wait_for_HP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }

@USBPORTSC_CSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, i64)* @wait_for_HP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_HP(%struct.uhci_hcd* %0, i64 %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 10, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 250
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @uhci_readw(%struct.uhci_hcd* %10, i64 %11)
  %13 = load i32, i32* @USBPORTSC_CSC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %22

17:                                               ; preds = %9
  %18 = call i32 @udelay(i32 10)
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 10
  store i32 %21, i32* %5, align 4
  br label %6

22:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @uhci_readw(%struct.uhci_hcd*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
