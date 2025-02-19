; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-rcar.c_xhci_rcar_start_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-rcar.c_xhci_rcar_start_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64 }

@RCAR_USB3_LCLK_ENA_VAL = common dso_local global i32 0, align 4
@RCAR_USB3_LCLK = common dso_local global i64 0, align 8
@RCAR_USB3_CONF1_VAL = common dso_local global i32 0, align 4
@RCAR_USB3_CONF1 = common dso_local global i64 0, align 8
@RCAR_USB3_CONF2_VAL = common dso_local global i32 0, align 4
@RCAR_USB3_CONF2 = common dso_local global i64 0, align 8
@RCAR_USB3_CONF3_VAL = common dso_local global i32 0, align 4
@RCAR_USB3_CONF3 = common dso_local global i64 0, align 8
@RCAR_USB3_RX_POL_VAL = common dso_local global i32 0, align 4
@RCAR_USB3_RX_POL = common dso_local global i64 0, align 8
@RCAR_USB3_TX_POL_VAL = common dso_local global i32 0, align 4
@RCAR_USB3_TX_POL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @xhci_rcar_start_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_rcar_start_gen2(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %3 = load i32, i32* @RCAR_USB3_LCLK_ENA_VAL, align 4
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RCAR_USB3_LCLK, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 %3, i64 %8)
  %10 = load i32, i32* @RCAR_USB3_CONF1_VAL, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RCAR_USB3_CONF1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load i32, i32* @RCAR_USB3_CONF2_VAL, align 4
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RCAR_USB3_CONF2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load i32, i32* @RCAR_USB3_CONF3_VAL, align 4
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RCAR_USB3_CONF3, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load i32, i32* @RCAR_USB3_RX_POL_VAL, align 4
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %33 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RCAR_USB3_RX_POL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load i32, i32* @RCAR_USB3_TX_POL_VAL, align 4
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %40 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RCAR_USB3_TX_POL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
