; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_identify_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_identify_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@REG_SYS_CFG = common dso_local global i32 0, align 4
@SYS_CFG_CHIP_VERSION_MASK = common dso_local global i32 0, align 4
@SYS_CFG_CHIP_VERSION_SHIFT = common dso_local global i32 0, align 4
@SYS_CFG_TRP_VAUX_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unsupported test chip\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@SYS_CFG_BT_FUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"8723BU\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"8723AU\00", align 1
@RTL8723A = common dso_local global i32 0, align 4
@REG_MULTI_FUNC_CTRL = common dso_local global i32 0, align 4
@MULTI_WIFI_FUNC_EN = common dso_local global i32 0, align 4
@MULTI_BT_FUNC_EN = common dso_local global i32 0, align 4
@MULTI_GPS_FUNC_EN = common dso_local global i32 0, align 4
@SYS_CFG_TYPE_ID = common dso_local global i32 0, align 4
@REG_HPON_FSM = common dso_local global i32 0, align 4
@HPON_FSM_BONDING_MASK = common dso_local global i32 0, align 4
@HPON_FSM_BONDING_1T2R = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"8191EU\00", align 1
@RTL8191E = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"8192EU\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"8191CU\00", align 1
@RTL8191C = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"8192CU\00", align 1
@RTL8192C = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"8188CU\00", align 1
@RTL8188C = common dso_local global i32 0, align 4
@SYS_CFG_VENDOR_EXT_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"TSMC\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"SMIC\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"UMC\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@SYS_CFG_VENDOR_ID = common dso_local global i32 0, align 4
@REG_GPIO_OUTSTS = common dso_local global i32 0, align 4
@GPIO_RF_RL_ID = common dso_local global i32 0, align 4
@REG_NORMAL_SIE_EP_TX = common dso_local global i32 0, align 4
@NORMAL_SIE_EP_TX_HIGH_MASK = common dso_local global i32 0, align 4
@NORMAL_SIE_EP_TX_NORMAL_MASK = common dso_local global i32 0, align 4
@NORMAL_SIE_EP_TX_LOW_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"Unsupported USB TX end-points\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8xxxu_identify_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_identify_chip(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  %8 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %8, i32 0, i32 21
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %13 = load i32, i32* @REG_SYS_CFG, align 4
  %14 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SYS_CFG_CHIP_VERSION_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @SYS_CFG_CHIP_VERSION_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SYS_CFG_TRP_VAUX_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_info(%struct.device* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %340

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SYS_CFG_BT_FUNC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %31
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %42, i32 0, i32 19
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sprintf(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %47 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %46, i32 0, i32 1
  store i32 131, i32* %47, align 4
  br label %58

48:                                               ; preds = %36
  %49 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %49, i32 0, i32 19
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sprintf(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @RTL8723A, align 4
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %61, i32 0, i32 4
  store i32 1, i32* %62, align 8
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %63, i32 0, i32 5
  store i32 1, i32* %64, align 4
  %65 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %66 = load i32, i32* @REG_MULTI_FUNC_CTRL, align 4
  %67 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MULTI_WIFI_FUNC_EN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %73, i32 0, i32 6
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %58
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MULTI_BT_FUNC_EN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %82 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %81, i32 0, i32 7
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @MULTI_GPS_FUNC_EN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %90 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %89, i32 0, i32 8
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %93 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %92, i32 0, i32 9
  store i32 1, i32* %93, align 4
  br label %204

94:                                               ; preds = %31
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SYS_CFG_TYPE_ID, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %185

99:                                               ; preds = %94
  %100 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %101 = load i32, i32* @REG_HPON_FSM, align 4
  %102 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @HPON_FSM_BONDING_MASK, align 4
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %107 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %106, i32 0, i32 20
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp eq i64 %111, 4
  br i1 %112, label %113, label %145

113:                                              ; preds = %99
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @HPON_FSM_BONDING_1T2R, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %119 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %118, i32 0, i32 19
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sprintf(i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %122 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %123 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %122, i32 0, i32 3
  store i32 2, i32* %123, align 4
  %124 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %125 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %124, i32 0, i32 4
  store i32 2, i32* %125, align 8
  %126 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %127 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %126, i32 0, i32 5
  store i32 1, i32* %127, align 4
  %128 = load i32, i32* @RTL8191E, align 4
  %129 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %130 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %144

131:                                              ; preds = %113
  %132 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %133 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %132, i32 0, i32 19
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @sprintf(i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %136 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %137 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %136, i32 0, i32 3
  store i32 2, i32* %137, align 4
  %138 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %139 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %138, i32 0, i32 4
  store i32 2, i32* %139, align 8
  %140 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %141 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %140, i32 0, i32 5
  store i32 2, i32* %141, align 4
  %142 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %143 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %142, i32 0, i32 1
  store i32 132, i32* %143, align 4
  br label %144

144:                                              ; preds = %131, %117
  br label %182

145:                                              ; preds = %99
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @HPON_FSM_BONDING_1T2R, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %151 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %150, i32 0, i32 19
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @sprintf(i32 %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %154 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %155 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %154, i32 0, i32 3
  store i32 2, i32* %155, align 4
  %156 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %157 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %156, i32 0, i32 4
  store i32 2, i32* %157, align 8
  %158 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %159 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %158, i32 0, i32 5
  store i32 1, i32* %159, align 4
  %160 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %161 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %160, i32 0, i32 2
  store i32 1, i32* %161, align 8
  %162 = load i32, i32* @RTL8191C, align 4
  %163 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %164 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %181

165:                                              ; preds = %145
  %166 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %167 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %166, i32 0, i32 19
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @sprintf(i32 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %170 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %171 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %170, i32 0, i32 3
  store i32 2, i32* %171, align 4
  %172 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %173 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %172, i32 0, i32 4
  store i32 2, i32* %173, align 8
  %174 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %175 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %174, i32 0, i32 5
  store i32 2, i32* %175, align 4
  %176 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %177 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* @RTL8192C, align 4
  %179 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %180 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %165, %149
  br label %182

182:                                              ; preds = %181, %144
  %183 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %184 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %183, i32 0, i32 6
  store i32 1, i32* %184, align 8
  br label %203

185:                                              ; preds = %94
  %186 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %187 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %186, i32 0, i32 19
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sprintf(i32 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %190 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %191 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %190, i32 0, i32 3
  store i32 1, i32* %191, align 4
  %192 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %193 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %192, i32 0, i32 4
  store i32 1, i32* %193, align 8
  %194 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %195 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %194, i32 0, i32 5
  store i32 1, i32* %195, align 4
  %196 = load i32, i32* @RTL8188C, align 4
  %197 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %198 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %200 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %199, i32 0, i32 2
  store i32 1, i32* %200, align 8
  %201 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %202 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %201, i32 0, i32 6
  store i32 1, i32* %202, align 8
  br label %203

203:                                              ; preds = %185, %182
  br label %204

204:                                              ; preds = %203, %91
  %205 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %206 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %237 [
    i32 133, label %208
    i32 132, label %208
    i32 131, label %208
  ]

208:                                              ; preds = %204, %204, %204
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @SYS_CFG_VENDOR_EXT_MASK, align 4
  %211 = and i32 %209, %210
  switch i32 %211, label %231 [
    i32 129, label %212
    i32 130, label %217
    i32 128, label %224
  ]

212:                                              ; preds = %208
  %213 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %214 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %213, i32 0, i32 18
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @sprintf(i32 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %236

217:                                              ; preds = %208
  %218 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %219 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %218, i32 0, i32 18
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @sprintf(i32 %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %222 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %223 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %222, i32 0, i32 10
  store i32 1, i32* %223, align 8
  br label %236

224:                                              ; preds = %208
  %225 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %226 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %225, i32 0, i32 18
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @sprintf(i32 %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %229 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %230 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %229, i32 0, i32 11
  store i32 1, i32* %230, align 4
  br label %236

231:                                              ; preds = %208
  %232 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %233 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %232, i32 0, i32 18
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @sprintf(i32 %234, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %236

236:                                              ; preds = %231, %224, %217, %212
  br label %255

237:                                              ; preds = %204
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @SYS_CFG_VENDOR_ID, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %244 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %243, i32 0, i32 18
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @sprintf(i32 %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %247 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %248 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %247, i32 0, i32 11
  store i32 1, i32* %248, align 4
  br label %254

249:                                              ; preds = %237
  %250 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %251 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %250, i32 0, i32 18
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @sprintf(i32 %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %254

254:                                              ; preds = %249, %242
  br label %255

255:                                              ; preds = %254, %236
  %256 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %257 = load i32, i32* @REG_GPIO_OUTSTS, align 4
  %258 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %256, i32 %257)
  store i32 %258, i32* %5, align 4
  %259 = load i32, i32* %5, align 4
  %260 = load i32, i32* @GPIO_RF_RL_ID, align 4
  %261 = and i32 %259, %260
  %262 = ashr i32 %261, 28
  %263 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %264 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %263, i32 0, i32 12
  store i32 %262, i32* %264, align 8
  %265 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %266 = load i32, i32* @REG_NORMAL_SIE_EP_TX, align 4
  %267 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %265, i32 %266)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @NORMAL_SIE_EP_TX_HIGH_MASK, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %255
  %273 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %274 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %273, i32 0, i32 13
  store i32 1, i32* %274, align 4
  %275 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %276 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %275, i32 0, i32 17
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %272, %255
  %280 = load i32, i32* %7, align 4
  %281 = load i32, i32* @NORMAL_SIE_EP_TX_NORMAL_MASK, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %286 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %285, i32 0, i32 14
  store i32 1, i32* %286, align 8
  %287 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %288 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %287, i32 0, i32 17
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %284, %279
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* @NORMAL_SIE_EP_TX_LOW_MASK, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %291
  %297 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %298 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %297, i32 0, i32 15
  store i32 1, i32* %298, align 4
  %299 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %300 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %299, i32 0, i32 17
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 4
  br label %303

303:                                              ; preds = %296, %291
  %304 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %305 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %304, i32 0, i32 17
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %339, label %308

308:                                              ; preds = %303
  %309 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %310 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %309, i32 0, i32 16
  %311 = load i32, i32* %310, align 8
  switch i32 %311, label %333 [
    i32 4, label %312
    i32 3, label %312
    i32 2, label %319
    i32 1, label %326
  ]

312:                                              ; preds = %308, %308
  %313 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %314 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %313, i32 0, i32 15
  store i32 1, i32* %314, align 4
  %315 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %316 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %315, i32 0, i32 17
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %308, %312
  %320 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %321 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %320, i32 0, i32 14
  store i32 1, i32* %321, align 8
  %322 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %323 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %322, i32 0, i32 17
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %323, align 4
  br label %326

326:                                              ; preds = %308, %319
  %327 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %328 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %327, i32 0, i32 13
  store i32 1, i32* %328, align 4
  %329 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %330 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %329, i32 0, i32 17
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %330, align 4
  br label %338

333:                                              ; preds = %308
  %334 = load %struct.device*, %struct.device** %4, align 8
  %335 = call i32 @dev_info(%struct.device* %334, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %336 = load i32, i32* @ENOTSUPP, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %2, align 4
  br label %340

338:                                              ; preds = %326
  br label %339

339:                                              ; preds = %338, %303
  store i32 0, i32* %2, align 4
  br label %340

340:                                              ; preds = %339, %333, %26
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
