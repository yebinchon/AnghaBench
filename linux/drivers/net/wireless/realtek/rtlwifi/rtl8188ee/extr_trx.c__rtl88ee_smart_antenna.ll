; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c__rtl88ee_smart_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c__rtl88ee_smart_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i64, i64 }
%struct.rtl_dm = type { %struct.fast_ant_training }
%struct.fast_ant_training = type { i64, i32, i32, i32, i32*, i32* }
%struct.rtl_efuse = type { i64 }

@CG_TRX_SMART_ANTDIV = common dso_local global i64 0, align 8
@FAT_TRAINING_STATE = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*)* @_rtl88ee_smart_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_smart_antenna(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_stats*, align 8
  %5 = alloca %struct.rtl_dm*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fast_ant_training*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_stats* %1, %struct.rtl_stats** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call i32 @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_dm* @rtl_dm(i32 %10)
  store %struct.rtl_dm* %11, %struct.rtl_dm** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call i32 @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_efuse* @rtl_efuse(i32 %13)
  store %struct.rtl_efuse* %14, %struct.rtl_efuse** %6, align 8
  %15 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %16 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %15, i32 0, i32 0
  store %struct.fast_ant_training* %16, %struct.fast_ant_training** %8, align 8
  %17 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CG_TRX_SMART_ANTDIV, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %2
  %23 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %24 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FAT_TRAINING_STATE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %22
  %29 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %35 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 2
  %38 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %39 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 1
  %42 = or i32 %37, %41
  %43 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %44 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %42, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %7, align 8
  %48 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %52 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %50
  store i32 %57, i32* %55, align 4
  %58 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %59 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %33, %28
  br label %66

66:                                               ; preds = %65, %22
  br label %112

67:                                               ; preds = %2
  %68 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %69 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %75 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %73, %67
  %80 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %81 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %86 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84, %79
  %90 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %91 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 2
  %94 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %95 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 1
  %98 = or i32 %93, %97
  %99 = load %struct.fast_ant_training*, %struct.fast_ant_training** %8, align 8
  %100 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %98, %101
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %7, align 8
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %107 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @rtl88e_dm_ant_sel_statistics(%struct.ieee80211_hw* %104, i64 %105, i32 0, i32 %108)
  br label %110

110:                                              ; preds = %89, %84
  br label %111

111:                                              ; preds = %110, %73
  br label %112

112:                                              ; preds = %111, %66
  ret void
}

declare dso_local %struct.rtl_dm* @rtl_dm(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl88e_dm_ant_sel_statistics(%struct.ieee80211_hw*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
