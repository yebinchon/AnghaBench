; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_rtl92c_set_p2p_ps_offload_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_rtl92c_set_p2p_ps_offload_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_ps_ctl = type { %struct.rtl_p2p_ps_info }
%struct.rtl_p2p_ps_info = type { i32, i32, i32, i32 }
%struct.rtl_hal = type { %struct.p2p_ps_offload_t }
%struct.p2p_ps_offload_t = type { i32, i32, i32, i32, i32 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"P2P_PS_DISABLE\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P2P_PS_ENABLE\0A\00", align 1
@REG_DUAL_TSF_RST = common dso_local global i32 0, align 4
@P2P_ROLE_GO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"P2P_PS_SCAN\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"P2P_PS_SCAN_DONE\0A\00", align 1
@H2C_P2P_PS_OFFLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_set_p2p_ps_offload_cmd(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_ps_ctl*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca %struct.rtl_p2p_ps_info*, align 8
  %9 = alloca %struct.p2p_ps_offload_t*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %14)
  store %struct.rtl_ps_ctl* %15, %struct.rtl_ps_ctl** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %7, align 8
  %19 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %19, i32 0, i32 0
  store %struct.rtl_p2p_ps_info* %20, %struct.rtl_p2p_ps_info** %8, align 8
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %22 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %21, i32 0, i32 0
  store %struct.p2p_ps_offload_t* %22, %struct.p2p_ps_offload_t** %9, align 8
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %104 [
    i32 131, label %24
    i32 130, label %31
    i32 129, label %88
    i32 128, label %95
  ]

24:                                               ; preds = %2
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = load i32, i32* @COMP_FW, align 4
  %27 = load i32, i32* @DBG_LOUD, align 4
  %28 = call i32 @RT_TRACE(%struct.rtl_priv* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %30 = call i32 @memset(%struct.p2p_ps_offload_t* %29, i32 0, i32 20)
  br label %105

31:                                               ; preds = %2
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %33 = load i32, i32* @COMP_FW, align 4
  %34 = load i32, i32* @DBG_LOUD, align 4
  %35 = call i32 @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %37 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %42 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %44 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @rtl92c_set_p2p_ctw_period_cmd(%struct.ieee80211_hw* %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %51 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %52 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %53 = call i32 @set_noa_data(%struct.rtl_priv* %50, %struct.rtl_p2p_ps_info* %51, %struct.p2p_ps_offload_t* %52)
  %54 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %55 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %60 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %58, %49
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %65 = load i32, i32* @REG_DUAL_TSF_RST, align 4
  %66 = call i32 @BIT(i32 4)
  %67 = call i32 @rtl_write_byte(%struct.rtl_priv* %64, i32 %65, i32 %66)
  %68 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %69 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* @P2P_ROLE_GO, align 4
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %78 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %77, i32 0, i32 2
  store i32 1, i32* %78, align 4
  %79 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %80 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %79, i32 0, i32 4
  store i32 0, i32* %80, align 4
  br label %84

81:                                               ; preds = %63
  %82 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %83 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %82, i32 0, i32 2
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %86 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %58
  br label %105

88:                                               ; preds = %2
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %90 = load i32, i32* @COMP_FW, align 4
  %91 = load i32, i32* @DBG_LOUD, align 4
  %92 = call i32 @RT_TRACE(%struct.rtl_priv* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %94 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %93, i32 0, i32 3
  store i32 1, i32* %94, align 4
  br label %105

95:                                               ; preds = %2
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %97 = load i32, i32* @COMP_FW, align 4
  %98 = load i32, i32* @DBG_LOUD, align 4
  %99 = call i32 @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %101 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  %102 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %103 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %102, i32 0, i32 1
  store i32 130, i32* %103, align 4
  br label %105

104:                                              ; preds = %2
  br label %105

105:                                              ; preds = %104, %95, %88, %87, %24
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %107 = load i32, i32* @H2C_P2P_PS_OFFLOAD, align 4
  %108 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %109 = bitcast %struct.p2p_ps_offload_t* %108 to i32*
  %110 = call i32 @rtl92c_fill_h2c_cmd(%struct.ieee80211_hw* %106, i32 %107, i32 1, i32* %109)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.p2p_ps_offload_t*, i32, i32) #1

declare dso_local i32 @rtl92c_set_p2p_ctw_period_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @set_noa_data(%struct.rtl_priv*, %struct.rtl_p2p_ps_info*, %struct.p2p_ps_offload_t*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl92c_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
