; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mvebu_comphy_lane = type { i32, i32, i32, i32, %struct.mvebu_comphy_priv* }
%struct.mvebu_comphy_priv = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"set lane %d to RXAUI mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"set lane %d to 1000BASE-X mode\0A\00", align 1
@COMPHY_FW_SPEED_1250 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"set lane %d to 2500BASE-X mode\0A\00", align 1
@COMPHY_FW_SPEED_3125 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"set lane %d to 10G-KR mode\0A\00", align 1
@COMPHY_FW_SPEED_103125 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"unsupported Ethernet mode (%d)\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"set lane %d to USB3 mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"set lane %d to SATA mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"set lane %d to PCIe mode (x%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"unsupported PHY mode (%d)\0A\00", align 1
@COMPHY_SIP_POWER_ON = common dso_local global i32 0, align 4
@COMPHY_FW_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"unsupported SMC call, try updating your firmware\0A\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"Firmware could not configure PHY %d with mode %d (ret: %d), trying legacy method\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mvebu_comphy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_comphy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.mvebu_comphy_lane*, align 8
  %5 = alloca %struct.mvebu_comphy_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %10 = load %struct.phy*, %struct.phy** %3, align 8
  %11 = call %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy* %10)
  store %struct.mvebu_comphy_lane* %11, %struct.mvebu_comphy_lane** %4, align 8
  %12 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %13 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %12, i32 0, i32 4
  %14 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %13, align 8
  store %struct.mvebu_comphy_priv* %14, %struct.mvebu_comphy_priv** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %16 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %19 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %22 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %25 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mvebu_comphy_get_fw_mode(i32 %17, i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %181

31:                                               ; preds = %1
  %32 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %33 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %136 [
    i32 132, label %35
    i32 128, label %91
    i32 129, label %91
    i32 130, label %104
    i32 131, label %117
  ]

35:                                               ; preds = %31
  %36 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %37 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %74 [
    i32 134, label %39
    i32 133, label %47
    i32 135, label %56
    i32 136, label %65
  ]

39:                                               ; preds = %35
  %40 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %41 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %44 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %7, align 4
  br label %84

47:                                               ; preds = %35
  %48 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %49 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %52 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @COMPHY_FW_SPEED_1250, align 4
  store i32 %55, i32* %7, align 4
  br label %84

56:                                               ; preds = %35
  %57 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %58 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %61 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @COMPHY_FW_SPEED_3125, align 4
  store i32 %64, i32* %7, align 4
  br label %84

65:                                               ; preds = %35
  %66 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %67 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %70 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @COMPHY_FW_SPEED_103125, align 4
  store i32 %73, i32* %7, align 4
  br label %84

74:                                               ; preds = %35
  %75 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %76 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %79 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %184

84:                                               ; preds = %65, %56, %47, %39
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %87 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @COMPHY_FW_PARAM_ETH(i32 %85, i32 %88, i32 %89)
  store i32 %90, i32* %8, align 4
  br label %146

91:                                               ; preds = %31, %31
  %92 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %93 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %96 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %101 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @COMPHY_FW_PARAM(i32 %99, i32 %102)
  store i32 %103, i32* %8, align 4
  br label %146

104:                                              ; preds = %31
  %105 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %106 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %109 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %114 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @COMPHY_FW_PARAM(i32 %112, i32 %115)
  store i32 %116, i32* %8, align 4
  br label %146

117:                                              ; preds = %31
  %118 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %119 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %122 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %125 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %123, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %130 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %133 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @COMPHY_FW_PARAM_PCIE(i32 %128, i32 %131, i32 %134)
  store i32 %135, i32* %8, align 4
  br label %146

136:                                              ; preds = %31
  %137 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %138 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %141 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @dev_err(i32 %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @ENOTSUPP, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %184

146:                                              ; preds = %117, %104, %91, %84
  %147 = load i32, i32* @COMPHY_SIP_POWER_ON, align 4
  %148 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %149 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %152 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @mvebu_comphy_smc(i32 %147, i32 %150, i32 %153, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %146
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %2, align 4
  br label %184

160:                                              ; preds = %146
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @COMPHY_FW_NOT_SUPPORTED, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %166 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, ...) @dev_err(i32 %167, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  br label %169

169:                                              ; preds = %164, %160
  %170 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %171 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %174 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %177 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @dev_warn(i32 %172, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0), i32 %175, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %169, %30
  %182 = load %struct.phy*, %struct.phy** %3, align 8
  %183 = call i32 @mvebu_comphy_power_on_legacy(%struct.phy* %182)
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %181, %158, %136, %74
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mvebu_comphy_get_fw_mode(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @COMPHY_FW_PARAM_ETH(i32, i32, i32) #1

declare dso_local i32 @COMPHY_FW_PARAM(i32, i32) #1

declare dso_local i32 @COMPHY_FW_PARAM_PCIE(i32, i32, i32) #1

declare dso_local i32 @mvebu_comphy_smc(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mvebu_comphy_power_on_legacy(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
