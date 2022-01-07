; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_disactivate_etd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_disactivate_etd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx21 = type { i64, %struct.etd_priv* }
%struct.etd_priv = type { i64 }

@USBH_ETDENCLR = common dso_local global i64 0, align 8
@USBH_ETDDONEEN = common dso_local global i32 0, align 4
@USB_ETDDMACHANLCLR = common dso_local global i64 0, align 8
@USBH_ETDDONESTAT = common dso_local global i32 0, align 4
@disactivated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx21*, i32)* @disactivate_etd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disactivate_etd(%struct.imx21* %0, i32 %1) #0 {
  %3 = alloca %struct.imx21*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.etd_priv*, align 8
  store %struct.imx21* %0, %struct.imx21** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 1, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.imx21*, %struct.imx21** %3, align 8
  %10 = getelementptr inbounds %struct.imx21, %struct.imx21* %9, i32 0, i32 1
  %11 = load %struct.etd_priv*, %struct.etd_priv** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %11, i64 %13
  store %struct.etd_priv* %14, %struct.etd_priv** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.imx21*, %struct.imx21** %3, align 8
  %17 = getelementptr inbounds %struct.imx21, %struct.imx21* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @USBH_ETDENCLR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.imx21*, %struct.imx21** %3, align 8
  %23 = load i32, i32* @USBH_ETDDONEEN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @clear_register_bits(%struct.imx21* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.imx21*, %struct.imx21** %3, align 8
  %28 = getelementptr inbounds %struct.imx21, %struct.imx21* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USB_ETDDMACHANLCLR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.imx21*, %struct.imx21** %3, align 8
  %34 = load i32, i32* @USBH_ETDDONESTAT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @clear_toggle_bit(%struct.imx21* %33, i32 %34, i32 %35)
  %37 = load %struct.etd_priv*, %struct.etd_priv** %6, align 8
  %38 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.imx21*, %struct.imx21** %3, align 8
  %40 = load %struct.etd_priv*, %struct.etd_priv** %6, align 8
  %41 = load i32, i32* @disactivated, align 4
  %42 = call i32 @DEBUG_LOG_FRAME(%struct.imx21* %39, %struct.etd_priv* %40, i32 %41)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clear_register_bits(%struct.imx21*, i32, i32) #1

declare dso_local i32 @clear_toggle_bit(%struct.imx21*, i32, i32) #1

declare dso_local i32 @DEBUG_LOG_FRAME(%struct.imx21*, %struct.etd_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
