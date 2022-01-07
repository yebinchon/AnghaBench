; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_3__, i32, %struct.mlme_priv }
%struct.TYPE_3__ = type { i64 }
%struct.mlme_priv = type { i32, i32, %struct.TYPE_4__, %struct.wlan_network }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wlan_network = type { i32 }
%struct.ndis_802_11_ssid = type { i32, i32 }

@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_set_802_11_ssid(%struct._adapter* %0, %struct.ndis_802_11_ssid* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.ndis_802_11_ssid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.wlan_network*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.ndis_802_11_ssid* %1, %struct.ndis_802_11_ssid** %4, align 8
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 2
  store %struct.mlme_priv* %9, %struct.mlme_priv** %6, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 3
  store %struct.wlan_network* %11, %struct.wlan_network** %7, align 8
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %151

17:                                               ; preds = %2
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %23 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %24 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @check_fwstate(%struct.mlme_priv* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %30 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %31 = call i64 @check_fwstate(%struct.mlme_priv* %29, i32 %30)
  br label %145

32:                                               ; preds = %17
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %34 = load i32, i32* @_FW_LINKED, align 4
  %35 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @check_fwstate(%struct.mlme_priv* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %124

39:                                               ; preds = %32
  %40 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %4, align 8
  %45 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %98

48:                                               ; preds = %39
  %49 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %50 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %4, align 8
  %53 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %4, align 8
  %56 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcmp(i32* %51, i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %98, label %60

60:                                               ; preds = %48
  %61 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %62 = load i32, i32* @WIFI_STATION_STATE, align 4
  %63 = call i64 @check_fwstate(%struct.mlme_priv* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %60
  %66 = load %struct._adapter*, %struct._adapter** %3, align 8
  %67 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %68 = call i32 @r8712_is_same_ibss(%struct._adapter* %66, %struct.wlan_network* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %95, label %70

70:                                               ; preds = %65
  %71 = load %struct._adapter*, %struct._adapter** %3, align 8
  %72 = call i32 @r8712_disassoc_cmd(%struct._adapter* %71)
  %73 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %74 = load i32, i32* @_FW_LINKED, align 4
  %75 = call i64 @check_fwstate(%struct.mlme_priv* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct._adapter*, %struct._adapter** %3, align 8
  %79 = call i32 @r8712_ind_disconnect(%struct._adapter* %78)
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct._adapter*, %struct._adapter** %3, align 8
  %82 = call i32 @r8712_free_assoc_resources(%struct._adapter* %81)
  %83 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %84 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %85 = call i64 @check_fwstate(%struct.mlme_priv* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %89 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %90 = call i32 @_clr_fwstate_(%struct.mlme_priv* %88, i32 %89)
  %91 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %92 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %93 = call i32 @set_fwstate(%struct.mlme_priv* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %80
  br label %96

95:                                               ; preds = %65
  br label %145

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %60
  br label %123

98:                                               ; preds = %48, %39
  %99 = load %struct._adapter*, %struct._adapter** %3, align 8
  %100 = call i32 @r8712_disassoc_cmd(%struct._adapter* %99)
  %101 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %102 = load i32, i32* @_FW_LINKED, align 4
  %103 = call i64 @check_fwstate(%struct.mlme_priv* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct._adapter*, %struct._adapter** %3, align 8
  %107 = call i32 @r8712_ind_disconnect(%struct._adapter* %106)
  br label %108

108:                                              ; preds = %105, %98
  %109 = load %struct._adapter*, %struct._adapter** %3, align 8
  %110 = call i32 @r8712_free_assoc_resources(%struct._adapter* %109)
  %111 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %112 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %113 = call i64 @check_fwstate(%struct.mlme_priv* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %117 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %118 = call i32 @_clr_fwstate_(%struct.mlme_priv* %116, i32 %117)
  %119 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %120 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %121 = call i32 @set_fwstate(%struct.mlme_priv* %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %108
  br label %123

123:                                              ; preds = %122, %97
  br label %124

124:                                              ; preds = %123, %32
  %125 = load %struct._adapter*, %struct._adapter** %3, align 8
  %126 = getelementptr inbounds %struct._adapter, %struct._adapter* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %145

131:                                              ; preds = %124
  %132 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %4, align 8
  %133 = call i32 @validate_ssid(%struct.ndis_802_11_ssid* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  br label %145

136:                                              ; preds = %131
  %137 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %138 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %137, i32 0, i32 2
  %139 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %4, align 8
  %140 = call i32 @memcpy(%struct.TYPE_4__* %138, %struct.ndis_802_11_ssid* %139, i32 8)
  %141 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %142 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %141, i32 0, i32 0
  store i32 0, i32* %142, align 4
  %143 = load %struct._adapter*, %struct._adapter** %3, align 8
  %144 = call i32 @do_join(%struct._adapter* %143)
  br label %146

145:                                              ; preds = %135, %130, %95, %28
  br label %146

146:                                              ; preds = %145, %136
  %147 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %148 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %147, i32 0, i32 1
  %149 = load i64, i64* %5, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  br label %151

151:                                              ; preds = %146, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @r8712_is_same_ibss(%struct._adapter*, %struct.wlan_network*) #1

declare dso_local i32 @r8712_disassoc_cmd(%struct._adapter*) #1

declare dso_local i32 @r8712_ind_disconnect(%struct._adapter*) #1

declare dso_local i32 @r8712_free_assoc_resources(%struct._adapter*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @validate_ssid(%struct.ndis_802_11_ssid*) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.ndis_802_11_ssid*, i32) #1

declare dso_local i32 @do_join(%struct._adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
