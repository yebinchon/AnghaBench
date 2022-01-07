; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_ring_trb_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_ring_trb_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.xhci_ring = type { i32, %struct.xhci_segment* }
%struct.xhci_segment = type { %struct.xhci_segment* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @xhci_ring_trb_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_ring_trb_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_ring*, align 8
  %7 = alloca %struct.xhci_segment*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.xhci_ring**
  %12 = load %struct.xhci_ring*, %struct.xhci_ring** %11, align 8
  store %struct.xhci_ring* %12, %struct.xhci_ring** %6, align 8
  %13 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %14 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %13, i32 0, i32 1
  %15 = load %struct.xhci_segment*, %struct.xhci_segment** %14, align 8
  store %struct.xhci_segment* %15, %struct.xhci_segment** %7, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %29, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %19 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.xhci_segment*, %struct.xhci_segment** %7, align 8
  %25 = call i32 @xhci_ring_dump_segment(%struct.seq_file* %23, %struct.xhci_segment* %24)
  %26 = load %struct.xhci_segment*, %struct.xhci_segment** %7, align 8
  %27 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %26, i32 0, i32 0
  %28 = load %struct.xhci_segment*, %struct.xhci_segment** %27, align 8
  store %struct.xhci_segment* %28, %struct.xhci_segment** %7, align 8
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %16

32:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @xhci_ring_dump_segment(%struct.seq_file*, %struct.xhci_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
