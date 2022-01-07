; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_ant_sel_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_ant_sel_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i64 }
%struct.rtl_dm = type { %struct.fast_ant_training }
%struct.fast_ant_training = type { i32*, i32*, i32*, i32* }

@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@MAIN_ANT_CG_TRX = common dso_local global i64 0, align 8
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@MAIN_ANT_CGCS_RX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88e_dm_ant_sel_statistics(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_efuse*, align 8
  %10 = alloca %struct.rtl_dm*, align 8
  %11 = alloca %struct.fast_ant_training*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call i32 @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_efuse* @rtl_efuse(i32 %13)
  store %struct.rtl_efuse* %14, %struct.rtl_efuse** %9, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = call i32 @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_dm* @rtl_dm(i32 %16)
  store %struct.rtl_dm* %17, %struct.rtl_dm** %10, align 8
  %18 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %19 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %18, i32 0, i32 0
  store %struct.fast_ant_training* %19, %struct.fast_ant_training** %11, align 8
  %20 = load %struct.rtl_efuse*, %struct.rtl_efuse** %9, align 8
  %21 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %4
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @MAIN_ANT_CG_TRX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.fast_ant_training*, %struct.fast_ant_training** %11, align 8
  %32 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, %30
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.fast_ant_training*, %struct.fast_ant_training** %11, align 8
  %41 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %65

47:                                               ; preds = %25
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.fast_ant_training*, %struct.fast_ant_training** %11, align 8
  %50 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, %48
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.fast_ant_training*, %struct.fast_ant_training** %11, align 8
  %59 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %47, %29
  br label %114

66:                                               ; preds = %4
  %67 = load %struct.rtl_efuse*, %struct.rtl_efuse** %9, align 8
  %68 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %113

72:                                               ; preds = %66
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @MAIN_ANT_CGCS_RX, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.fast_ant_training*, %struct.fast_ant_training** %11, align 8
  %79 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, %77
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load %struct.fast_ant_training*, %struct.fast_ant_training** %11, align 8
  %88 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %112

94:                                               ; preds = %72
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.fast_ant_training*, %struct.fast_ant_training** %11, align 8
  %97 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %95
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.fast_ant_training*, %struct.fast_ant_training** %11, align 8
  %106 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %94, %76
  br label %113

113:                                              ; preds = %112, %66
  br label %114

114:                                              ; preds = %113, %65
  ret void
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
