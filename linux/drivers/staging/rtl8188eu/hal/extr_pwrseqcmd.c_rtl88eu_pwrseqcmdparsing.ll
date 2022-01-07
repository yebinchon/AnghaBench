; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_pwrseqcmd.c_rtl88eu_pwrseqcmdparsing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_pwrseqcmd.c_rtl88eu_pwrseqcmdparsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.wl_pwr_cfg = type { i32 }

@_module_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"rtl88eu_pwrseqcmdparsing: offset(%#x) cut_msk(%#x) cmd(%#x)msk(%#x) value(%#x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"rtl88eu_pwrseqcmdparsing: PWR_CMD_READ\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"rtl88eu_pwrseqcmdparsing: PWR_CMD_WRITE\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"rtl88eu_pwrseqcmdparsing: PWR_CMD_POLLING\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Fail to polling Offset[%#x]\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"rtl88eu_pwrseqcmdparsing: PWR_CMD_DELAY\0A\00", align 1
@PWRSEQ_DELAY_US = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"rtl88eu_pwrseqcmdparsing: PWR_CMD_END\0A\00", align 1
@_drv_err_ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"rtl88eu_pwrseqcmdparsing: Unknown CMD!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88eu_pwrseqcmdparsing(%struct.adapter* %0, i32 %1, %struct.wl_pwr_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl_pwr_cfg*, align 8
  %8 = alloca %struct.wl_pwr_cfg, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wl_pwr_cfg* %2, %struct.wl_pwr_cfg** %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 5000, i64* %14, align 8
  br label %15

15:                                               ; preds = %161, %3
  %16 = load %struct.wl_pwr_cfg*, %struct.wl_pwr_cfg** %7, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %16, i64 %17
  %19 = bitcast %struct.wl_pwr_cfg* %8 to i8*
  %20 = bitcast %struct.wl_pwr_cfg* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load i32, i32* @_module_hal_init_c_, align 4
  %22 = load i32, i32* @_drv_info_, align 4
  %23 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GET_PWR_CFG_OFFSET(i32 %24)
  %26 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GET_PWR_CFG_CUT_MASK(i32 %27)
  %29 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GET_PWR_CFG_CMD(i32 %30)
  %32 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GET_PWR_CFG_MASK(i32 %33)
  %35 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GET_PWR_CFG_VALUE(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @RT_TRACE(i32 %21, i32 %22, i8* %39)
  %41 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GET_PWR_CFG_CUT_MASK(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %158

47:                                               ; preds = %15
  %48 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GET_PWR_CFG_CMD(i32 %49)
  switch i32 %50, label %153 [
    i32 129, label %51
    i32 128, label %55
    i32 130, label %85
    i32 132, label %128
    i32 131, label %149
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @_module_hal_init_c_, align 4
  %53 = load i32, i32* @_drv_info_, align 4
  %54 = call i32 @RT_TRACE(i32 %52, i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %157

55:                                               ; preds = %47
  %56 = load i32, i32* @_module_hal_init_c_, align 4
  %57 = load i32, i32* @_drv_info_, align 4
  %58 = call i32 @RT_TRACE(i32 %56, i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @GET_PWR_CFG_OFFSET(i32 %60)
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %12, align 8
  %63 = load %struct.adapter*, %struct.adapter** %5, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @usb_read8(%struct.adapter* %63, i64 %64)
  store i32 %65, i32* %11, align 4
  %66 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @GET_PWR_CFG_MASK(i32 %67)
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GET_PWR_CFG_VALUE(i32 %73)
  %75 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @GET_PWR_CFG_MASK(i32 %76)
  %78 = and i32 %74, %77
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load %struct.adapter*, %struct.adapter** %5, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @usb_write8(%struct.adapter* %81, i64 %82, i32 %83)
  br label %157

85:                                               ; preds = %47
  %86 = load i32, i32* @_module_hal_init_c_, align 4
  %87 = load i32, i32* @_drv_info_, align 4
  %88 = call i32 @RT_TRACE(i32 %86, i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %89 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @GET_PWR_CFG_OFFSET(i32 %90)
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %123, %85
  %94 = load %struct.adapter*, %struct.adapter** %5, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @usb_read8(%struct.adapter* %94, i64 %95)
  store i32 %96, i32* %11, align 4
  %97 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @GET_PWR_CFG_MASK(i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @GET_PWR_CFG_VALUE(i32 %104)
  %106 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GET_PWR_CFG_MASK(i32 %107)
  %109 = and i32 %105, %108
  %110 = icmp eq i32 %102, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  store i32 1, i32* %9, align 4
  br label %114

112:                                              ; preds = %93
  %113 = call i32 @udelay(i32 10)
  br label %114

114:                                              ; preds = %112, %111
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %14, align 8
  %118 = icmp ugt i64 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @DBG_88E(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %120)
  store i32 0, i32* %4, align 4
  br label %163

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br i1 %126, label %93, label %127

127:                                              ; preds = %123
  br label %157

128:                                              ; preds = %47
  %129 = load i32, i32* @_module_hal_init_c_, align 4
  %130 = load i32, i32* @_drv_info_, align 4
  %131 = call i32 @RT_TRACE(i32 %129, i32 %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %132 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @GET_PWR_CFG_VALUE(i32 %133)
  %135 = load i32, i32* @PWRSEQ_DELAY_US, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @GET_PWR_CFG_OFFSET(i32 %139)
  %141 = call i32 @udelay(i32 %140)
  br label %148

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.wl_pwr_cfg, %struct.wl_pwr_cfg* %8, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @GET_PWR_CFG_OFFSET(i32 %144)
  %146 = mul nsw i32 %145, 1000
  %147 = call i32 @udelay(i32 %146)
  br label %148

148:                                              ; preds = %142, %137
  br label %157

149:                                              ; preds = %47
  %150 = load i32, i32* @_module_hal_init_c_, align 4
  %151 = load i32, i32* @_drv_info_, align 4
  %152 = call i32 @RT_TRACE(i32 %150, i32 %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %163

153:                                              ; preds = %47
  %154 = load i32, i32* @_module_hal_init_c_, align 4
  %155 = load i32, i32* @_drv_err_, align 4
  %156 = call i32 @RT_TRACE(i32 %154, i32 %155, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %157

157:                                              ; preds = %153, %148, %127, %55, %51
  br label %158

158:                                              ; preds = %157, %15
  %159 = load i64, i64* %10, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %10, align 8
  br label %161

161:                                              ; preds = %158
  br i1 true, label %15, label %162

162:                                              ; preds = %161
  store i32 1, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %149, %119
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #2

declare dso_local i32 @GET_PWR_CFG_OFFSET(i32) #2

declare dso_local i32 @GET_PWR_CFG_CUT_MASK(i32) #2

declare dso_local i32 @GET_PWR_CFG_CMD(i32) #2

declare dso_local i32 @GET_PWR_CFG_MASK(i32) #2

declare dso_local i32 @GET_PWR_CFG_VALUE(i32) #2

declare dso_local i32 @usb_read8(%struct.adapter*, i64) #2

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @DBG_88E(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
