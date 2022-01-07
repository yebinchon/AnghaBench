; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__*, %struct.rtl_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.rtl_phy = type { i32, i8**, i32 }
%struct.rtl_hal = type { i32, i32, i64, i32 }
%struct.rtl_mac = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@HARDWARE_TYPE_RTL8192CU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"init mac failed!\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", align 1
@RF_OP_BY_SW_3WIRE = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_RX_G1 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@RF_RX_G2 = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@ERFON = common dso_local global i64 0, align 8
@HW_VAR_ETHER_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92cu_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %4, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %16)
  store %struct.rtl_mac* %17, %struct.rtl_mac** %5, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 1
  store %struct.rtl_phy* %19, %struct.rtl_phy** %6, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %21)
  store %struct.rtl_ps_ctl* %22, %struct.rtl_ps_ctl** %7, align 8
  store i32 0, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @local_save_flags(i64 %23)
  %25 = call i32 (...) @local_irq_enable()
  %26 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* @HARDWARE_TYPE_RTL8192CU, align 4
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = call i32 @_rtl92cu_init_mac(%struct.ieee80211_hw* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %156

37:                                               ; preds = %1
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = call i32 @rtl92c_download_fw(%struct.ieee80211_hw* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = load i32, i32* @COMP_ERR, align 4
  %45 = load i32, i32* @DBG_WARNING, align 4
  %46 = call i32 @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %156

47:                                               ; preds = %37
  %48 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %51 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %53 = call i32 @_rtl92cu_phy_param_tab_init(%struct.ieee80211_hw* %52)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = call i32 @rtl92cu_phy_mac_config(%struct.ieee80211_hw* %54)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = call i32 @rtl92cu_phy_bb_config(%struct.ieee80211_hw* %56)
  %58 = load i32, i32* @RF_OP_BY_SW_3WIRE, align 4
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %62 = call i32 @rtl92c_phy_rf_config(%struct.ieee80211_hw* %61)
  %63 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %64 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IS_VENDOR_UMC_A_CUT(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %47
  %69 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %70 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @IS_92C_SERIAL(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %68
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %76 = load i32, i32* @RF90_PATH_A, align 4
  %77 = load i32, i32* @RF_RX_G1, align 4
  %78 = load i32, i32* @MASKDWORD, align 4
  %79 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %75, i32 %76, i32 %77, i32 %78, i32 197205)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load i32, i32* @RF90_PATH_A, align 4
  %82 = load i32, i32* @RF_RX_G2, align 4
  %83 = load i32, i32* @MASKDWORD, align 4
  %84 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %80, i32 %81, i32 %82, i32 %83, i32 330240)
  br label %85

85:                                               ; preds = %74, %68, %47
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = load i32, i32* @RF_CHNLBW, align 4
  %88 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %89 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %86, i32 0, i32 %87, i32 %88)
  %90 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %91 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %89, i8** %93, align 8
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = load i32, i32* @RF_CHNLBW, align 4
  %96 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %97 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %94, i32 1, i32 %95, i32 %96)
  %98 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %99 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  store i8* %97, i8** %101, align 8
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %103 = call i32 @rtl92cu_bb_block_on(%struct.ieee80211_hw* %102)
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = call i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw* %104)
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %107 = call i32 @rtl92cu_enable_hw_security_config(%struct.ieee80211_hw* %106)
  %108 = load i64, i64* @ERFON, align 8
  %109 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %110 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %112 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %116, align 8
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %119 = load i32, i32* @HW_VAR_ETHER_ADDR, align 4
  %120 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %121 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %117(%struct.ieee80211_hw* %118, i32 %119, i32 %122)
  %124 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %125 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ERFON, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %85
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = call i32 @rtl92c_phy_set_rfpath_switch(%struct.ieee80211_hw* %130, i32 1)
  %132 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %133 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %138 = call i32 @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw* %137, i32 1)
  br label %144

139:                                              ; preds = %129
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = call i32 @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw* %140, i32 0)
  %142 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %143 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %136
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %146 = call i32 @rtl92c_dm_check_txpower_tracking(%struct.ieee80211_hw* %145)
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %148 = call i32 @rtl92c_phy_lc_calibrate(%struct.ieee80211_hw* %147)
  br label %149

149:                                              ; preds = %144, %85
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %151 = call i32 @_rtl92cu_hw_configure(%struct.ieee80211_hw* %150)
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %153 = call i32 @_initpabias(%struct.ieee80211_hw* %152)
  %154 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %155 = call i32 @rtl92c_dm_init(%struct.ieee80211_hw* %154)
  br label %156

156:                                              ; preds = %149, %42, %35
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @local_irq_restore(i64 %157)
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @_rtl92cu_init_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rtl92c_download_fw(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @_rtl92cu_phy_param_tab_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92cu_phy_mac_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92cu_phy_bb_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_phy_rf_config(%struct.ieee80211_hw*) #1

declare dso_local i64 @IS_VENDOR_UMC_A_CUT(i32) #1

declare dso_local i32 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i8* @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92cu_bb_block_on(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92cu_enable_hw_security_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_phy_set_rfpath_switch(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92c_dm_check_txpower_tracking(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_phy_lc_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92cu_hw_configure(%struct.ieee80211_hw*) #1

declare dso_local i32 @_initpabias(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
