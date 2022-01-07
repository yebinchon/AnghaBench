; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_ConvertTxPowerByRateInDbmToRelativeValues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_ConvertTxPowerByRateInDbmToRelativeValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@MGN_1M = common dso_local global i64 0, align 8
@MGN_2M = common dso_local global i64 0, align 8
@MGN_5_5M = common dso_local global i64 0, align 8
@MGN_11M = common dso_local global i64 0, align 8
@MGN_6M = common dso_local global i64 0, align 8
@MGN_9M = common dso_local global i64 0, align 8
@MGN_12M = common dso_local global i64 0, align 8
@MGN_18M = common dso_local global i64 0, align 8
@MGN_24M = common dso_local global i64 0, align 8
@MGN_36M = common dso_local global i64 0, align 8
@MGN_48M = common dso_local global i64 0, align 8
@MGN_54M = common dso_local global i64 0, align 8
@MGN_MCS0 = common dso_local global i64 0, align 8
@MGN_MCS1 = common dso_local global i64 0, align 8
@MGN_MCS2 = common dso_local global i64 0, align 8
@MGN_MCS3 = common dso_local global i64 0, align 8
@MGN_MCS4 = common dso_local global i64 0, align 8
@MGN_MCS5 = common dso_local global i64 0, align 8
@MGN_MCS6 = common dso_local global i64 0, align 8
@MGN_MCS7 = common dso_local global i64 0, align 8
@MGN_MCS8 = common dso_local global i64 0, align 8
@MGN_MCS9 = common dso_local global i64 0, align 8
@MGN_MCS10 = common dso_local global i64 0, align 8
@MGN_MCS11 = common dso_local global i64 0, align 8
@MGN_MCS12 = common dso_local global i64 0, align 8
@MGN_MCS13 = common dso_local global i64 0, align 8
@MGN_MCS14 = common dso_local global i64 0, align 8
@MGN_MCS15 = common dso_local global i64 0, align 8
@MGN_MCS16 = common dso_local global i64 0, align 8
@MGN_MCS17 = common dso_local global i64 0, align 8
@MGN_MCS18 = common dso_local global i64 0, align 8
@MGN_MCS19 = common dso_local global i64 0, align 8
@MGN_MCS20 = common dso_local global i64 0, align 8
@MGN_MCS21 = common dso_local global i64 0, align 8
@MGN_MCS22 = common dso_local global i64 0, align 8
@MGN_MCS23 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS0 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS1 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS2 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS3 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS4 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS5 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS6 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS7 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS8 = common dso_local global i64 0, align 8
@MGN_VHT1SS_MCS9 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS0 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS1 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS2 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS3 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS4 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS5 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS6 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS7 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS8 = common dso_local global i64 0, align 8
@MGN_VHT2SS_MCS9 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS0 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS1 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS2 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS3 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS4 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS5 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS6 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS7 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS8 = common dso_local global i64 0, align 8
@MGN_VHT3SS_MCS9 = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@ODM_RF_PATH_D = common dso_local global i64 0, align 8
@RF_1TX = common dso_local global i64 0, align 8
@RF_MAX_TX_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @phy_ConvertTxPowerByRateInDbmToRelativeValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_ConvertTxPowerByRateInDbmToRelativeValues(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i64], align 16
  %10 = alloca [8 x i64], align 16
  %11 = alloca [8 x i64], align 16
  %12 = alloca [8 x i64], align 16
  %13 = alloca [8 x i64], align 16
  %14 = alloca [10 x i64], align 16
  %15 = alloca [10 x i64], align 16
  %16 = alloca [10 x i64], align 16
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %18 = load i64, i64* @MGN_1M, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 1
  %20 = load i64, i64* @MGN_2M, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 1
  %22 = load i64, i64* @MGN_5_5M, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 1
  %24 = load i64, i64* @MGN_11M, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  %26 = load i64, i64* @MGN_6M, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 1
  %28 = load i64, i64* @MGN_9M, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 1
  %30 = load i64, i64* @MGN_12M, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 1
  %32 = load i64, i64* @MGN_18M, align 8
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 1
  %34 = load i64, i64* @MGN_24M, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 1
  %36 = load i64, i64* @MGN_36M, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 1
  %38 = load i64, i64* @MGN_48M, align 8
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 1
  %40 = load i64, i64* @MGN_54M, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds [8 x i64], [8 x i64]* %11, i64 0, i64 0
  %42 = load i64, i64* @MGN_MCS0, align 8
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 1
  %44 = load i64, i64* @MGN_MCS1, align 8
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 1
  %46 = load i64, i64* @MGN_MCS2, align 8
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 1
  %48 = load i64, i64* @MGN_MCS3, align 8
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 1
  %50 = load i64, i64* @MGN_MCS4, align 8
  store i64 %50, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 1
  %52 = load i64, i64* @MGN_MCS5, align 8
  store i64 %52, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 1
  %54 = load i64, i64* @MGN_MCS6, align 8
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 1
  %56 = load i64, i64* @MGN_MCS7, align 8
  store i64 %56, i64* %55, align 8
  %57 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %58 = load i64, i64* @MGN_MCS8, align 8
  store i64 %58, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 1
  %60 = load i64, i64* @MGN_MCS9, align 8
  store i64 %60, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 1
  %62 = load i64, i64* @MGN_MCS10, align 8
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 1
  %64 = load i64, i64* @MGN_MCS11, align 8
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 1
  %66 = load i64, i64* @MGN_MCS12, align 8
  store i64 %66, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 1
  %68 = load i64, i64* @MGN_MCS13, align 8
  store i64 %68, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 1
  %70 = load i64, i64* @MGN_MCS14, align 8
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 1
  %72 = load i64, i64* @MGN_MCS15, align 8
  store i64 %72, i64* %71, align 8
  %73 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %74 = load i64, i64* @MGN_MCS16, align 8
  store i64 %74, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 1
  %76 = load i64, i64* @MGN_MCS17, align 8
  store i64 %76, i64* %75, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 1
  %78 = load i64, i64* @MGN_MCS18, align 8
  store i64 %78, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 1
  %80 = load i64, i64* @MGN_MCS19, align 8
  store i64 %80, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 1
  %82 = load i64, i64* @MGN_MCS20, align 8
  store i64 %82, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 1
  %84 = load i64, i64* @MGN_MCS21, align 8
  store i64 %84, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 1
  %86 = load i64, i64* @MGN_MCS22, align 8
  store i64 %86, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 1
  %88 = load i64, i64* @MGN_MCS23, align 8
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 0
  %90 = load i64, i64* @MGN_VHT1SS_MCS0, align 8
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 1
  %92 = load i64, i64* @MGN_VHT1SS_MCS1, align 8
  store i64 %92, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 1
  %94 = load i64, i64* @MGN_VHT1SS_MCS2, align 8
  store i64 %94, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 1
  %96 = load i64, i64* @MGN_VHT1SS_MCS3, align 8
  store i64 %96, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 1
  %98 = load i64, i64* @MGN_VHT1SS_MCS4, align 8
  store i64 %98, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 1
  %100 = load i64, i64* @MGN_VHT1SS_MCS5, align 8
  store i64 %100, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 1
  %102 = load i64, i64* @MGN_VHT1SS_MCS6, align 8
  store i64 %102, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 1
  %104 = load i64, i64* @MGN_VHT1SS_MCS7, align 8
  store i64 %104, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 1
  %106 = load i64, i64* @MGN_VHT1SS_MCS8, align 8
  store i64 %106, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 1
  %108 = load i64, i64* @MGN_VHT1SS_MCS9, align 8
  store i64 %108, i64* %107, align 8
  %109 = getelementptr inbounds [10 x i64], [10 x i64]* %15, i64 0, i64 0
  %110 = load i64, i64* @MGN_VHT2SS_MCS0, align 8
  store i64 %110, i64* %109, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 1
  %112 = load i64, i64* @MGN_VHT2SS_MCS1, align 8
  store i64 %112, i64* %111, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 1
  %114 = load i64, i64* @MGN_VHT2SS_MCS2, align 8
  store i64 %114, i64* %113, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 1
  %116 = load i64, i64* @MGN_VHT2SS_MCS3, align 8
  store i64 %116, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 1
  %118 = load i64, i64* @MGN_VHT2SS_MCS4, align 8
  store i64 %118, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 1
  %120 = load i64, i64* @MGN_VHT2SS_MCS5, align 8
  store i64 %120, i64* %119, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 1
  %122 = load i64, i64* @MGN_VHT2SS_MCS6, align 8
  store i64 %122, i64* %121, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 1
  %124 = load i64, i64* @MGN_VHT2SS_MCS7, align 8
  store i64 %124, i64* %123, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 1
  %126 = load i64, i64* @MGN_VHT2SS_MCS8, align 8
  store i64 %126, i64* %125, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 1
  %128 = load i64, i64* @MGN_VHT2SS_MCS9, align 8
  store i64 %128, i64* %127, align 8
  %129 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 0
  %130 = load i64, i64* @MGN_VHT3SS_MCS0, align 8
  store i64 %130, i64* %129, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 1
  %132 = load i64, i64* @MGN_VHT3SS_MCS1, align 8
  store i64 %132, i64* %131, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 1
  %134 = load i64, i64* @MGN_VHT3SS_MCS2, align 8
  store i64 %134, i64* %133, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 1
  %136 = load i64, i64* @MGN_VHT3SS_MCS3, align 8
  store i64 %136, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 1
  %138 = load i64, i64* @MGN_VHT3SS_MCS4, align 8
  store i64 %138, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 1
  %140 = load i64, i64* @MGN_VHT3SS_MCS5, align 8
  store i64 %140, i64* %139, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 1
  %142 = load i64, i64* @MGN_VHT3SS_MCS6, align 8
  store i64 %142, i64* %141, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 1
  %144 = load i64, i64* @MGN_VHT3SS_MCS7, align 8
  store i64 %144, i64* %143, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 1
  %146 = load i64, i64* @MGN_VHT3SS_MCS8, align 8
  store i64 %146, i64* %145, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 1
  %148 = load i64, i64* @MGN_VHT3SS_MCS9, align 8
  store i64 %148, i64* %147, align 8
  %149 = load i64, i64* @BAND_ON_2_4G, align 8
  store i64 %149, i64* %6, align 8
  br label %150

