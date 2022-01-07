; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_td_on_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_td_on_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_td = type { %struct.xhci_segment* }
%struct.xhci_segment = type { %struct.xhci_segment* }
%struct.xhci_ring = type { %struct.xhci_segment* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_td*, %struct.xhci_ring*)* @td_on_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td_on_ring(%struct.xhci_td* %0, %struct.xhci_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_td*, align 8
  %5 = alloca %struct.xhci_ring*, align 8
  %6 = alloca %struct.xhci_segment*, align 8
  store %struct.xhci_td* %0, %struct.xhci_td** %4, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %5, align 8
  %7 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %8 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %7, i32 0, i32 0
  %9 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  store %struct.xhci_segment* %9, %struct.xhci_segment** %6, align 8
  %10 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %11 = icmp ne %struct.xhci_td* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %14 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %13, i32 0, i32 0
  %15 = load %struct.xhci_segment*, %struct.xhci_segment** %14, align 8
  %16 = icmp ne %struct.xhci_segment* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %42

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %39, %18
  %20 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %21 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %22 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %21, i32 0, i32 0
  %23 = load %struct.xhci_segment*, %struct.xhci_segment** %22, align 8
  %24 = icmp eq %struct.xhci_segment* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %42

26:                                               ; preds = %19
  %27 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %28 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %27, i32 0, i32 0
  %29 = load %struct.xhci_segment*, %struct.xhci_segment** %28, align 8
  store %struct.xhci_segment* %29, %struct.xhci_segment** %6, align 8
  br label %30

30:                                               ; preds = %26
  %31 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %32 = icmp ne %struct.xhci_segment* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %35 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %36 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %35, i32 0, i32 0
  %37 = load %struct.xhci_segment*, %struct.xhci_segment** %36, align 8
  %38 = icmp ne %struct.xhci_segment* %34, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  br i1 %40, label %19, label %41

41:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %25, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
