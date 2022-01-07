; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pxa27x.c_pxa27x_stop_hc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pxa27x.c_pxa27x_stop_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_ohci = type { i32, i64 }
%struct.device = type { i32 }
%struct.pxaohci_platform_data = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque
%struct.usb_hcd = type { i32 }

@UHCCOMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa27x_ohci*, %struct.device*)* @pxa27x_stop_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa27x_stop_hc(%struct.pxa27x_ohci* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.pxa27x_ohci*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pxaohci_platform_data*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca i32, align 4
  store %struct.pxa27x_ohci* %0, %struct.pxa27x_ohci** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.usb_hcd* @dev_get_drvdata(%struct.device* %8)
  store %struct.usb_hcd* %9, %struct.usb_hcd** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pxaohci_platform_data* @dev_get_platdata(%struct.device* %10)
  store %struct.pxaohci_platform_data* %11, %struct.pxaohci_platform_data** %5, align 8
  %12 = call i64 (...) @cpu_is_pxa3xx()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 0
  %17 = call i32 @pxa3xx_u2d_stop_hc(i32* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.pxaohci_platform_data*, %struct.pxaohci_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.pxaohci_platform_data, %struct.pxaohci_platform_data* %19, i32 0, i32 0
  %21 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %20, align 8
  %22 = icmp ne i32 (%struct.device.0*)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.pxaohci_platform_data*, %struct.pxaohci_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.pxaohci_platform_data, %struct.pxaohci_platform_data* %24, i32 0, i32 0
  %26 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %25, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = bitcast %struct.device* %27 to %struct.device.0*
  %29 = call i32 %26(%struct.device.0* %28)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %3, align 8
  %32 = call i32 @pxa27x_reset_hc(%struct.pxa27x_ohci* %31)
  %33 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %3, align 8
  %34 = getelementptr inbounds %struct.pxa27x_ohci, %struct.pxa27x_ohci* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UHCCOMS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @__raw_readl(i64 %37)
  %39 = or i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %3, align 8
  %42 = getelementptr inbounds %struct.pxa27x_ohci, %struct.pxa27x_ohci* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UHCCOMS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @__raw_writel(i32 %40, i64 %45)
  %47 = call i32 @udelay(i32 10)
  %48 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %3, align 8
  %49 = getelementptr inbounds %struct.pxa27x_ohci, %struct.pxa27x_ohci* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @clk_disable_unprepare(i32 %50)
  ret void
}

declare dso_local %struct.usb_hcd* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.pxaohci_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i64 @cpu_is_pxa3xx(...) #1

declare dso_local i32 @pxa3xx_u2d_stop_hc(i32*) #1

declare dso_local i32 @pxa27x_reset_hc(%struct.pxa27x_ohci*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
