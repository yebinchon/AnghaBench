; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_initlize_variables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_initlize_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.btc_coexist = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@halbtc_read_1byte = common dso_local global i32 0, align 4
@halbtc_write_1byte = common dso_local global i32 0, align 4
@halbtc_bitmask_write_1byte = common dso_local global i32 0, align 4
@halbtc_read_2byte = common dso_local global i32 0, align 4
@halbtc_write_2byte = common dso_local global i32 0, align 4
@halbtc_read_4byte = common dso_local global i32 0, align 4
@halbtc_write_4byte = common dso_local global i32 0, align 4
@halbtc_write_local_reg_1byte = common dso_local global i32 0, align 4
@halbtc_set_bbreg = common dso_local global i32 0, align 4
@halbtc_get_bbreg = common dso_local global i32 0, align 4
@halbtc_set_rfreg = common dso_local global i32 0, align 4
@halbtc_get_rfreg = common dso_local global i32 0, align 4
@halbtc_fill_h2c_cmd = common dso_local global i32 0, align 4
@halbtc_display_dbg_msg = common dso_local global i32 0, align 4
@halbtc_get = common dso_local global i32 0, align 4
@halbtc_set = common dso_local global i32 0, align 4
@halbtc_set_bt_reg = common dso_local global i32 0, align 4
@halbtc_get_bt_reg = common dso_local global i32 0, align 4
@halbtc_get_bt_coex_supported_feature = common dso_local global i32 0, align 4
@halbtc_get_bt_coex_supported_version = common dso_local global i32 0, align 4
@halbtc_get_phydm_version = common dso_local global i32 0, align 4
@halbtc_phydm_modify_ra_pcr_threshold = common dso_local global i32 0, align 4
@halbtc_phydm_query_phy_counter = common dso_local global i32 0, align 4
@halbtc_get_ant_det_val_from_bt = common dso_local global i32 0, align 4
@halbtc_get_ble_scan_type_from_bt = common dso_local global i32 0, align 4
@halbtc_get_ble_scan_para_from_bt = common dso_local global i32 0, align 4
@halbtc_get_bt_afh_map_from_bt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exhalbtc_initlize_variables(%struct.rtl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.btc_coexist*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %3, align 8
  %5 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %6 = call %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv* %5)
  store %struct.btc_coexist* %6, %struct.btc_coexist** %4, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %8 = icmp ne %struct.btc_coexist* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

10:                                               ; preds = %1
  %11 = call i32 (...) @halbtc_dbg_init()
  %12 = load i32, i32* @halbtc_read_1byte, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 28
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @halbtc_write_1byte, align 4
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 27
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @halbtc_bitmask_write_1byte, align 4
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 26
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @halbtc_read_2byte, align 4
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %23 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %22, i32 0, i32 25
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @halbtc_write_2byte, align 4
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %26 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %25, i32 0, i32 24
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @halbtc_read_4byte, align 4
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 23
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @halbtc_write_4byte, align 4
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %32 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %31, i32 0, i32 22
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @halbtc_write_local_reg_1byte, align 4
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %35 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %34, i32 0, i32 21
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @halbtc_set_bbreg, align 4
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %38 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %37, i32 0, i32 20
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @halbtc_get_bbreg, align 4
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %41 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %40, i32 0, i32 19
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @halbtc_set_rfreg, align 4
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %44 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %43, i32 0, i32 18
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @halbtc_get_rfreg, align 4
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %47 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %46, i32 0, i32 17
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @halbtc_fill_h2c_cmd, align 4
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %50 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %49, i32 0, i32 16
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @halbtc_display_dbg_msg, align 4
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %53 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %52, i32 0, i32 15
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @halbtc_get, align 4
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %56 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %55, i32 0, i32 14
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @halbtc_set, align 4
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %59 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @halbtc_set_bt_reg, align 4
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %62 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @halbtc_get_bt_reg, align 4
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %65 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 4
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %70 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %69, i32 0, i32 10
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 5, i32* %71, align 4
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %73 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %72, i32 0, i32 10
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @halbtc_get_bt_coex_supported_feature, align 4
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %77 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @halbtc_get_bt_coex_supported_version, align 4
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %80 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @halbtc_get_phydm_version, align 4
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %83 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @halbtc_phydm_modify_ra_pcr_threshold, align 4
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %86 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @halbtc_phydm_query_phy_counter, align 4
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %89 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @halbtc_get_ant_det_val_from_bt, align 4
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %92 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @halbtc_get_ble_scan_type_from_bt, align 4
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %95 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @halbtc_get_ble_scan_para_from_bt, align 4
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %98 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @halbtc_get_bt_afh_map_from_bt, align 4
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %101 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %103 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %102, i32 0, i32 0
  %104 = call i32 @init_completion(i32* %103)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %10, %9
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv*) #1

declare dso_local i32 @halbtc_dbg_init(...) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
