; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_read_chip_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_read_chip_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@VERSION_UNKNOWN = common dso_local global i32 0, align 4
@REG_SYS_CFG = common dso_local global i32 0, align 4
@TRP_VAUX_EN = common dso_local global i32 0, align 4
@TYPE_ID = common dso_local global i32 0, align 4
@CHIP_VER_B = common dso_local global i32 0, align 4
@CHIP_92C_BITMASK = common dso_local global i32 0, align 4
@VENDOR_ID = common dso_local global i32 0, align 4
@CHIP_VENDOR_UMC = common dso_local global i32 0, align 4
@CHIP_VER_RTL_MASK = common dso_local global i32 0, align 4
@CHIP_VENDOR_UMC_B_CUT = common dso_local global i32 0, align 4
@CHIP_UNKNOWN = common dso_local global i32 0, align 4
@REG_HPON_FSM = common dso_local global i32 0, align 4
@CHIP_BONDING_92C_1T2R = common dso_local global i64 0, align 8
@RF_TYPE_1T2R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"B_CHIP_92C\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"B_CHIP_88C\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"A_CHIP_92C\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"A_CHIP_88C\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"A_CUT_92C_1T2R\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"A_CUT_92C\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"A_CUT_88C\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"B_CUT_92C_1T2R\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"B_CUT_92C\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"B_CUT_88C\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Unknown. Bug?\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Chip Version ID: %s\0A\00", align 1
@RF_1T1R = common dso_local global i8* null, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"ERROR RF_Type is set!!\0A\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"Chip RF Type: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"RF_2T2R\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"RF_1T1R\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92ce_read_chip_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ce_read_chip_version(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  store %struct.rtl_phy* %11, %struct.rtl_phy** %4, align 8
  %12 = load i32, i32* @VERSION_UNKNOWN, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i32, i32* @REG_SYS_CFG, align 4
  %15 = call i32 @rtl_read_dword(%struct.rtl_priv* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TRP_VAUX_EN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TYPE_ID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 136, i32 137
  store i32 %26, i32* %5, align 4
  br label %93

27:                                               ; preds = %1
  %28 = load i32, i32* @CHIP_VER_B, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TYPE_ID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @CHIP_92C_BITMASK, align 4
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = or i32 %28, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @VENDOR_ID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @CHIP_VENDOR_UMC, align 4
  br label %46

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = or i32 %38, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @IS_CHIP_VENDOR_UMC(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @CHIP_VER_RTL_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @CHIP_VER_RTL_MASK, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @BIT(i32 12)
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @CHIP_VENDOR_UMC_B_CUT, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @CHIP_UNKNOWN, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32, i32* @CHIP_VENDOR_UMC, align 4
  %71 = or i32 %69, %70
  %72 = or i32 %58, %71
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %52, %46
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @IS_92C_SERIAL(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %79 = load i32, i32* @REG_HPON_FSM, align 4
  %80 = call i32 @rtl_read_dword(%struct.rtl_priv* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @CHIP_BONDING_IDENTIFIER(i32 %82)
  %84 = load i64, i64* @CHIP_BONDING_92C_1T2R, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @RF_TYPE_1T2R, align 4
  br label %89

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = or i32 %81, %90
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %89, %73
  br label %93

93:                                               ; preds = %92, %20
  %94 = load i32, i32* %5, align 4
  switch i32 %94, label %105 [
    i32 134, label %95
    i32 135, label %96
    i32 136, label %97
    i32 137, label %98
    i32 131, label %99
    i32 129, label %100
    i32 133, label %101
    i32 130, label %102
    i32 128, label %103
    i32 132, label %104
  ]

95:                                               ; preds = %93
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %106

96:                                               ; preds = %93
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %106

97:                                               ; preds = %93
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %106

98:                                               ; preds = %93
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %106

99:                                               ; preds = %93
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %106

100:                                              ; preds = %93
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %106

101:                                              ; preds = %93
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %106

102:                                              ; preds = %93
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %106

103:                                              ; preds = %93
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %106

104:                                              ; preds = %93
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %106

105:                                              ; preds = %93
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %106

106:                                              ; preds = %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, 3
  switch i32 %110, label %124 [
    i32 140, label %111
    i32 139, label %116
    i32 138, label %120
  ]

111:                                              ; preds = %106
  %112 = load i8*, i8** @RF_1T1R, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %115 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %130

116:                                              ; preds = %106
  %117 = load i64, i64* @RF_2T2R, align 8
  %118 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %119 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %130

120:                                              ; preds = %106
  %121 = load i64, i64* @RF_1T2R, align 8
  %122 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %123 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %130

124:                                              ; preds = %106
  %125 = load i8*, i8** @RF_1T1R, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %128 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %130

130:                                              ; preds = %124, %120, %116, %111
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %132 = load i32, i32* @COMP_INIT, align 4
  %133 = load i32, i32* @DBG_LOUD, align 4
  %134 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %135 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RF_2T2R, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)
  %141 = call i32 @RT_TRACE(%struct.rtl_priv* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @IS_CHIP_VENDOR_UMC(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @IS_92C_SERIAL(i32) #1

declare dso_local i64 @CHIP_BONDING_IDENTIFIER(i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
