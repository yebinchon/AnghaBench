; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_disable_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_disable_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.rtl_ps_ctl = type { i32, i32 }
%struct.rtl_pci = type { i32 }

@PCI_BRIDGE_VENDOR_UNKNOWN = common dso_local global i64 0, align 8
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PCI(Bridge) UNKNOWN\0A\00", align 1
@RT_RF_OFF_LEVL_CLK_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl_pci_disable_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_pci_disable_aspm(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci_priv*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %3, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %15)
  store %struct.rtl_pci_priv* %16, %struct.rtl_pci_priv** %4, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %18)
  store %struct.rtl_ps_ctl* %19, %struct.rtl_ps_ctl** %5, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv* %21)
  store %struct.rtl_pci* %22, %struct.rtl_pci** %6, align 8
  %23 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %4, align 8
  %28 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %39 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %1
  br label %98

44:                                               ; preds = %1
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @PCI_BRIDGE_VENDOR_UNKNOWN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i32, i32* @COMP_POWER, align 4
  %51 = load i32, i32* @DBG_TRACE, align 4
  %52 = call i32 @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %98

53:                                               ; preds = %44
  %54 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RT_RF_OFF_LEVL_CLK_REQ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %62 = load i32, i32* @RT_RF_OFF_LEVL_CLK_REQ, align 4
  %63 = call i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl* %61, i32 %62)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @_rtl_pci_switch_clk_req(%struct.ieee80211_hw* %64, i32 0)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %68 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pci_read_config_byte(i32 %69, i32 128, i64* %12)
  %71 = call i64 @BIT(i32 0)
  %72 = call i64 @BIT(i32 1)
  %73 = or i64 %71, %72
  %74 = load i64, i64* %11, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = xor i64 %76, -1
  %78 = load i64, i64* %9, align 8
  %79 = and i64 %78, %77
  store i64 %79, i64* %9, align 8
  %80 = call i64 @BIT(i32 0)
  %81 = call i64 @BIT(i32 1)
  %82 = or i64 %80, %81
  %83 = xor i64 %82, -1
  %84 = load i64, i64* %10, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %10, align 8
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @_rtl_pci_platform_switch_device_pci_aspm(%struct.ieee80211_hw* %86, i64 %87)
  %89 = call i32 @udelay(i32 50)
  %90 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %91 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %8, align 8
  %94 = shl i64 %93, 2
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @pci_write_config_byte(i32 %92, i64 %94, i64 %95)
  %97 = call i32 @udelay(i32 50)
  br label %98

98:                                               ; preds = %66, %48, %43
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @_rtl_pci_switch_clk_req(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i64*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @_rtl_pci_platform_switch_device_pci_aspm(%struct.ieee80211_hw*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
