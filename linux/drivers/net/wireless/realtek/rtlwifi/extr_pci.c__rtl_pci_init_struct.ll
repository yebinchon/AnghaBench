; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.pci_dev = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rtl_mac = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.rtl_pci = type { i32, i32, i32, %struct.pci_dev* }
%struct.rtl_hal = type { %struct.ieee80211_hw* }

@EACMWAY2_SW = common dso_local global i32 0, align 4
@_rtl_pci_irq_tasklet = common dso_local global i64 0, align 8
@_rtl_pci_prepare_bcn_tasklet = common dso_local global i64 0, align 8
@rtl_lps_change_work_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.pci_dev*)* @_rtl_pci_init_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_init_struct(%struct.ieee80211_hw* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca %struct.rtl_pci*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_pci* @rtl_pcidev(i32 %15)
  store %struct.rtl_pci* %16, %struct.rtl_pci** %7, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %18)
  store %struct.rtl_hal* %19, %struct.rtl_hal** %8, align 8
  %20 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %21 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %23 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  store %struct.ieee80211_hw* %24, %struct.ieee80211_hw** %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %29 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %28, i32 0, i32 3
  store %struct.pci_dev* %27, %struct.pci_dev** %29, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = call i32 @_rtl_pci_init_trx_var(%struct.ieee80211_hw* %30)
  %32 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %33 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %32, i32 0, i32 0
  store i32 100, i32* %33, align 8
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %37 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %39 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %38, i32 0, i32 1
  store i32 7, i32* %39, align 4
  %40 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %40, i32 0, i32 2
  store i32 3, i32* %41, align 8
  %42 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %43 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %42, i32 0, i32 3
  store i32 7, i32* %43, align 4
  %44 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %45 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %44, i32 0, i32 4
  store i32 7, i32* %45, align 8
  %46 = load i32, i32* @EACMWAY2_SW, align 4
  %47 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %48 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* @_rtl_pci_irq_tasklet, align 8
  %53 = inttoptr i64 %52 to void (i64)*
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %55 = ptrtoint %struct.ieee80211_hw* %54 to i64
  %56 = call i32 @tasklet_init(i32* %51, void (i64)* %53, i64 %55)
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %58 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* @_rtl_pci_prepare_bcn_tasklet, align 8
  %61 = inttoptr i64 %60 to void (i64)*
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = ptrtoint %struct.ieee80211_hw* %62 to i64
  %64 = call i32 @tasklet_init(i32* %59, void (i64)* %61, i64 %63)
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %66 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* @rtl_lps_change_work_callback, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl_pci_init_trx_var(%struct.ieee80211_hw*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
