; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk.c_xhci_mtk_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk.c_xhci_mtk_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xhci_hcd = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.xhci_hcd_mtk = type { i64 }

@XHCI_PLAT = common dso_local global i32 0, align 4
@XHCI_MTK_HOST = common dso_local global i32 0, align 4
@XHCI_SPURIOUS_SUCCESS = common dso_local global i32 0, align 4
@XHCI_LPM_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.xhci_hcd*)* @xhci_mtk_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_mtk_quirks(%struct.device* %0, %struct.xhci_hcd* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.xhci_hcd_mtk*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.xhci_hcd* %1, %struct.xhci_hcd** %4, align 8
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %8 = call %struct.usb_hcd* @xhci_to_hcd(%struct.xhci_hcd* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %5, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %10 = call %struct.xhci_hcd_mtk* @hcd_to_mtk(%struct.usb_hcd* %9)
  store %struct.xhci_hcd_mtk* %10, %struct.xhci_hcd_mtk** %6, align 8
  %11 = load i32, i32* @XHCI_PLAT, align 4
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @XHCI_MTK_HOST, align 4
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @XHCI_SPURIOUS_SUCCESS, align 4
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %27 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @XHCI_LPM_SUPPORT, align 4
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %33 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %2
  ret void
}

declare dso_local %struct.usb_hcd* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local %struct.xhci_hcd_mtk* @hcd_to_mtk(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
