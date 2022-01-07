; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_set_txpower_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_set_txpower_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_2 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_3 = common dso_local global i32 0, align 4
@MT_RF_PA_MODE_ADJ0 = common dso_local global i32 0, align 4
@MT_RF_PA_MODE_ADJ1 = common dso_local global i32 0, align 4
@MT_BB_PA_MODE_CFG0 = common dso_local global i32 0, align 4
@MT_BB_PA_MODE_CFG1 = common dso_local global i32 0, align 4
@MT_RF_PA_MODE_CFG0 = common dso_local global i32 0, align 4
@MT_RF_PA_MODE_CFG1 = common dso_local global i32 0, align 4
@MT_TX0_RF_GAIN_CORR = common dso_local global i32 0, align 4
@MT_TX1_RF_GAIN_CORR = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_phy_set_txpower_regs(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 16799231, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 5570645, i32* %14, align 4
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %16 = load i32, i32* @MT_TX_ALC_CFG_2, align 4
  %17 = call i32 @mt76_wr(%struct.mt76x02_dev* %15, i32 %16, i32 890636800)
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %19 = load i32, i32* @MT_TX_ALC_CFG_3, align 4
  %20 = call i32 @mt76_wr(%struct.mt76x02_dev* %18, i32 %19, i32 890636806)
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %27 = load i32, i32* @MT_RF_PA_MODE_ADJ0, align 4
  %28 = call i32 @mt76_wr(%struct.mt76x02_dev* %26, i32 %27, i32 60416)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %30 = load i32, i32* @MT_RF_PA_MODE_ADJ1, align 4
  %31 = call i32 @mt76_wr(%struct.mt76x02_dev* %29, i32 %30, i32 60416)
  br label %39

32:                                               ; preds = %12
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = load i32, i32* @MT_RF_PA_MODE_ADJ0, align 4
  %35 = call i32 @mt76_wr(%struct.mt76x02_dev* %33, i32 %34, i32 -201326080)
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %37 = load i32, i32* @MT_RF_PA_MODE_ADJ1, align 4
  %38 = call i32 @mt76_wr(%struct.mt76x02_dev* %36, i32 %37, i32 -100662784)
  br label %39

39:                                               ; preds = %32, %25
  br label %77

40:                                               ; preds = %2
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 65535, i32* %41, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 16711935, i32* %42, align 4
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %49 = load i32, i32* @MT_TX_ALC_CFG_2, align 4
  %50 = call i32 @mt76_wr(%struct.mt76x02_dev* %48, i32 %49, i32 789513216)
  %51 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %52 = load i32, i32* @MT_TX_ALC_CFG_3, align 4
  %53 = call i32 @mt76_wr(%struct.mt76x02_dev* %51, i32 %52, i32 789513334)
  br label %61

54:                                               ; preds = %40
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %56 = load i32, i32* @MT_TX_ALC_CFG_2, align 4
  %57 = call i32 @mt76_wr(%struct.mt76x02_dev* %55, i32 %56, i32 453968896)
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %59 = load i32, i32* @MT_TX_ALC_CFG_3, align 4
  %60 = call i32 @mt76_wr(%struct.mt76x02_dev* %58, i32 %59, i32 453969014)
  br label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 67108864, i32* %6, align 4
  br label %68

67:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %70 = load i32, i32* @MT_RF_PA_MODE_ADJ0, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @mt76_wr(%struct.mt76x02_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %74 = load i32, i32* @MT_RF_PA_MODE_ADJ1, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @mt76_wr(%struct.mt76x02_dev* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %39
  %78 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %79 = load i32, i32* @MT_BB_PA_MODE_CFG0, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @mt76_wr(%struct.mt76x02_dev* %78, i32 %79, i32 %81)
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %84 = load i32, i32* @MT_BB_PA_MODE_CFG1, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mt76_wr(%struct.mt76x02_dev* %83, i32 %84, i32 %86)
  %88 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %89 = load i32, i32* @MT_RF_PA_MODE_CFG0, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mt76_wr(%struct.mt76x02_dev* %88, i32 %89, i32 %91)
  %93 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %94 = load i32, i32* @MT_RF_PA_MODE_CFG1, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mt76_wr(%struct.mt76x02_dev* %93, i32 %94, i32 %96)
  %98 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %77
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1010565692, i32* %7, align 4
  br label %108

107:                                              ; preds = %102
  store i32 909902396, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %110 = load i32, i32* @MT_TX0_RF_GAIN_CORR, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @mt76_wr(%struct.mt76x02_dev* %109, i32 %110, i32 %111)
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %114 = load i32, i32* @MT_TX1_RF_GAIN_CORR, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @mt76_wr(%struct.mt76x02_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %118 = load i32, i32* @MT_TX_ALC_CFG_4, align 4
  %119 = call i32 @mt76_wr(%struct.mt76x02_dev* %117, i32 %118, i32 6168)
  br label %147

120:                                              ; preds = %77
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  store i32 255605820, i32* %8, align 4
  %125 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %126 = load i32, i32* @MT_TX0_RF_GAIN_CORR, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @mt76_wr(%struct.mt76x02_dev* %125, i32 %126, i32 %127)
  %129 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %130 = load i32, i32* @MT_TX1_RF_GAIN_CORR, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @mt76_wr(%struct.mt76x02_dev* %129, i32 %130, i32 %131)
  %133 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %134 = load i32, i32* @MT_TX_ALC_CFG_4, align 4
  %135 = call i32 @mt76_wr(%struct.mt76x02_dev* %133, i32 %134, i32 1542)
  br label %146

136:                                              ; preds = %120
  %137 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %138 = load i32, i32* @MT_TX0_RF_GAIN_CORR, align 4
  %139 = call i32 @mt76_wr(%struct.mt76x02_dev* %137, i32 %138, i32 943456828)
  %140 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %141 = load i32, i32* @MT_TX1_RF_GAIN_CORR, align 4
  %142 = call i32 @mt76_wr(%struct.mt76x02_dev* %140, i32 %141, i32 606613032)
  %143 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %144 = load i32, i32* @MT_TX_ALC_CFG_4, align 4
  %145 = call i32 @mt76_wr(%struct.mt76x02_dev* %143, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %136, %124
  br label %147

147:                                              ; preds = %146, %108
  ret void
}

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
