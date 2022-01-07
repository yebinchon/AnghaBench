; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_erp_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_erp_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i64, i64 }
%struct.wl12xx_vif = type { i32 }

@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@SLOT_TIME_SHORT = common dso_local global i32 0, align 4
@SLOT_TIME_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Set slot time failed %d\00", align 1
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@ACX_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@ACX_PREAMBLE_LONG = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@CTSPROTECT_ENABLE = common dso_local global i32 0, align 4
@CTSPROTECT_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Set ctsprotect failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1271_bss_erp_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_bss_erp_info_changed(%struct.wl1271* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl12xx_vif*, align 8
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %11)
  store %struct.wl12xx_vif* %12, %struct.wl12xx_vif** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %25 = load i32, i32* @SLOT_TIME_SHORT, align 4
  %26 = call i32 @wl1271_acx_slot(%struct.wl1271* %23, %struct.wl12xx_vif* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %29 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %30 = load i32, i32* @SLOT_TIME_LONG, align 4
  %31 = call i32 @wl1271_acx_slot(%struct.wl1271* %28, %struct.wl12xx_vif* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @wl1271_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %88

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %51 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %52 = load i32, i32* @ACX_PREAMBLE_SHORT, align 4
  %53 = call i32 @wl1271_acx_set_preamble(%struct.wl1271* %50, %struct.wl12xx_vif* %51, i32 %52)
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %56 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %57 = load i32, i32* @ACX_PREAMBLE_LONG, align 4
  %58 = call i32 @wl1271_acx_set_preamble(%struct.wl1271* %55, %struct.wl12xx_vif* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %72 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %73 = load i32, i32* @CTSPROTECT_ENABLE, align 4
  %74 = call i32 @wl1271_acx_cts_protect(%struct.wl1271* %71, %struct.wl12xx_vif* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %80

75:                                               ; preds = %65
  %76 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %77 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %78 = load i32, i32* @CTSPROTECT_DISABLE, align 4
  %79 = call i32 @wl1271_acx_cts_protect(%struct.wl1271* %76, %struct.wl12xx_vif* %77, i32 %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @wl1271_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %88

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87, %83, %35
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_acx_slot(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @wl1271_acx_set_preamble(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_acx_cts_protect(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