150:                                              ; preds = %441, %1
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* @BAND_ON_5G, align 8
  %153 = icmp sle i64 %151, %152
  br i1 %153, label %154, label %444

154:                                              ; preds = %150
  %155 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %155, i64* %7, align 8
  br label %156

156:                                              ; preds = %437, %154
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* @ODM_RF_PATH_D, align 8
  %159 = icmp sle i64 %157, %158
  br i1 %159, label %160, label %440

160:                                              ; preds = %156
  %161 = load i64, i64* @RF_1TX, align 8
  store i64 %161, i64* %8, align 8
  br label %162

162:                                              ; preds = %433, %160
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* @RF_MAX_TX_NUM, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %436

166:                                              ; preds = %162
  %167 = load %struct.adapter*, %struct.adapter** %2, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* @MGN_11M, align 8
  %172 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %167, i64 %168, i64 %169, i64 %170, i64 %171)
  store i64 %172, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %173

173:                                              ; preds = %198, %166
  %174 = load i64, i64* %4, align 8
  %175 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %176 = call i64 @ARRAY_SIZE(i64* %175)
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %178, label %201

178:                                              ; preds = %173
  %179 = load %struct.adapter*, %struct.adapter** %2, align 8
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %4, align 8
  %184 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %179, i64 %180, i64 %181, i64 %182, i64 %185)
  store i64 %186, i64* %5, align 8
  %187 = load %struct.adapter*, %struct.adapter** %2, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load i64, i64* %7, align 8
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* %4, align 8
  %192 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %5, align 8
  %195 = load i64, i64* %3, align 8
  %196 = sub nsw i64 %194, %195
  %197 = call i32 @PHY_SetTxPowerByRate(%struct.adapter* %187, i64 %188, i64 %189, i64 %190, i64 %193, i64 %196)
  br label %198

