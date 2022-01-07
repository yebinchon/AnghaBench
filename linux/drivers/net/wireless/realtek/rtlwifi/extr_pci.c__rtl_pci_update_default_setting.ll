; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_update_default_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_update_default_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rtl_pci_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rtl_ps_ctl = type { i32, i32, i32, i32 }
%struct.rtl_pci = type { i32, i32, i32, i32, i32 }

@RT_RF_LPS_LEVEL_ASPM = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_CLK_REQ = common dso_local global i32 0, align 4
@RT_RF_PS_LEVEL_ALWAYS_ASPM = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_ASPM = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_PCI_D3 = common dso_local global i32 0, align 4
@PCI_BRIDGE_VENDOR_INTEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@HARDWARE_TYPE_RTL8192SE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl_pci_update_default_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_update_default_setting(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci_priv*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %11)
  store %struct.rtl_pci_priv* %12, %struct.rtl_pci_priv** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %14)
  store %struct.rtl_ps_ctl* %15, %struct.rtl_ps_ctl** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv* %17)
  store %struct.rtl_pci* %18, %struct.rtl_pci** %6, align 8
  %19 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %24 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %26 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %28 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %31 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %33 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %78 [
    i32 0, label %35
    i32 1, label %36
    i32 2, label %42
    i32 3, label %50
    i32 4, label %64
  ]

35:                                               ; preds = %1
  br label %78

36:                                               ; preds = %1
  %37 = load i32, i32* @RT_RF_LPS_LEVEL_ASPM, align 4
  %38 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %39 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %78

42:                                               ; preds = %1
  %43 = load i32, i32* @RT_RF_LPS_LEVEL_ASPM, align 4
  %44 = load i32, i32* @RT_RF_OFF_LEVL_CLK_REQ, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %78

50:                                               ; preds = %1
  %51 = load i32, i32* @RT_RF_LPS_LEVEL_ASPM, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %54 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @RT_RF_PS_LEVEL_ALWAYS_ASPM, align 4
  %58 = load i32, i32* @RT_RF_OFF_LEVL_CLK_REQ, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %61 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %78

64:                                               ; preds = %1
  %65 = load i32, i32* @RT_RF_LPS_LEVEL_ASPM, align 4
  %66 = load i32, i32* @RT_RF_OFF_LEVL_CLK_REQ, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %70 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @RT_RF_PS_LEVEL_ALWAYS_ASPM, align 4
  %74 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %75 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %1, %64, %50, %42, %36, %35
  %79 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %80 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %81 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %85 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %126 [
    i32 1, label %87
    i32 2, label %101
    i32 3, label %120
  ]

87:                                               ; preds = %78
  %88 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %89 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RT_RF_LPS_LEVEL_ASPM, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %96 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %97 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %87
  br label %126

101:                                              ; preds = %78
  %102 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %103 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RT_RF_LPS_LEVEL_ASPM, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %110 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %111 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %101
  %115 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %116 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %117 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %126

120:                                              ; preds = %78
  %121 = load i32, i32* @RT_RF_OFF_LEVL_PCI_D3, align 4
  %122 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %123 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %78, %120, %114, %100
  %127 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %128 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %146 [
    i32 0, label %130
    i32 1, label %133
    i32 2, label %138
  ]

130:                                              ; preds = %126
  %131 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %132 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  br label %151

133:                                              ; preds = %126
  %134 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %135 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %137 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %136, i32 0, i32 2
  store i32 1, i32* %137, align 4
  br label %151

138:                                              ; preds = %126
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @PCI_BRIDGE_VENDOR_INTEL, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %144 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %138
  br label %151

146:                                              ; preds = %126
  %147 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %148 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %145, %133, %130
  %152 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %153 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @pci_read_config_byte(i32 %154, i32 128, i32* %8)
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @HARDWARE_TYPE_RTL8192SE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %151
  %163 = load i32, i32* %8, align 4
  %164 = icmp eq i32 %163, 67
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %167 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %162, %151
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
