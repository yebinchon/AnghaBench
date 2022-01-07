; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_ring_dequeue_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_ring_dequeue_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.xhci_ring = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @xhci_ring_dequeue_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_ring_dequeue_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_ring*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.xhci_ring**
  %11 = load %struct.xhci_ring*, %struct.xhci_ring** %10, align 8
  store %struct.xhci_ring* %11, %struct.xhci_ring** %6, align 8
  %12 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %13 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %16 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @xhci_trb_virt_to_dma(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %5)
  ret i32 0
}

declare dso_local i32 @xhci_trb_virt_to_dma(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