198:                                              ; preds = %178
  %199 = load i64, i64* %4, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %4, align 8
  br label %173

201:                                              ; preds = %173
  %202 = load %struct.adapter*, %struct.adapter** %2, align 8
  %203 = load i64, i64* %6, align 8
  %204 = load i64, i64* %7, align 8
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* @MGN_54M, align 8
  %207 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %202, i64 %203, i64 %204, i64 %205, i64 %206)
  store i64 %207, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %208

208:                                              ; preds = %231, %201
  %209 = load i64, i64* %4, align 8
  %210 = icmp ult i64 %209, 64
  br i1 %210, label %211, label %234

211:                                              ; preds = %208
  %212 = load %struct.adapter*, %struct.adapter** %2, align 8
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* %7, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load i64, i64* %4, align 8
  %217 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %212, i64 %213, i64 %214, i64 %215, i64 %218)
  store i64 %219, i64* %5, align 8
  %220 = load %struct.adapter*, %struct.adapter** %2, align 8
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* %8, align 8
  %224 = load i64, i64* %4, align 8
  %225 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %5, align 8
  %228 = load i64, i64* %3, align 8
  %229 = sub nsw i64 %227, %228
  %230 = call i32 @PHY_SetTxPowerByRate(%struct.adapter* %220, i64 %221, i64 %222, i64 %223, i64 %226, i64 %229)
  br label %231

