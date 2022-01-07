; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c__PHY_PathAFillIQKMatrix8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c__PHY_PathAFillIQKMatrix8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32***, i32*** }

@ODM_COMP_CALIBRATION = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Path A IQ Calibration %s !\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@rOFDM0_XATxIQImbalance = common dso_local global i8* null, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"X = 0x%x, TX0_A = 0x%x, Oldval_0 0x%x\0A\00", align 1
@rOFDM0_ECCAThreshold = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Y = 0x%x, TX = 0x%x\0A\00", align 1
@rOFDM0_XCTxAFE = common dso_local global i8* null, align 8
@PATH_S1 = common dso_local global i64 0, align 8
@IDX_0xC94 = common dso_local global i64 0, align 8
@KEY = common dso_local global i64 0, align 8
@VAL = common dso_local global i64 0, align 8
@IDX_0xC80 = common dso_local global i64 0, align 8
@IDX_0xC4C = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"_PHY_PathAFillIQKMatrix8723B only Tx OK\0A\00", align 1
@rOFDM0_RxIQExtAnta = common dso_local global i8* null, align 8
@IDX_0xCA0 = common dso_local global i64 0, align 8
@rOFDM0_XARxIQImbalance = common dso_local global i8* null, align 8
@IDX_0xC14 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, [8 x i32]*, i32, i32)* @_PHY_PathAFillIQKMatrix8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PHY_PathAFillIQKMatrix8723B(%struct.adapter* %0, i32 %1, [8 x i32]* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hal_com_data*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store [8 x i32]* %2, [8 x i32]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %20)
  store %struct.hal_com_data* %21, %struct.hal_com_data** %17, align 8
  %22 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %23 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %22, i32 0, i32 0
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %18, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %19, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %27 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %28 = load i32, i32* @ODM_DBG_LOUD, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %26, i32 %27, i32 %28, i8* %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  br label %396

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %395

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** @rOFDM0_XATxIQImbalance, align 8
  %45 = load i32, i32* @bMaskDWord, align 4
  %46 = call i32 @PHY_QueryBBReg(i32 %43, i8* %44, i32 %45)
  %47 = ashr i32 %46, 22
  %48 = and i32 %47, 1023
  store i32 %48, i32* %11, align 4
  %49 = load [8 x i32]*, [8 x i32]** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %49, i64 %51
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %52, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 512
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, -1024
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %40
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %62, %63
  %65 = ashr i32 %64, 8
  store i32 %65, i32* %13, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %67 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %68 = load i32, i32* @ODM_DBG_LOUD, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %66, i32 %67, i32 %68, i8* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** @rOFDM0_XATxIQImbalance, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @PHY_SetBBReg(i32 %77, i8* %78, i32 1023, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** @rOFDM0_ECCAThreshold, align 8
  %85 = call i32 @BIT(i32 31)
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %86, %87
  %89 = ashr i32 %88, 7
  %90 = and i32 %89, 1
  %91 = call i32 @PHY_SetBBReg(i32 %83, i8* %84, i32 %85, i32 %90)
  %92 = load [8 x i32]*, [8 x i32]** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %92, i64 %94
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = and i32 %98, 512
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %61
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %102, -1024
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %101, %61
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %11, align 4
  %107 = mul nsw i32 %105, %106
  %108 = ashr i32 %107, 8
  store i32 %108, i32* %16, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %110 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %111 = load i32, i32* @ODM_DBG_LOUD, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %109, i32 %110, i32 %111, i8* %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** @rOFDM0_XCTxAFE, align 8
  %121 = load i32, i32* %16, align 4
  %122 = and i32 %121, 960
  %123 = ashr i32 %122, 6
  %124 = call i32 @PHY_SetBBReg(i32 %119, i8* %120, i32 -268435456, i32 %123)
  %125 = load i8*, i8** @rOFDM0_XCTxAFE, align 8
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32***, i32**** %128, align 8
  %130 = load i64, i64* @PATH_S1, align 8
  %131 = getelementptr inbounds i32**, i32*** %129, i64 %130
  %132 = load i32**, i32*** %131, align 8
  %133 = load i64, i64* @IDX_0xC94, align 8
  %134 = getelementptr inbounds i32*, i32** %132, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @KEY, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32 %126, i32* %137, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** @rOFDM0_XCTxAFE, align 8
  %142 = load i32, i32* @bMaskDWord, align 4
  %143 = call i32 @PHY_QueryBBReg(i32 %140, i8* %141, i32 %142)
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32***, i32**** %145, align 8
  %147 = load i64, i64* @PATH_S1, align 8
  %148 = getelementptr inbounds i32**, i32*** %146, i64 %147
  %149 = load i32**, i32*** %148, align 8
  %150 = load i64, i64* @IDX_0xC94, align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @VAL, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 %143, i32* %154, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** @rOFDM0_XATxIQImbalance, align 8
  %159 = load i32, i32* %16, align 4
  %160 = and i32 %159, 63
  %161 = call i32 @PHY_SetBBReg(i32 %157, i8* %158, i32 4128768, i32 %160)
  %162 = load i8*, i8** @rOFDM0_XATxIQImbalance, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32***, i32**** %165, align 8
  %167 = load i64, i64* @PATH_S1, align 8
  %168 = getelementptr inbounds i32**, i32*** %166, i64 %167
  %169 = load i32**, i32*** %168, align 8
  %170 = load i64, i64* @IDX_0xC80, align 8
  %171 = getelementptr inbounds i32*, i32** %169, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @KEY, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32 %163, i32* %174, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** @rOFDM0_XATxIQImbalance, align 8
  %179 = load i32, i32* @bMaskDWord, align 4
  %180 = call i32 @PHY_QueryBBReg(i32 %177, i8* %178, i32 %179)
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32***, i32**** %182, align 8
  %184 = load i64, i64* @PATH_S1, align 8
  %185 = getelementptr inbounds i32**, i32*** %183, i64 %184
  %186 = load i32**, i32*** %185, align 8
  %187 = load i64, i64* @IDX_0xC80, align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @VAL, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %180, i32* %191, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i8*, i8** @rOFDM0_ECCAThreshold, align 8
  %196 = call i32 @BIT(i32 29)
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %11, align 4
  %199 = mul nsw i32 %197, %198
  %200 = ashr i32 %199, 7
  %201 = and i32 %200, 1
  %202 = call i32 @PHY_SetBBReg(i32 %194, i8* %195, i32 %196, i32 %201)
  %203 = load i8*, i8** @rOFDM0_ECCAThreshold, align 8
  %204 = ptrtoint i8* %203 to i32
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32***, i32**** %206, align 8
  %208 = load i64, i64* @PATH_S1, align 8
  %209 = getelementptr inbounds i32**, i32*** %207, i64 %208
  %210 = load i32**, i32*** %209, align 8
  %211 = load i64, i64* @IDX_0xC4C, align 8
  %212 = getelementptr inbounds i32*, i32** %210, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @KEY, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  store i32 %204, i32* %215, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i8*, i8** @rOFDM0_ECCAThreshold, align 8
  %220 = load i32, i32* @bMaskDWord, align 4
  %221 = call i32 @PHY_QueryBBReg(i32 %218, i8* %219, i32 %220)
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32***, i32**** %223, align 8
  %225 = load i64, i64* @PATH_S1, align 8
  %226 = getelementptr inbounds i32**, i32*** %224, i64 %225
  %227 = load i32**, i32*** %226, align 8
  %228 = load i64, i64* @IDX_0xC4C, align 8
  %229 = getelementptr inbounds i32*, i32** %227, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @VAL, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 %221, i32* %232, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %295

235:                                              ; preds = %104
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %237 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %238 = load i32, i32* @ODM_DBG_LOUD, align 4
  %239 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %236, i32 %237, i32 %238, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %240 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i32***, i32**** %243, align 8
  %245 = load i64, i64* @PATH_S1, align 8
  %246 = getelementptr inbounds i32**, i32*** %244, i64 %245
  %247 = load i32**, i32*** %246, align 8
  %248 = load i64, i64* @IDX_0xCA0, align 8
  %249 = getelementptr inbounds i32*, i32** %247, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* @KEY, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32 %241, i32* %252, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %257 = load i32, i32* @bMaskDWord, align 4
  %258 = call i32 @PHY_QueryBBReg(i32 %255, i8* %256, i32 %257)
  %259 = and i32 268435455, %258
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  %262 = load i32***, i32**** %261, align 8
  %263 = load i64, i64* @PATH_S1, align 8
  %264 = getelementptr inbounds i32**, i32*** %262, i64 %263
  %265 = load i32**, i32*** %264, align 8
  %266 = load i64, i64* @IDX_0xCA0, align 8
  %267 = getelementptr inbounds i32*, i32** %265, i64 %266
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* @VAL, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32 %259, i32* %270, align 4
  %271 = load i8*, i8** @rOFDM0_XARxIQImbalance, align 8
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i32***, i32**** %274, align 8
  %276 = load i64, i64* @PATH_S1, align 8
  %277 = getelementptr inbounds i32**, i32*** %275, i64 %276
  %278 = load i32**, i32*** %277, align 8
  %279 = load i64, i64* @IDX_0xC14, align 8
  %280 = getelementptr inbounds i32*, i32** %278, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = load i64, i64* @KEY, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32 %272, i32* %283, align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = load i32***, i32**** %285, align 8
  %287 = load i64, i64* @PATH_S1, align 8
  %288 = getelementptr inbounds i32**, i32*** %286, i64 %287
  %289 = load i32**, i32*** %288, align 8
  %290 = load i64, i64* @IDX_0xC14, align 8
  %291 = getelementptr inbounds i32*, i32** %289, i64 %290
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* @VAL, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32 1073742080, i32* %294, align 4
  br label %396

295:                                              ; preds = %104
  %296 = load [8 x i32]*, [8 x i32]** %8, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %296, i64 %298
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %299, i64 0, i64 2
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %14, align 4
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i8*, i8** @rOFDM0_XARxIQImbalance, align 8
  %306 = load i32, i32* %14, align 4
  %307 = call i32 @PHY_SetBBReg(i32 %304, i8* %305, i32 1023, i32 %306)
  %308 = load [8 x i32]*, [8 x i32]** %8, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [8 x i32], [8 x i32]* %308, i64 %310
  %312 = getelementptr inbounds [8 x i32], [8 x i32]* %311, i64 0, i64 3
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, 63
  store i32 %314, i32* %14, align 4
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i8*, i8** @rOFDM0_XARxIQImbalance, align 8
  %319 = load i32, i32* %14, align 4
  %320 = call i32 @PHY_SetBBReg(i32 %317, i8* %318, i32 64512, i32 %319)
  %321 = load i8*, i8** @rOFDM0_XARxIQImbalance, align 8
  %322 = ptrtoint i8* %321 to i32
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 1
  %325 = load i32***, i32**** %324, align 8
  %326 = load i64, i64* @PATH_S1, align 8
  %327 = getelementptr inbounds i32**, i32*** %325, i64 %326
  %328 = load i32**, i32*** %327, align 8
  %329 = load i64, i64* @IDX_0xC14, align 8
  %330 = getelementptr inbounds i32*, i32** %328, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = load i64, i64* @KEY, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  store i32 %322, i32* %333, align 4
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i8*, i8** @rOFDM0_XARxIQImbalance, align 8
  %338 = load i32, i32* @bMaskDWord, align 4
  %339 = call i32 @PHY_QueryBBReg(i32 %336, i8* %337, i32 %338)
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 1
  %342 = load i32***, i32**** %341, align 8
  %343 = load i64, i64* @PATH_S1, align 8
  %344 = getelementptr inbounds i32**, i32*** %342, i64 %343
  %345 = load i32**, i32*** %344, align 8
  %346 = load i64, i64* @IDX_0xC14, align 8
  %347 = getelementptr inbounds i32*, i32** %345, i64 %346
  %348 = load i32*, i32** %347, align 8
  %349 = load i64, i64* @VAL, align 8
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  store i32 %339, i32* %350, align 4
  %351 = load [8 x i32]*, [8 x i32]** %8, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [8 x i32], [8 x i32]* %351, i64 %353
  %355 = getelementptr inbounds [8 x i32], [8 x i32]* %354, i64 0, i64 3
  %356 = load i32, i32* %355, align 4
  %357 = ashr i32 %356, 6
  %358 = and i32 %357, 15
  store i32 %358, i32* %14, align 4
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %363 = load i32, i32* %14, align 4
  %364 = call i32 @PHY_SetBBReg(i32 %361, i8* %362, i32 -268435456, i32 %363)
  %365 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %366 = ptrtoint i8* %365 to i32
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 1
  %369 = load i32***, i32**** %368, align 8
  %370 = load i64, i64* @PATH_S1, align 8
  %371 = getelementptr inbounds i32**, i32*** %369, i64 %370
  %372 = load i32**, i32*** %371, align 8
  %373 = load i64, i64* @IDX_0xCA0, align 8
  %374 = getelementptr inbounds i32*, i32** %372, i64 %373
  %375 = load i32*, i32** %374, align 8
  %376 = load i64, i64* @KEY, align 8
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  store i32 %366, i32* %377, align 4
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %382 = load i32, i32* @bMaskDWord, align 4
  %383 = call i32 @PHY_QueryBBReg(i32 %380, i8* %381, i32 %382)
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i32***, i32**** %385, align 8
  %387 = load i64, i64* @PATH_S1, align 8
  %388 = getelementptr inbounds i32**, i32*** %386, i64 %387
  %389 = load i32**, i32*** %388, align 8
  %390 = load i64, i64* @IDX_0xCA0, align 8
  %391 = getelementptr inbounds i32*, i32** %389, i64 %390
  %392 = load i32*, i32** %391, align 8
  %393 = load i64, i64* @VAL, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  store i32 %383, i32* %394, align 4
  br label %395

395:                                              ; preds = %295, %37
  br label %396

396:                                              ; preds = %36, %235, %395
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @PHY_QueryBBReg(i32, i8*, i32) #1

declare dso_local i32 @PHY_SetBBReg(i32, i8*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
