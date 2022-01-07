; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPwrSeqCmd.c_HalPwrSeqCmdParsing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPwrSeqCmd.c_HalPwrSeqCmdParsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@_module_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [118 x i8] c"HalPwrSeqCmdParsing: offset(%#x) cut_msk(%#x) fab_msk(%#x) interface_msk(%#x) base(%#x) cmd(%#x) msk(%#x) value(%#x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"HalPwrSeqCmdParsing: PWR_CMD_READ\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"HalPwrSeqCmdParsing: PWR_CMD_WRITE\0A\00", align 1
@PWR_BASEADDR_SDIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"HalPwrSeqCmdParsing: PWR_CMD_POLLING\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Fail to polling Offset[%#x]=%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"HalPwrSeqCmdParsing: PWR_CMD_DELAY\0A\00", align 1
@PWRSEQ_DELAY_US = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"HalPwrSeqCmdParsing: PWR_CMD_END\0A\00", align 1
@_drv_err_ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"HalPwrSeqCmdParsing: Unknown CMD!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HalPwrSeqCmdParsing(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 5000, i64* %18, align 8
  br label %19

19:                                               ; preds = %201, %5
  %20 = load i32*, i32** %11, align 8
  %21 = load i64, i64* %14, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @_module_hal_init_c_, align 4
  %25 = load i32, i32* @_drv_info_, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @GET_PWR_CFG_OFFSET(i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @GET_PWR_CFG_CUT_MASK(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @GET_PWR_CFG_FAB_MASK(i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @GET_PWR_CFG_INTF_MASK(i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @GET_PWR_CFG_BASE(i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @GET_PWR_CFG_CMD(i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @GET_PWR_CFG_MASK(i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @GET_PWR_CFG_VALUE(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @RT_TRACE(i32 %24, i32 %25, i8* %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @GET_PWR_CFG_FAB_MASK(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %198

50:                                               ; preds = %19
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @GET_PWR_CFG_CUT_MASK(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %198

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @GET_PWR_CFG_INTF_MASK(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %198

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @GET_PWR_CFG_CMD(i32 %63)
  switch i32 %64, label %193 [
    i32 129, label %65
    i32 128, label %69
    i32 130, label %121
    i32 132, label %171
    i32 131, label %189
  ]

65:                                               ; preds = %62
  %66 = load i32, i32* @_module_hal_init_c_, align 4
  %67 = load i32, i32* @_drv_info_, align 4
  %68 = call i32 @RT_TRACE(i32 %66, i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %197

69:                                               ; preds = %62
  %70 = load i32, i32* @_module_hal_init_c_, align 4
  %71 = load i32, i32* @_drv_info_, align 4
  %72 = call i32 @RT_TRACE(i32 %70, i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @GET_PWR_CFG_OFFSET(i32 %73)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %16, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @GET_PWR_CFG_BASE(i32 %76)
  %78 = load i32, i32* @PWR_BASEADDR_SDIO, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %69
  %81 = load %struct.adapter*, %struct.adapter** %7, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @SdioLocalCmd52Read1Byte(%struct.adapter* %81, i64 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @GET_PWR_CFG_MASK(i32 %84)
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %15, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @GET_PWR_CFG_VALUE(i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @GET_PWR_CFG_MASK(i32 %91)
  %93 = and i32 %90, %92
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %15, align 4
  %96 = load %struct.adapter*, %struct.adapter** %7, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @SdioLocalCmd52Write1Byte(%struct.adapter* %96, i64 %97, i32 %98)
  br label %120

100:                                              ; preds = %69
  %101 = load %struct.adapter*, %struct.adapter** %7, align 8
  %102 = load i64, i64* %16, align 8
  %103 = call i32 @rtw_read8(%struct.adapter* %101, i64 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @GET_PWR_CFG_MASK(i32 %104)
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %15, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @GET_PWR_CFG_VALUE(i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @GET_PWR_CFG_MASK(i32 %111)
  %113 = and i32 %110, %112
  %114 = load i32, i32* %15, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %15, align 4
  %116 = load %struct.adapter*, %struct.adapter** %7, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @rtw_write8(%struct.adapter* %116, i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %100, %80
  br label %197

121:                                              ; preds = %62
  %122 = load i32, i32* @_module_hal_init_c_, align 4
  %123 = load i32, i32* @_drv_info_, align 4
  %124 = call i32 @RT_TRACE(i32 %122, i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @GET_PWR_CFG_OFFSET(i32 %125)
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %16, align 8
  br label %128

128:                                              ; preds = %166, %121
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @GET_PWR_CFG_BASE(i32 %129)
  %131 = load i32, i32* @PWR_BASEADDR_SDIO, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.adapter*, %struct.adapter** %7, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call i32 @SdioLocalCmd52Read1Byte(%struct.adapter* %134, i64 %135)
  store i32 %136, i32* %15, align 4
  br label %141

137:                                              ; preds = %128
  %138 = load %struct.adapter*, %struct.adapter** %7, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i32 @rtw_read8(%struct.adapter* %138, i64 %139)
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %137, %133
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @GET_PWR_CFG_MASK(i32 %143)
  %145 = and i32 %142, %144
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @GET_PWR_CFG_VALUE(i32 %147)
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @GET_PWR_CFG_MASK(i32 %149)
  %151 = and i32 %148, %150
  %152 = icmp eq i32 %146, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  store i32 1, i32* %13, align 4
  br label %156

154:                                              ; preds = %141
  %155 = call i32 @udelay(i32 10)
  br label %156

156:                                              ; preds = %154, %153
  %157 = load i64, i64* %17, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %17, align 8
  %159 = load i64, i64* %18, align 8
  %160 = icmp ugt i64 %157, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i64, i64* %16, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @DBG_871X(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %162, i32 %163)
  store i32 0, i32* %6, align 4
  br label %203

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  br i1 %169, label %128, label %170

170:                                              ; preds = %166
  br label %197

171:                                              ; preds = %62
  %172 = load i32, i32* @_module_hal_init_c_, align 4
  %173 = load i32, i32* @_drv_info_, align 4
  %174 = call i32 @RT_TRACE(i32 %172, i32 %173, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @GET_PWR_CFG_VALUE(i32 %175)
  %177 = load i32, i32* @PWRSEQ_DELAY_US, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @GET_PWR_CFG_OFFSET(i32 %180)
  %182 = call i32 @udelay(i32 %181)
  br label %188

183:                                              ; preds = %171
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @GET_PWR_CFG_OFFSET(i32 %184)
  %186 = mul nsw i32 %185, 1000
  %187 = call i32 @udelay(i32 %186)
  br label %188

188:                                              ; preds = %183, %179
  br label %197

189:                                              ; preds = %62
  %190 = load i32, i32* @_module_hal_init_c_, align 4
  %191 = load i32, i32* @_drv_info_, align 4
  %192 = call i32 @RT_TRACE(i32 %190, i32 %191, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %203

193:                                              ; preds = %62
  %194 = load i32, i32* @_module_hal_init_c_, align 4
  %195 = load i32, i32* @_drv_err_, align 4
  %196 = call i32 @RT_TRACE(i32 %194, i32 %195, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %197

197:                                              ; preds = %193, %188, %170, %120, %65
  br label %198

198:                                              ; preds = %197, %56, %50, %19
  %199 = load i64, i64* %14, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %14, align 8
  br label %201

201:                                              ; preds = %198
  br i1 true, label %19, label %202

202:                                              ; preds = %201
  store i32 1, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %189, %161
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @GET_PWR_CFG_OFFSET(i32) #1

declare dso_local i32 @GET_PWR_CFG_CUT_MASK(i32) #1

declare dso_local i32 @GET_PWR_CFG_FAB_MASK(i32) #1

declare dso_local i32 @GET_PWR_CFG_INTF_MASK(i32) #1

declare dso_local i32 @GET_PWR_CFG_BASE(i32) #1

declare dso_local i32 @GET_PWR_CFG_CMD(i32) #1

declare dso_local i32 @GET_PWR_CFG_MASK(i32) #1

declare dso_local i32 @GET_PWR_CFG_VALUE(i32) #1

declare dso_local i32 @SdioLocalCmd52Read1Byte(%struct.adapter*, i64) #1

declare dso_local i32 @SdioLocalCmd52Write1Byte(%struct.adapter*, i64, i32) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i64) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DBG_871X(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
