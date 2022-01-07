; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_io_handler_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_io_handler_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, %struct.device* }

@pci_write8_async = common dso_local global i32 0, align 4
@pci_write16_async = common dso_local global i32 0, align 4
@pci_write32_async = common dso_local global i32 0, align 4
@pci_read8_sync = common dso_local global i32 0, align 4
@pci_read16_sync = common dso_local global i32 0, align 4
@pci_read32_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ieee80211_hw*)* @_rtl_pci_io_handler_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_io_handler_init(%struct.device* %0, %struct.ieee80211_hw* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  store %struct.device* %8, %struct.device** %11, align 8
  %12 = load i32, i32* @pci_write8_async, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @pci_write16_async, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @pci_write32_async, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @pci_read8_sync, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @pci_read16_sync, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @pci_read32_sync, align 4
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
