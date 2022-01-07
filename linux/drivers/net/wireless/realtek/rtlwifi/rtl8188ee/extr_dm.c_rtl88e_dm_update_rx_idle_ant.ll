; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_update_rx_idle_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_update_rx_idle_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i64 }
%struct.rtl_dm = type { %struct.fast_ant_training }
%struct.fast_ant_training = type { i64 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"need to update rx idle ant\0A\00", align 1
@MAIN_ANT = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@MAIN_ANT_CG_TRX = common dso_local global i32 0, align 4
@MAIN_ANT_CGCS_RX = common dso_local global i32 0, align 4
@AUX_ANT_CG_TRX = common dso_local global i32 0, align 4
@AUX_ANT_CGCS_RX = common dso_local global i32 0, align 4
@DM_REG_RX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@DM_REG_ANTSEL_CTRL_11N = common dso_local global i32 0, align 4
@DM_REG_RESP_TX_11N = common dso_local global i32 0, align 4
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"RxIdleAnt %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"MAIN_ANT\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"AUX_ANT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64)* @rtl88e_dm_update_rx_idle_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_update_rx_idle_ant(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca %struct.rtl_dm*, align 8
  %8 = alloca %struct.fast_ant_training*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %14)
  store %struct.rtl_efuse* %15, %struct.rtl_efuse** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %17)
  store %struct.rtl_dm* %18, %struct.rtl_dm** %7, align 8
  %19 = load %struct.rtl_dm*, %struct.rtl_dm** %7, align 8
  %20 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %19, i32 0, i32 0
  store %struct.fast_ant_training* %20, %struct.fast_ant_training** %8, align 8
  %21 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %22 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %148

26:                                               ; preds = %2
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = load i32, i32* @COMP_INIT, align 4
  %29 = load i32, i32* @DBG_LOUD, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @MAIN_ANT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %26
  %35 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %36 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @MAIN_ANT_CG_TRX, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @MAIN_ANT_CGCS_RX, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %9, align 4
  %46 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %47 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @AUX_ANT_CG_TRX, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @AUX_ANT_CGCS_RX, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %10, align 4
  br label %80

57:                                               ; preds = %26
  %58 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %59 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @AUX_ANT_CG_TRX, align 4
  br label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @AUX_ANT_CGCS_RX, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %9, align 4
  %69 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %70 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @MAIN_ANT_CG_TRX, align 4
  br label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @MAIN_ANT_CGCS_RX, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %78, %55
  %81 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %82 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %80
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %88 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %89 = call i32 @BIT(i32 5)
  %90 = call i32 @BIT(i32 4)
  %91 = or i32 %89, %90
  %92 = call i32 @BIT(i32 3)
  %93 = or i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %87, i32 %88, i32 %93, i32 %94)
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %97 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %98 = call i32 @BIT(i32 8)
  %99 = call i32 @BIT(i32 7)
  %100 = or i32 %98, %99
  %101 = call i32 @BIT(i32 6)
  %102 = or i32 %100, %101
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %96, i32 %97, i32 %102, i32 %103)
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %106 = load i32, i32* @DM_REG_ANTSEL_CTRL_11N, align 4
  %107 = call i32 @BIT(i32 14)
  %108 = call i32 @BIT(i32 13)
  %109 = or i32 %107, %108
  %110 = call i32 @BIT(i32 12)
  %111 = or i32 %109, %110
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %105, i32 %106, i32 %111, i32 %112)
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %115 = load i32, i32* @DM_REG_RESP_TX_11N, align 4
  %116 = call i32 @BIT(i32 6)
  %117 = call i32 @BIT(i32 7)
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %114, i32 %115, i32 %118, i32 %119)
  br label %147

121:                                              ; preds = %80
  %122 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %123 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %129 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %130 = call i32 @BIT(i32 5)
  %131 = call i32 @BIT(i32 4)
  %132 = or i32 %130, %131
  %133 = call i32 @BIT(i32 3)
  %134 = or i32 %132, %133
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %128, i32 %129, i32 %134, i32 %135)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %138 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %139 = call i32 @BIT(i32 8)
  %140 = call i32 @BIT(i32 7)
  %141 = or i32 %139, %140
  %142 = call i32 @BIT(i32 6)
  %143 = or i32 %141, %142
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %137, i32 %138, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %127, %121
  br label %147

147:                                              ; preds = %146, %86
  br label %148

148:                                              ; preds = %147, %2
  %149 = load i64, i64* %4, align 8
  %150 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %151 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %153 = load i32, i32* @COMP_INIT, align 4
  %154 = load i32, i32* @DBG_LOUD, align 4
  %155 = load i64, i64* %4, align 8
  %156 = load i64, i64* @MAIN_ANT, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %160 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %152, i32 %153, i32 %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %159)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
