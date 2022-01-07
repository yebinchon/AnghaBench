; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_ring_dump_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_ring_dump_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.xhci_segment = type { i64, %union.xhci_trb* }
%union.xhci_trb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%pad: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.xhci_segment*)* @xhci_ring_dump_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_ring_dump_segment(%struct.seq_file* %0, %struct.xhci_segment* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.xhci_segment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %union.xhci_trb*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.xhci_segment* %1, %struct.xhci_segment** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %57, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %14 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %13, i32 0, i32 1
  %15 = load %union.xhci_trb*, %union.xhci_trb** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %15, i64 %17
  store %union.xhci_trb* %18, %union.xhci_trb** %7, align 8
  %19 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %20 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %6, align 8
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %28 = bitcast %union.xhci_trb* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %35 = bitcast %union.xhci_trb* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %42 = bitcast %union.xhci_trb* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %49 = bitcast %union.xhci_trb* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = call i32 @xhci_decode_trb(i32 %33, i32 %40, i32 %47, i32 %54)
  %56 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %6, i32 %55)
  br label %57

57:                                               ; preds = %12
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %8

60:                                               ; preds = %8
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64*, i32) #1

declare dso_local i32 @xhci_decode_trb(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
