; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sh.c_ehci_hcd_sh_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sh.c_ehci_hcd_sh_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ehci_sh_priv = type { %struct.usb_hcd* }
%struct.usb_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usb_hcd*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @ehci_hcd_sh_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_hcd_sh_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ehci_sh_priv*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ehci_sh_priv* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ehci_sh_priv* %6, %struct.ehci_sh_priv** %3, align 8
  %7 = load %struct.ehci_sh_priv*, %struct.ehci_sh_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ehci_sh_priv, %struct.ehci_sh_priv* %7, i32 0, i32 0
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  store %struct.usb_hcd* %9, %struct.usb_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %13, align 8
  %15 = icmp ne i32 (%struct.usb_hcd*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %20, align 8
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %23 = call i32 %21(%struct.usb_hcd* %22)
  br label %24

24:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.ehci_sh_priv* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
