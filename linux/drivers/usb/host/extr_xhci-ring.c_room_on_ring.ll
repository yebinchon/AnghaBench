; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_room_on_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_room_on_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TYPE_COMMAND = common dso_local global i64 0, align 8
@TYPE_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_ring*, i32)* @room_on_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @room_on_ring(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %10 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

15:                                               ; preds = %3
  %16 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %17 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TYPE_COMMAND, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %23 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TYPE_EVENT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %29 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %32 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %30, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %38 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %40, %41
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %47

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %21, %15
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %44, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