231:                                              ; preds = %211
  %232 = load i64, i64* %4, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %4, align 8
  br label %208

234:                                              ; preds = %208
  %235 = load %struct.adapter*, %struct.adapter** %2, align 8
  %236 = load i64, i64* %6, align 8
  %237 = load i64, i64* %7, align 8
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* @MGN_MCS7, align 8
  %240 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %235, i64 %236, i64 %237, i64 %238, i64 %239)
  store i64 %240, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %241

241:                                              ; preds = %264, %234
  %242 = load i64, i64* %4, align 8
  %243 = icmp ult i64 %242, 64
  br i1 %243, label %244, label %267

244:                                              ; preds = %241
  %245 = load %struct.adapter*, %struct.adapter** %2, align 8
  %246 = load i64, i64* %6, align 8
  %247 = load i64, i64* %7, align 8
  %248 = load i64, i64* %8, align 8
  %249 = load i64, i64* %4, align 8
  %250 = getelementptr inbounds [8 x i64], [8 x i64]* %11, i64 0, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %245, i64 %246, i64 %247, i64 %248, i64 %251)
  store i64 %252, i64* %5, align 8
  %253 = load %struct.adapter*, %struct.adapter** %2, align 8
  %254 = load i64, i64* %6, align 8
  %255 = load i64, i64* %7, align 8
  %256 = load i64, i64* %8, align 8
  %257 = load i64, i64* %4, align 8
  %258 = getelementptr inbounds [8 x i64], [8 x i64]* %11, i64 0, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %5, align 8
  %261 = load i64, i64* %3, align 8
  %262 = sub nsw i64 %260, %261
  %263 = call i32 @PHY_SetTxPowerByRate(%struct.adapter* %253, i64 %254, i64 %255, i64 %256, i64 %259, i64 %262)
  br label %264

264:                                              ; preds = %244
  %265 = load i64, i64* %4, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %4, align 8
  br label %241

267:                                              ; preds = %241
  %268 = load %struct.adapter*, %struct.adapter** %2, align 8
  %269 = load i64, i64* %6, align 8
  %270 = load i64, i64* %7, align 8
  %271 = load i64, i64* %8, align 8
  %272 = load i64, i64* @MGN_MCS15, align 8
  %273 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %268, i64 %269, i64 %270, i64 %271, i64 %272)
  store i64 %273, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %274

274:                                              ; preds = %297, %267
  %275 = load i64, i64* %4, align 8
  %276 = icmp ult i64 %275, 64
  br i1 %276, label %277, label %300

277:                                              ; preds = %274
  %278 = load %struct.adapter*, %struct.adapter** %2, align 8
  %279 = load i64, i64* %6, align 8
  %280 = load i64, i64* %7, align 8
  %281 = load i64, i64* %8, align 8
  %282 = load i64, i64* %4, align 8
  %283 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %278, i64 %279, i64 %280, i64 %281, i64 %284)
  store i64 %285, i64* %5, align 8
  %286 = load %struct.adapter*, %struct.adapter** %2, align 8
  %287 = load i64, i64* %6, align 8
  %288 = load i64, i64* %7, align 8
  %289 = load i64, i64* %8, align 8
  %290 = load i64, i64* %4, align 8
  %291 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* %5, align 8
  %294 = load i64, i64* %3, align 8
  %295 = sub nsw i64 %293, %294
  %296 = call i32 @PHY_SetTxPowerByRate(%struct.adapter* %286, i64 %287, i64 %288, i64 %289, i64 %292, i64 %295)
  br label %297

