; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c__rtl8723e_read_chip_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c__rtl8723e_read_chip_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i32 }

@REG_SYS_CFG = common dso_local global i32 0, align 4
@TRP_VAUX_EN = common dso_local global i32 0, align 4
@VENDOR_ID = common dso_local global i32 0, align 4
@CHIP_VENDOR_UMC = common dso_local global i32 0, align 4
@BT_FUNC = common dso_local global i32 0, align 4
@CHIP_8723 = common dso_local global i32 0, align 4
@NORMAL_CHIP = common dso_local global i64 0, align 8
@CHIP_VER_RTL_MASK = common dso_local global i32 0, align 4
@REG_GPIO_OUTSTS = common dso_local global i32 0, align 4
@RF_RL_ID = common dso_local global i32 0, align 4
@REG_MULTI_FUNC_CTRL = common dso_local global i32 0, align 4
@WL_HWPDN_SL = common dso_local global i32 0, align 4
@RT_POLARITY_HIGH_ACT = common dso_local global i32 0, align 4
@RT_POLARITY_LOW_ACT = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Chip Version ID: VERSION_TEST_UMC_CHIP_8723.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Chip Version ID: VERSION_NORMAL_UMC_CHIP_8723_1T1R_A_CUT.\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Chip Version ID: VERSION_NORMAL_UMC_CHIP_8723_1T1R_B_CUT.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Chip Version ID: Unknown. Bug?\0A\00", align 1
@RF_1T1R = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Chip RF Type: %s\0A\00", align 1
@RF_2T2R = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"RF_2T2R\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"RF_1T1R\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8723e_read_chip_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723e_read_chip_version(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.rtl_phy* %10, %struct.rtl_phy** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = load i32, i32* @REG_SYS_CFG, align 4
  %13 = call i32 @rtl_read_dword(%struct.rtl_priv* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TRP_VAUX_EN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VENDOR_ID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @CHIP_VENDOR_UMC, align 4
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = or i32 %19, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BT_FUNC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @CHIP_8723, align 4
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = or i32 %30, %39
  store i32 %40, i32* %5, align 4
  br label %90

41:                                               ; preds = %1
  %42 = load i64, i64* @NORMAL_CHIP, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @VENDOR_ID, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @CHIP_VENDOR_UMC, align 4
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = or i32 %44, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BT_FUNC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @CHIP_8723, align 4
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = or i32 %55, %64
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @IS_CHIP_VENDOR_UMC(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @CHIP_VER_RTL_MASK, align 4
  %73 = and i32 %71, %72
  %74 = or i32 %70, %73
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @IS_8723_SERIES(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i32, i32* @REG_GPIO_OUTSTS, align 4
  %82 = call i32 @rtl_read_dword(%struct.rtl_priv* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @RF_RL_ID, align 4
  %86 = and i32 %84, %85
  %87 = ashr i32 %86, 20
  %88 = or i32 %83, %87
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %79, %75
  br label %90

90:                                               ; preds = %89, %38
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @IS_8723_SERIES(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %96 = load i32, i32* @REG_MULTI_FUNC_CTRL, align 4
  %97 = call i32 @rtl_read_dword(%struct.rtl_priv* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @WL_HWPDN_SL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @RT_POLARITY_HIGH_ACT, align 4
  br label %106

104:                                              ; preds = %94
  %105 = load i32, i32* @RT_POLARITY_LOW_ACT, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %109 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %90
  %111 = load i32, i32* %5, align 4
  switch i32 %111, label %127 [
    i32 128, label %112
    i32 130, label %117
    i32 129, label %122
  ]

112:                                              ; preds = %110
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %114 = load i32, i32* @COMP_INIT, align 4
  %115 = load i32, i32* @DBG_TRACE, align 4
  %116 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %129

117:                                              ; preds = %110
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %119 = load i32, i32* @COMP_INIT, align 4
  %120 = load i32, i32* @DBG_TRACE, align 4
  %121 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %129

122:                                              ; preds = %110
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %124 = load i32, i32* @COMP_INIT, align 4
  %125 = load i32, i32* @DBG_TRACE, align 4
  %126 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %129

127:                                              ; preds = %110
  %128 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %122, %117, %112
  %130 = load i32, i32* %5, align 4
  %131 = call i64 @IS_8723_SERIES(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i64, i64* @RF_1T1R, align 8
  %135 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %136 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %129
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %139 = load i32, i32* @COMP_INIT, align 4
  %140 = load i32, i32* @DBG_LOUD, align 4
  %141 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %142 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @RF_2T2R, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %148 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %138, i32 %139, i32 %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i64 @IS_CHIP_VENDOR_UMC(i32) #1

declare dso_local i64 @IS_8723_SERIES(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
