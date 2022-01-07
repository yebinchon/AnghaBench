; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_ConvertTxPowerLimitToPowerIndex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_ConvertTxPowerLimitToPowerIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hal_com_data = type { i64*****, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MAX_REGULATION_NUM = common dso_local global i64 0, align 8
@MAX_2_4G_BANDWITH_NUM = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER_2G = common dso_local global i64 0, align 8
@MAX_RATE_SECTION_NUM = common dso_local global i64 0, align 8
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@MAX_RF_PATH_NUM = common dso_local global i64 0, align 8
@PHY_REG_PG_EXACT_VALUE = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@RF_4TX = common dso_local global i32 0, align 4
@HT_MCS24_MCS31 = common dso_local global i32 0, align 4
@RF_3TX = common dso_local global i32 0, align 4
@HT_MCS16_MCS23 = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i32 0, align 4
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4
@RF_1TX = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@CCK = common dso_local global i32 0, align 4
@MAX_POWER_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_ConvertTxPowerLimitToPowerIndex(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %12)
  store %struct.hal_com_data* %13, %struct.hal_com_data** %3, align 8
  store i64 46, i64* %4, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = call i32 @phy_CrossReferenceHTAndVHTTxPowerLimit(%struct.adapter* %14)
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %182, %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %185

20:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %178, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MAX_2_4G_BANDWITH_NUM, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %181

25:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %174, %25
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @CHANNEL_MAX_NUMBER_2G, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %177

30:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %170, %30
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @MAX_RATE_SECTION_NUM, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %173

35:                                               ; preds = %31
  %36 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %37 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %36, i32 0, i32 0
  %38 = load i64*****, i64****** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i64****, i64***** %38, i64 %39
  %41 = load i64****, i64***** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i64***, i64**** %41, i64 %42
  %44 = load i64***, i64**** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i64**, i64*** %44, i64 %45
  %47 = load i64**, i64*** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i64*, i64** %47, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @ODM_RF_PATH_A, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %166, %35
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @MAX_RF_PATH_NUM, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %169

59:                                               ; preds = %55
  %60 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %61 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PHY_REG_PG_EXACT_VALUE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %132

66:                                               ; preds = %59
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %67, 5
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = load i32, i32* @BAND_ON_2_4G, align 4
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* @RF_4TX, align 4
  %74 = load i32, i32* @HT_MCS24_MCS31, align 4
  %75 = call i64 @PHY_GetTxPowerByRateBase(%struct.adapter* %70, i32 %71, i64 %72, i32 %73, i32 %74)
  store i64 %75, i64* %4, align 8
  br label %131

76:                                               ; preds = %66
  %77 = load i64, i64* %8, align 8
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.adapter*, %struct.adapter** %2, align 8
  %81 = load i32, i32* @BAND_ON_2_4G, align 4
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* @RF_3TX, align 4
  %84 = load i32, i32* @HT_MCS16_MCS23, align 4
  %85 = call i64 @PHY_GetTxPowerByRateBase(%struct.adapter* %80, i32 %81, i64 %82, i32 %83, i32 %84)
  store i64 %85, i64* %4, align 8
  br label %130

86:                                               ; preds = %76
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %87, 3
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.adapter*, %struct.adapter** %2, align 8
  %91 = load i32, i32* @BAND_ON_2_4G, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* @RF_2TX, align 4
  %94 = load i32, i32* @HT_MCS8_MCS15, align 4
  %95 = call i64 @PHY_GetTxPowerByRateBase(%struct.adapter* %90, i32 %91, i64 %92, i32 %93, i32 %94)
  store i64 %95, i64* %4, align 8
  br label %129

96:                                               ; preds = %86
  %97 = load i64, i64* %8, align 8
  %98 = icmp eq i64 %97, 2
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.adapter*, %struct.adapter** %2, align 8
  %101 = load i32, i32* @BAND_ON_2_4G, align 4
  %102 = load i64, i64* %11, align 8
  %103 = load i32, i32* @RF_1TX, align 4
  %104 = load i32, i32* @HT_MCS0_MCS7, align 4
  %105 = call i64 @PHY_GetTxPowerByRateBase(%struct.adapter* %100, i32 %101, i64 %102, i32 %103, i32 %104)
  store i64 %105, i64* %4, align 8
  br label %128

106:                                              ; preds = %96
  %107 = load i64, i64* %8, align 8
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.adapter*, %struct.adapter** %2, align 8
  %111 = load i32, i32* @BAND_ON_2_4G, align 4
  %112 = load i64, i64* %11, align 8
  %113 = load i32, i32* @RF_1TX, align 4
  %114 = load i32, i32* @OFDM, align 4
  %115 = call i64 @PHY_GetTxPowerByRateBase(%struct.adapter* %110, i32 %111, i64 %112, i32 %113, i32 %114)
  store i64 %115, i64* %4, align 8
  br label %127

116:                                              ; preds = %106
  %117 = load i64, i64* %8, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.adapter*, %struct.adapter** %2, align 8
  %121 = load i32, i32* @BAND_ON_2_4G, align 4
  %122 = load i64, i64* %11, align 8
  %123 = load i32, i32* @RF_1TX, align 4
  %124 = load i32, i32* @CCK, align 4
  %125 = call i64 @PHY_GetTxPowerByRateBase(%struct.adapter* %120, i32 %121, i64 %122, i32 %123, i32 %124)
  store i64 %125, i64* %4, align 8
  br label %126

126:                                              ; preds = %119, %116
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %99
  br label %129

129:                                              ; preds = %128, %89
  br label %130

130:                                              ; preds = %129, %79
  br label %131

131:                                              ; preds = %130, %69
  br label %139

132:                                              ; preds = %59
  %133 = load %struct.adapter*, %struct.adapter** %2, align 8
  %134 = getelementptr inbounds %struct.adapter, %struct.adapter* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %4, align 8
  br label %139

139:                                              ; preds = %132, %131
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* @MAX_POWER_INDEX, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %4, align 8
  %146 = sub i64 %144, %145
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %149 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %148, i32 0, i32 0
  %150 = load i64*****, i64****** %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds i64****, i64***** %150, i64 %151
  %153 = load i64****, i64***** %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = getelementptr inbounds i64***, i64**** %153, i64 %154
  %156 = load i64***, i64**** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds i64**, i64*** %156, i64 %157
  %159 = load i64**, i64*** %158, align 8
  %160 = load i64, i64* %7, align 8
  %161 = getelementptr inbounds i64*, i64** %159, i64 %160
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %11, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  store i64 %147, i64* %164, align 8
  br label %165

165:                                              ; preds = %143, %139
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %11, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %11, align 8
  br label %55

169:                                              ; preds = %55
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %8, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %8, align 8
  br label %31

173:                                              ; preds = %31
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %7, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %7, align 8
  br label %26

177:                                              ; preds = %26
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %6, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %6, align 8
  br label %21

181:                                              ; preds = %21
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %5, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %5, align 8
  br label %16

185:                                              ; preds = %16
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @phy_CrossReferenceHTAndVHTTxPowerLimit(%struct.adapter*) #1

declare dso_local i64 @PHY_GetTxPowerByRateBase(%struct.adapter*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
