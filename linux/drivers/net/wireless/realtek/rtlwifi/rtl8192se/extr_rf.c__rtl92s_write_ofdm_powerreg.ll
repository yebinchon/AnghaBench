; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c__rtl92s_write_ofdm_powerreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c__rtl92s_write_ofdm_powerreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.rtl_efuse = type { i32* }

@__const._rtl92s_write_ofdm_powerreg.regoffset = private unnamed_addr constant [6 x i32] [i32 3584, i32 3588, i32 3600, i32 3604, i32 3608, i32 3612], align 16
@RF_2T2R = common dso_local global i64 0, align 8
@RF6052_MAX_TX_PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @_rtl92s_write_ofdm_powerreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_write_ofdm_powerreg(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_phy*, align 8
  %9 = alloca %struct.rtl_efuse*, align 8
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %7, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  store %struct.rtl_phy* %20, %struct.rtl_phy** %8, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %22)
  store %struct.rtl_efuse* %23, %struct.rtl_efuse** %9, align 8
  %24 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([6 x i32]* @__const._rtl92s_write_ofdm_powerreg.regoffset to i8*), i64 24, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RF_2T2R, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %3
  %32 = load %struct.rtl_efuse*, %struct.rtl_efuse** %9, align 8
  %33 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp sge i32 %37, 8
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 16, %40
  store i32 %41, i32* %13, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %3
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %115, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %118

51:                                               ; preds = %48
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 8
  %55 = shl i32 127, %54
  %56 = and i32 %52, %55
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %57, 8
  %59 = ashr i32 %56, %58
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %51
  %75 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %76 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RF_2T2R, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %74
  %81 = load i32, i32* %15, align 4
  %82 = icmp sge i32 %81, 8
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %93
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %83
  br label %113

96:                                               ; preds = %80
  %97 = load i32, i32* %15, align 4
  %98 = icmp sge i32 %97, 1
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %109
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %99
  br label %112

112:                                              ; preds = %111, %96
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113, %74
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %48

118:                                              ; preds = %48
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 24
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %123 = load i32, i32* %122, align 8
  %124 = shl i32 %123, 16
  %125 = or i32 %121, %124
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 8
  %129 = or i32 %125, %128
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %131 = load i32, i32* %130, align 16
  %132 = or i32 %129, %131
  store i32 %132, i32* %16, align 4
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %133, i32 %137, i32 2139062143, i32 %138)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
