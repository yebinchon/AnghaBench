; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_intr_mode_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_intr_mode_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci_priv = type { i32 }
%struct.rtl_pci = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@_rtl_pci_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@COMP_INTR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MSI Interrupt Mode!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl_pci_intr_mode_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_pci_intr_mode_msi(%struct.ieee80211_hw* %0) #0 {
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
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i32 @pci_enable_msi(%struct.TYPE_3__* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IRQF_SHARED, align 4
  %29 = load i32, i32* @KBUILD_MODNAME, align 4
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = call i32 @request_irq(i32 %27, i32* @_rtl_pci_interrupt, i32 %28, i32 %29, %struct.ieee80211_hw* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @pci_disable_msi(%struct.TYPE_3__* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %49

40:                                               ; preds = %22
  %41 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %42 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %44 = load i32, i32* @COMP_INIT, align 4
  %45 = load i32, i32* @COMP_INTR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DBG_DMESG, align 4
  %48 = call i32 @RT_TRACE(%struct.rtl_priv* %43, i32 %46, i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %40, %34, %20
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
