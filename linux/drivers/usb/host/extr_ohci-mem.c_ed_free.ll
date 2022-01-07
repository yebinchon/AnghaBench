; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-mem.c_ed_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-mem.c_ed_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32 }
%struct.ed = type { i32 }
%struct.usb_hcd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*, %struct.ed*)* @ed_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ed_free(%struct.ohci_hcd* %0, %struct.ed* %1) #0 {
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca %struct.ed*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  store %struct.ed* %1, %struct.ed** %4, align 8
  %6 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %7 = call %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %5, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ed*, %struct.ed** %4, align 8
  %17 = ptrtoint %struct.ed* %16 to i64
  %18 = call i32 @gen_pool_free(i64 %15, i64 %17, i32 4)
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ed*, %struct.ed** %4, align 8
  %24 = load %struct.ed*, %struct.ed** %4, align 8
  %25 = getelementptr inbounds %struct.ed, %struct.ed* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_pool_free(i32 %22, %struct.ed* %23, i32 %26)
  br label %28

28:                                               ; preds = %19, %12
  ret void
}

declare dso_local %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local i32 @gen_pool_free(i64, i64, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ed*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
