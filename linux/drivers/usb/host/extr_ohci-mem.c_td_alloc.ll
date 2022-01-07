; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-mem.c_td_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-mem.c_td_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td = type { i32, i32 }
%struct.ohci_hcd = type { i32 }
%struct.usb_hcd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.td* (%struct.ohci_hcd*, i32)* @td_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.td* @td_alloc(%struct.ohci_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.td*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %9 = call %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd* %8)
  store %struct.usb_hcd* %9, %struct.usb_hcd** %7, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.td* @gen_pool_dma_zalloc_align(i64 %17, i32 8, i32* %5, i32 32)
  store %struct.td* %18, %struct.td** %6, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.td* @dma_pool_zalloc(i32 %22, i32 %23, i32* %5)
  store %struct.td* %24, %struct.td** %6, align 8
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.td*, %struct.td** %6, align 8
  %27 = icmp ne %struct.td* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @cpu_to_hc32(%struct.ohci_hcd* %29, i32 %30)
  %32 = load %struct.td*, %struct.td** %6, align 8
  %33 = getelementptr inbounds %struct.td, %struct.td* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.td*, %struct.td** %6, align 8
  %36 = getelementptr inbounds %struct.td, %struct.td* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load %struct.td*, %struct.td** %6, align 8
  ret %struct.td* %38
}

declare dso_local %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local %struct.td* @gen_pool_dma_zalloc_align(i64, i32, i32*, i32) #1

declare dso_local %struct.td* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @cpu_to_hc32(%struct.ohci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
