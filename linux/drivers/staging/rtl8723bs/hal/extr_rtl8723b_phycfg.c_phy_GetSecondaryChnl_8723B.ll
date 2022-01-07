; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_GetSecondaryChnl_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_GetSecondaryChnl_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64, i64, i64 }

@_module_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"SCMapping: VHT Case: pHalData->CurrentChannelBW %d, pHalData->nCur80MhzPrimeSC %d, pHalData->nCur40MhzPrimeSC %d\0A\00", align 1
@CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@VHT_DATA_SC_40_LOWER_OF_80MHZ = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@VHT_DATA_SC_40_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"SCMapping: Not Correct Primary40MHz Setting\0A\00", align 1
@VHT_DATA_SC_20_LOWEST_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_LOWER_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_UPPERST_OF_80MHZ = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"SCMapping: VHT Case: pHalData->CurrentChannelBW %d, pHalData->nCur40MhzPrimeSC %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SCMapping: SC Value %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @phy_GetSecondaryChnl_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_GetSecondaryChnl_8723B(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %6)
  store %struct.hal_com_data* %7, %struct.hal_com_data** %5, align 8
  %8 = load i32, i32* @_module_hal_init_c_, align 4
  %9 = load i32, i32* @_drv_info_, align 4
  %10 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %11 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %14 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %17 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @RT_TRACE(i32 %8, i32 %9, i8* %19)
  %21 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %22 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHANNEL_WIDTH_80, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %111

26:                                               ; preds = %1
  %27 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %28 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @VHT_DATA_SC_40_LOWER_OF_80MHZ, align 4
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %26
  %35 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %36 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @VHT_DATA_SC_40_UPPER_OF_80MHZ, align 4
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @_module_hal_init_c_, align 4
  %44 = load i32, i32* @_drv_err_, align 4
  %45 = call i32 @RT_TRACE(i32 %43, i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %40
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %49 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %55 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @VHT_DATA_SC_20_LOWEST_OF_80MHZ, align 4
  store i32 %60, i32* %4, align 4
  br label %110

61:                                               ; preds = %53, %47
  %62 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %63 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %69 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @VHT_DATA_SC_20_LOWER_OF_80MHZ, align 4
  store i32 %74, i32* %4, align 4
  br label %109

75:                                               ; preds = %67, %61
  %76 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %77 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %83 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  store i32 %88, i32* %4, align 4
  br label %108

89:                                               ; preds = %81, %75
  %90 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %91 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %97 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @VHT_DATA_SC_20_UPPERST_OF_80MHZ, align 4
  store i32 %102, i32* %4, align 4
  br label %107

103:                                              ; preds = %95, %89
  %104 = load i32, i32* @_module_hal_init_c_, align 4
  %105 = load i32, i32* @_drv_err_, align 4
  %106 = call i32 @RT_TRACE(i32 %104, i32 %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %101
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %108, %73
  br label %110

110:                                              ; preds = %109, %59
  br label %150

111:                                              ; preds = %1
  %112 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %113 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %111
  %118 = load i32, i32* @_module_hal_init_c_, align 4
  %119 = load i32, i32* @_drv_info_, align 4
  %120 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %121 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %124 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @RT_TRACE(i32 %118, i32 %119, i8* %126)
  %128 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %129 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %117
  %134 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  store i32 %134, i32* %4, align 4
  br label %148

135:                                              ; preds = %117
  %136 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %137 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @VHT_DATA_SC_20_LOWER_OF_80MHZ, align 4
  store i32 %142, i32* %4, align 4
  br label %147

143:                                              ; preds = %135
  %144 = load i32, i32* @_module_hal_init_c_, align 4
  %145 = load i32, i32* @_drv_err_, align 4
  %146 = call i32 @RT_TRACE(i32 %144, i32 %145, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %141
  br label %148

148:                                              ; preds = %147, %133
  br label %149

149:                                              ; preds = %148, %111
  br label %150

150:                                              ; preds = %149, %110
  %151 = load i32, i32* @_module_hal_init_c_, align 4
  %152 = load i32, i32* @_drv_info_, align 4
  %153 = load i32, i32* %3, align 4
  %154 = shl i32 %153, 4
  %155 = load i32, i32* %4, align 4
  %156 = or i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = call i32 @RT_TRACE(i32 %151, i32 %152, i8* %158)
  %160 = load i32, i32* %3, align 4
  %161 = shl i32 %160, 4
  %162 = load i32, i32* %4, align 4
  %163 = or i32 %161, %162
  ret i32 %163
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
