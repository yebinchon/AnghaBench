; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_sg_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_sg_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_bt_wlan_coex_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"acx sg cfg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RATE_INDEX_24MBPS = common dso_local global i32 0, align 4
@PTA_BT_HP_MAXTIME_DEF = common dso_local global i32 0, align 4
@PTA_WLAN_HP_MAX_TIME_DEF = common dso_local global i32 0, align 4
@PTA_SENSE_DISABLE_TIMER_DEF = common dso_local global i32 0, align 4
@PTA_PROTECTIVE_RX_TIME_DEF = common dso_local global i32 0, align 4
@PTA_PROTECTIVE_TX_TIME_DEF = common dso_local global i32 0, align 4
@PTA_PROTECTIVE_RX_TIME_FAST_DEF = common dso_local global i32 0, align 4
@PTA_PROTECTIVE_TX_TIME_FAST_DEF = common dso_local global i32 0, align 4
@PTA_CYCLE_TIME_FAST_DEF = common dso_local global i32 0, align 4
@PTA_ANTI_STARVE_PERIOD_DEF = common dso_local global i32 0, align 4
@PTA_TIMEOUT_NEXT_BT_LP_PACKET_DEF = common dso_local global i32 0, align 4
@PTA_TIME_BEFORE_BEACON_DEF = common dso_local global i32 0, align 4
@PTA_HPDM_MAX_TIME_DEF = common dso_local global i32 0, align 4
@PTA_TIME_OUT_NEXT_WLAN_DEF = common dso_local global i32 0, align 4
@PTA_ANTENNA_TYPE_DEF = common dso_local global i32 0, align 4
@PTA_SIGNALING_TYPE_DEF = common dso_local global i32 0, align 4
@PTA_AFH_LEVERAGE_ON_DEF = common dso_local global i32 0, align 4
@PTA_NUMBER_QUIET_CYCLE_DEF = common dso_local global i32 0, align 4
@PTA_MAX_NUM_CTS_DEF = common dso_local global i32 0, align 4
@PTA_NUMBER_OF_WLAN_PACKETS_DEF = common dso_local global i32 0, align 4
@PTA_NUMBER_OF_BT_PACKETS_DEF = common dso_local global i32 0, align 4
@PTA_RX_FOR_AVALANCHE_DEF = common dso_local global i32 0, align 4
@PTA_ELP_HP_DEF = common dso_local global i32 0, align 4
@PTA_ANTI_STARVE_NUM_CYCLE_DEF = common dso_local global i32 0, align 4
@PTA_ACK_MODE_DEF = common dso_local global i32 0, align 4
@PTA_ALLOW_PA_SD_DEF = common dso_local global i32 0, align 4
@PTA_AUTO_MODE_NO_CTS_DEF = common dso_local global i32 0, align 4
@PTA_BT_HP_RESPECTED_DEF = common dso_local global i32 0, align 4
@ACX_SG_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set sg config: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_sg_cfg(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.acx_bt_wlan_coex_param*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %6 = load i32, i32* @DEBUG_ACX, align 4
  %7 = call i32 @wl1251_debug(i32 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.acx_bt_wlan_coex_param* @kzalloc(i32 112, i32 %8)
  store %struct.acx_bt_wlan_coex_param* %9, %struct.acx_bt_wlan_coex_param** %4, align 8
  %10 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %11 = icmp ne %struct.acx_bt_wlan_coex_param* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %114

15:                                               ; preds = %1
  %16 = load i32, i32* @RATE_INDEX_24MBPS, align 4
  %17 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %18 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %17, i32 0, i32 27
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @PTA_BT_HP_MAXTIME_DEF, align 4
  %20 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %21 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %20, i32 0, i32 26
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @PTA_WLAN_HP_MAX_TIME_DEF, align 4
  %23 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %24 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %23, i32 0, i32 25
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @PTA_SENSE_DISABLE_TIMER_DEF, align 4
  %26 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %27 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %26, i32 0, i32 24
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @PTA_PROTECTIVE_RX_TIME_DEF, align 4
  %29 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %30 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %29, i32 0, i32 23
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @PTA_PROTECTIVE_TX_TIME_DEF, align 4
  %32 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %33 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %32, i32 0, i32 22
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @PTA_PROTECTIVE_RX_TIME_FAST_DEF, align 4
  %35 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %36 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %35, i32 0, i32 21
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PTA_PROTECTIVE_TX_TIME_FAST_DEF, align 4
  %38 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %39 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %38, i32 0, i32 20
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @PTA_CYCLE_TIME_FAST_DEF, align 4
  %41 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %42 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %41, i32 0, i32 19
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @PTA_ANTI_STARVE_PERIOD_DEF, align 4
  %44 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %45 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %44, i32 0, i32 18
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @PTA_TIMEOUT_NEXT_BT_LP_PACKET_DEF, align 4
  %47 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %48 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %47, i32 0, i32 17
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @PTA_TIME_BEFORE_BEACON_DEF, align 4
  %50 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %51 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %50, i32 0, i32 16
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @PTA_HPDM_MAX_TIME_DEF, align 4
  %53 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %54 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %53, i32 0, i32 15
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @PTA_TIME_OUT_NEXT_WLAN_DEF, align 4
  %56 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %57 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @PTA_ANTENNA_TYPE_DEF, align 4
  %59 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %60 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @PTA_SIGNALING_TYPE_DEF, align 4
  %62 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %63 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %62, i32 0, i32 12
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @PTA_AFH_LEVERAGE_ON_DEF, align 4
  %65 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %66 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @PTA_NUMBER_QUIET_CYCLE_DEF, align 4
  %68 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %69 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @PTA_MAX_NUM_CTS_DEF, align 4
  %71 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %72 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @PTA_NUMBER_OF_WLAN_PACKETS_DEF, align 4
  %74 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %75 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @PTA_NUMBER_OF_BT_PACKETS_DEF, align 4
  %77 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %78 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @PTA_RX_FOR_AVALANCHE_DEF, align 4
  %80 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %81 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @PTA_ELP_HP_DEF, align 4
  %83 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %84 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @PTA_ANTI_STARVE_NUM_CYCLE_DEF, align 4
  %86 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %87 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @PTA_ACK_MODE_DEF, align 4
  %89 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %90 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @PTA_ALLOW_PA_SD_DEF, align 4
  %92 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %93 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @PTA_AUTO_MODE_NO_CTS_DEF, align 4
  %95 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %96 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @PTA_BT_HP_RESPECTED_DEF, align 4
  %98 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %99 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %101 = load i32, i32* @ACX_SG_CFG, align 4
  %102 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %103 = call i32 @wl1251_cmd_configure(%struct.wl1251* %100, i32 %101, %struct.acx_bt_wlan_coex_param* %102, i32 112)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %15
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @wl1251_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %110

109:                                              ; preds = %15
  br label %110

110:                                              ; preds = %109, %106
  %111 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %4, align 8
  %112 = call i32 @kfree(%struct.acx_bt_wlan_coex_param* %111)
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %12
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_bt_wlan_coex_param* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_bt_wlan_coex_param*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_bt_wlan_coex_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
