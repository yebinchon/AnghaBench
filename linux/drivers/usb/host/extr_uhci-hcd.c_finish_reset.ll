; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hcd.c_finish_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hcd.c_finish_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@USBPORTSC1 = common dso_local global i64 0, align 8
@UHCI_RH_RESET = common dso_local global i32 0, align 4
@UHCI_IS_STOPPED = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*)* @finish_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_reset(%struct.uhci_hcd* %0) #0 {
  %2 = alloca %struct.uhci_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %12 = load i64, i64* @USBPORTSC1, align 8
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @uhci_writew(%struct.uhci_hcd* %11, i32 0, i64 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @UHCI_RH_RESET, align 4
  %27 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @UHCI_IS_STOPPED, align 4
  %30 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %33 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %34 = call %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %32, i32* %35)
  ret void
}

declare dso_local i32 @uhci_writew(%struct.uhci_hcd*, i32, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
