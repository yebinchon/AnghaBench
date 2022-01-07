; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_antenna_diversity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_antenna_diversity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i64 }
%struct.rtl_efuse = type { i64 }
%struct.rtl_dm = type { %struct.fast_ant_training }
%struct.fast_ant_training = type { i32 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"No Link\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"need to turn off HW AntDiv\0A\00", align 1
@DM_REG_IGI_A_11N = common dso_local global i32 0, align 4
@DM_REG_CCK_ANTDIV_PARA1_11N = common dso_local global i32 0, align 4
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@DM_REG_TX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Need to turn on HW AntDiv\0A\00", align 1
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@CG_TRX_SMART_ANTDIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_antenna_diversity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_antenna_diversity(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca %struct.rtl_dm*, align 8
  %7 = alloca %struct.fast_ant_training*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %11)
  store %struct.rtl_mac* %12, %struct.rtl_mac** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %14)
  store %struct.rtl_efuse* %15, %struct.rtl_efuse** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %17)
  store %struct.rtl_dm* %18, %struct.rtl_dm** %6, align 8
  %19 = load %struct.rtl_dm*, %struct.rtl_dm** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %19, i32 0, i32 0
  store %struct.fast_ant_training* %20, %struct.fast_ant_training** %7, align 8
  %21 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAC80211_LINKED, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %1
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @COMP_DIG, align 4
  %29 = load i32, i32* @DBG_LOUD, align 4
  %30 = call i32 @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.fast_ant_training*, %struct.fast_ant_training** %7, align 8
  %32 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %26
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @COMP_DIG, align 4
  %38 = load i32, i32* @DBG_LOUD, align 4
  %39 = call i32 @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %41 = load i32, i32* @DM_REG_IGI_A_11N, align 4
  %42 = call i32 @BIT(i32 7)
  %43 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = load i32, i32* @DM_REG_CCK_ANTDIV_PARA1_11N, align 4
  %46 = call i32 @BIT(i32 15)
  %47 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %35
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = load i32, i32* @DM_REG_TX_ANT_CTRL_11N, align 4
  %56 = call i32 @BIT(i32 21)
  %57 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %53, %35
  %59 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MAC80211_LINKED, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.fast_ant_training*, %struct.fast_ant_training** %7, align 8
  %67 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %58, %26
  br label %133

69:                                               ; preds = %1
  %70 = load %struct.fast_ant_training*, %struct.fast_ant_training** %7, align 8
  %71 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %107, label %74

74:                                               ; preds = %69
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = load i32, i32* @COMP_DIG, align 4
  %77 = load i32, i32* @DBG_LOUD, align 4
  %78 = call i32 @RT_TRACE(%struct.rtl_priv* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %80 = load i32, i32* @DM_REG_IGI_A_11N, align 4
  %81 = call i32 @BIT(i32 7)
  %82 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %79, i32 %80, i32 %81, i32 1)
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %84 = load i32, i32* @DM_REG_CCK_ANTDIV_PARA1_11N, align 4
  %85 = call i32 @BIT(i32 15)
  %86 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %83, i32 %84, i32 %85, i32 1)
  %87 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %88 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %74
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %94 = load i32, i32* @DM_REG_TX_ANT_CTRL_11N, align 4
  %95 = call i32 @BIT(i32 21)
  %96 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %93, i32 %94, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %92, %74
  %98 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %99 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MAC80211_LINKED, align 8
  %102 = icmp sge i64 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = load %struct.fast_ant_training*, %struct.fast_ant_training** %7, align 8
  %106 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %97, %69
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %110 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %116 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %108
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %122 = call i32 @rtl88e_dm_hw_ant_div(%struct.ieee80211_hw* %121)
  br label %133

123:                                              ; preds = %114
  %124 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %125 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @CG_TRX_SMART_ANTDIV, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = call i32 @rtl88e_dm_fast_ant_training(%struct.ieee80211_hw* %130)
  br label %132

132:                                              ; preds = %129, %123
  br label %133

133:                                              ; preds = %68, %132, %120
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl88e_dm_hw_ant_div(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl88e_dm_fast_ant_training(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