297:                                              ; preds = %277
  %298 = load i64, i64* %4, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %4, align 8
  br label %274

300:                                              ; preds = %274
  %301 = load %struct.adapter*, %struct.adapter** %2, align 8
  %302 = load i64, i64* %6, align 8
  %303 = load i64, i64* %7, align 8
  %304 = load i64, i64* %8, align 8
  %305 = load i64, i64* @MGN_MCS23, align 8
  %306 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %301, i64 %302, i64 %303, i64 %304, i64 %305)
  store i64 %306, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %307

307:                                              ; preds = %330, %300
  %308 = load i64, i64* %4, align 8
  %309 = icmp ult i64 %308, 64
  br i1 %309, label %310, label %333

310:                                              ; preds = %307
  %311 = load %struct.adapter*, %struct.adapter** %2, align 8
  %312 = load i64, i64* %6, align 8
  %313 = load i64, i64* %7, align 8
  %314 = load i64, i64* %8, align 8
  %315 = load i64, i64* %4, align 8
  %316 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %311, i64 %312, i64 %313, i64 %314, i64 %317)
  store i64 %318, i64* %5, align 8
  %319 = load %struct.adapter*, %struct.adapter** %2, align 8
  %320 = load i64, i64* %6, align 8
  %321 = load i64, i64* %7, align 8
  %322 = load i64, i64* %8, align 8
  %323 = load i64, i64* %4, align 8
  %324 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* %5, align 8
  %327 = load i64, i64* %3, align 8
  %328 = sub nsw i64 %326, %327
  %329 = call i32 @PHY_SetTxPowerByRate(%struct.adapter* %319, i64 %320, i64 %321, i64 %322, i64 %325, i64 %328)
  br label %330

330:                                              ; preds = %310
  %331 = load i64, i64* %4, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %4, align 8
  br label %307

333:                                              ; preds = %307
  %334 = load %struct.adapter*, %struct.adapter** %2, align 8
  %335 = load i64, i64* %6, align 8
  %336 = load i64, i64* %7, align 8
  %337 = load i64, i64* %8, align 8
  %338 = load i64, i64* @MGN_VHT1SS_MCS7, align 8
  %339 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %334, i64 %335, i64 %336, i64 %337, i64 %338)
  store i64 %339, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %340

340:                                              ; preds = %363, %333
  %341 = load i64, i64* %4, align 8
  %342 = icmp ult i64 %341, 80
  br i1 %342, label %343, label %366

343:                                              ; preds = %340
  %344 = load %struct.adapter*, %struct.adapter** %2, align 8
  %345 = load i64, i64* %6, align 8
  %346 = load i64, i64* %7, align 8
  %347 = load i64, i64* %8, align 8
  %348 = load i64, i64* %4, align 8
  %349 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %344, i64 %345, i64 %346, i64 %347, i64 %350)
  store i64 %351, i64* %5, align 8
  %352 = load %struct.adapter*, %struct.adapter** %2, align 8
  %353 = load i64, i64* %6, align 8
  %354 = load i64, i64* %7, align 8
  %355 = load i64, i64* %8, align 8
  %356 = load i64, i64* %4, align 8
  %357 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* %5, align 8
  %360 = load i64, i64* %3, align 8
  %361 = sub nsw i64 %359, %360
  %362 = call i32 @PHY_SetTxPowerByRate(%struct.adapter* %352, i64 %353, i64 %354, i64 %355, i64 %358, i64 %361)
  br label %363

363:                                              ; preds = %343
  %364 = load i64, i64* %4, align 8
  %365 = add nsw i64 %364, 1
  store i64 %365, i64* %4, align 8
  br label %340

366:                                              ; preds = %340
  %367 = load %struct.adapter*, %struct.adapter** %2, align 8
  %368 = load i64, i64* %6, align 8
  %369 = load i64, i64* %7, align 8
  %370 = load i64, i64* %8, align 8
  %371 = load i64, i64* @MGN_VHT2SS_MCS7, align 8
  %372 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %367, i64 %368, i64 %369, i64 %370, i64 %371)
  store i64 %372, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %373

