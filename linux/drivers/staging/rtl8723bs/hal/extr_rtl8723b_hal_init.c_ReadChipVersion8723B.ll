; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_ReadChipVersion8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_ReadChipVersion8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, %struct.TYPE_6__, i32, i32, i32 }

@REG_SYS_CFG = common dso_local global i32 0, align 4
@CHIP_8723B = common dso_local global i32 0, align 4
@RTL_ID = common dso_local global i32 0, align 4
@TEST_CHIP = common dso_local global i32 0, align 4
@NORMAL_CHIP = common dso_local global i32 0, align 4
@RF_TYPE_1T1R = common dso_local global i32 0, align 4
@VENDOR_ID = common dso_local global i32 0, align 4
@CHIP_VENDOR_UMC = common dso_local global i32 0, align 4
@CHIP_VENDOR_TSMC = common dso_local global i32 0, align 4
@CHIP_VER_RTL_MASK = common dso_local global i32 0, align 4
@CHIP_VER_RTL_SHIFT = common dso_local global i32 0, align 4
@SPS_SEL = common dso_local global i32 0, align 4
@RT_LDO_REGULATOR = common dso_local global i32 0, align 4
@RT_SWITCHING_REGULATOR = common dso_local global i32 0, align 4
@REG_GPIO_OUTSTS = common dso_local global i32 0, align 4
@RF_RL_ID = common dso_local global i32 0, align 4
@RT_MULTI_FUNC_NONE = common dso_local global i32 0, align 4
@REG_MULTI_FUNC_CTRL = common dso_local global i32 0, align 4
@WL_FUNC_EN = common dso_local global i32 0, align 4
@RT_MULTI_FUNC_WIFI = common dso_local global i32 0, align 4
@BT_FUNC_EN = common dso_local global i32 0, align 4
@RT_MULTI_FUNC_BT = common dso_local global i32 0, align 4
@GPS_FUNC_EN = common dso_local global i32 0, align 4
@RT_MULTI_FUNC_GPS = common dso_local global i32 0, align 4
@WL_HWPDN_SL = common dso_local global i32 0, align 4
@RT_POLARITY_HIGH_ACT = common dso_local global i32 0, align 4
@RT_POLARITY_LOW_ACT = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RF_Type is %x!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.adapter*)* @ReadChipVersion8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadChipVersion8723B(%struct.TYPE_6__* noalias sret %0, %struct.adapter* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hal_com_data*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store %struct.adapter* %1, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %9)
  store %struct.hal_com_data* %10, %struct.hal_com_data** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = load i32, i32* @REG_SYS_CFG, align 4
  %13 = call i32 @rtw_read32(%struct.adapter* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @CHIP_8723B, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RTL_ID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @TEST_CHIP, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @NORMAL_CHIP, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @RF_TYPE_1T1R, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VENDOR_ID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @CHIP_VENDOR_UMC, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @CHIP_VENDOR_TSMC, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @CHIP_VER_RTL_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @CHIP_VER_RTL_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SPS_SEL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @RT_LDO_REGULATOR, align 4
  br label %54

52:                                               ; preds = %37
  %53 = load i32, i32* @RT_SWITCHING_REGULATOR, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %57 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = load i32, i32* @REG_GPIO_OUTSTS, align 4
  %60 = call i32 @rtw_read32(%struct.adapter* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @RF_RL_ID, align 4
  %63 = and i32 %61, %62
  %64 = ashr i32 %63, 20
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @RT_MULTI_FUNC_NONE, align 4
  %67 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %68 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.adapter*, %struct.adapter** %3, align 8
  %70 = load i32, i32* @REG_MULTI_FUNC_CTRL, align 4
  %71 = call i32 @rtw_read32(%struct.adapter* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @WL_FUNC_EN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %54
  %77 = load i32, i32* @RT_MULTI_FUNC_WIFI, align 4
  br label %79

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %82 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @BT_FUNC_EN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @RT_MULTI_FUNC_BT, align 4
  br label %92

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %95 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @GPS_FUNC_EN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* @RT_MULTI_FUNC_GPS, align 4
  br label %105

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  %107 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %108 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @WL_HWPDN_SL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* @RT_POLARITY_HIGH_ACT, align 4
  br label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @RT_POLARITY_LOW_ACT, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %122 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = bitcast %struct.TYPE_6__* %6 to i8*
  %124 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 4 %124, i64 24, i1 false)
  %125 = call i32 @dump_chip_info(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %6)
  %126 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %127 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %126, i32 0, i32 1
  %128 = bitcast %struct.TYPE_6__* %127 to i8*
  %129 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 24, i1 false)
  %130 = bitcast %struct.TYPE_6__* %7 to i8*
  %131 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 4 %131, i64 24, i1 false)
  %132 = call i64 @IS_1T2R(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %7)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load i32, i32* @RF_1T2R, align 4
  %136 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %137 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  br label %152

138:                                              ; preds = %119
  %139 = bitcast %struct.TYPE_6__* %8 to i8*
  %140 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 4 %140, i64 24, i1 false)
  %141 = call i64 @IS_2T2R(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %8)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @RF_2T2R, align 4
  %145 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %146 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %151

147:                                              ; preds = %138
  %148 = load i32, i32* @RF_1T1R, align 4
  %149 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %150 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %134
  %153 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %154 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @MSG_8192C(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %155)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

declare dso_local i32 @dump_chip_info(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_1T2R(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i64 @IS_2T2R(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @MSG_8192C(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
