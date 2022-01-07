; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_intr_mode_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_intr_mode_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci_priv = type { i32 }
%struct.rtl_pci = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@_rtl_pci_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@COMP_INTR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Pin-based Interrupt Mode!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl_pci_intr_mode_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_pci_intr_mode_legacy(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_pci_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %10)
  store %struct.rtl_pci_priv* %11, %struct.rtl_pci_priv** %5, align 8
  %12 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %5, align 8
  %13 = call %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv* %12)
  store %struct.rtl_pci* %13, %struct.rtl_pci** %6, align 8
  %14 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IRQF_SHARED, align 4
  %20 = load i32, i32* @KBUILD_MODNAME, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call i32 @request_irq(i32 %18, i32* @_rtl_pci_interrupt, i32 %19, i32 %20, %struct.ieee80211_hw* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %29 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load i32, i32* @COMP_INIT, align 4
  %32 = load i32, i32* @COMP_INTR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DBG_DMESG, align 4
  %35 = call i32 @RT_TRACE(%struct.rtl_priv* %30, i32 %33, i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