373:                                              ; preds = %396, %366
  %374 = load i64, i64* %4, align 8
  %375 = icmp ult i64 %374, 80
  br i1 %375, label %376, label %399

376:                                              ; preds = %373
  %377 = load %struct.adapter*, %struct.adapter** %2, align 8
  %378 = load i64, i64* %6, align 8
  %379 = load i64, i64* %7, align 8
  %380 = load i64, i64* %8, align 8
  %381 = load i64, i64* %4, align 8
  %382 = getelementptr inbounds [10 x i64], [10 x i64]* %15, i64 0, i64 %381
  %383 = load i64, i64* %382, align 8
  %384 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %377, i64 %378, i64 %379, i64 %380, i64 %383)
  store i64 %384, i64* %5, align 8
  %385 = load %struct.adapter*, %struct.adapter** %2, align 8
  %386 = load i64, i64* %6, align 8
  %387 = load i64, i64* %7, align 8
  %388 = load i64, i64* %8, align 8
  %389 = load i64, i64* %4, align 8
  %390 = getelementptr inbounds [10 x i64], [10 x i64]* %15, i64 0, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* %5, align 8
  %393 = load i64, i64* %3, align 8
  %394 = sub nsw i64 %392, %393
  %395 = call i32 @PHY_SetTxPowerByRate(%struct.adapter* %385, i64 %386, i64 %387, i64 %388, i64 %391, i64 %394)
  br label %396

396:                                              ; preds = %376
  %397 = load i64, i64* %4, align 8
  %398 = add nsw i64 %397, 1
  store i64 %398, i64* %4, align 8
  br label %373

399:                                              ; preds = %373
  %400 = load %struct.adapter*, %struct.adapter** %2, align 8
  %401 = load i64, i64* %6, align 8
  %402 = load i64, i64* %7, align 8
  %403 = load i64, i64* %8, align 8
  %404 = load i64, i64* @MGN_VHT3SS_MCS7, align 8
  %405 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %400, i64 %401, i64 %402, i64 %403, i64 %404)
  store i64 %405, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %406

406:                                              ; preds = %429, %399
  %407 = load i64, i64* %4, align 8
  %408 = icmp ult i64 %407, 80
  br i1 %408, label %409, label %432

409:                                              ; preds = %406
  %410 = load %struct.adapter*, %struct.adapter** %2, align 8
  %411 = load i64, i64* %6, align 8
  %412 = load i64, i64* %7, align 8
  %413 = load i64, i64* %8, align 8
  %414 = load i64, i64* %4, align 8
  %415 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %410, i64 %411, i64 %412, i64 %413, i64 %416)
  store i64 %417, i64* %5, align 8
  %418 = load %struct.adapter*, %struct.adapter** %2, align 8
  %419 = load i64, i64* %6, align 8
  %420 = load i64, i64* %7, align 8
  %421 = load i64, i64* %8, align 8
  %422 = load i64, i64* %4, align 8
  %423 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* %5, align 8
  %426 = load i64, i64* %3, align 8
  %427 = sub nsw i64 %425, %426
  %428 = call i32 @PHY_SetTxPowerByRate(%struct.adapter* %418, i64 %419, i64 %420, i64 %421, i64 %424, i64 %427)
  br label %429

429:                                              ; preds = %409
  %430 = load i64, i64* %4, align 8
  %431 = add nsw i64 %430, 1
  store i64 %431, i64* %4, align 8
  br label %406

432:                                              ; preds = %406
  br label %433

433:                                              ; preds = %432
  %434 = load i64, i64* %8, align 8
  %435 = add nsw i64 %434, 1
  store i64 %435, i64* %8, align 8
  br label %162

436:                                              ; preds = %162
  br label %437

437:                                              ; preds = %436
  %438 = load i64, i64* %7, align 8
  %439 = add nsw i64 %438, 1
  store i64 %439, i64* %7, align 8
  br label %156

440:                                              ; preds = %156
  br label %441

441:                                              ; preds = %440
  %442 = load i64, i64* %6, align 8
  %443 = add nsw i64 %442, 1
  store i64 %443, i64* %6, align 8
  br label %150

444:                                              ; preds = %150
  ret void
}

declare dso_local i64 @PHY_GetTxPowerByRate(%struct.adapter*, i64, i64, i64, i64) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @PHY_SetTxPowerByRate(%struct.adapter*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
