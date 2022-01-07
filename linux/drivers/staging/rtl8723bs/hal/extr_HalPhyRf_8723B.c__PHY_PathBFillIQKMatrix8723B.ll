; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c__PHY_PathBFillIQKMatrix8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c__PHY_PathBFillIQKMatrix8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32***, i32*** }

@ODM_COMP_CALIBRATION = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Path B IQ Calibration %s !\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@rOFDM0_XBTxIQImbalance = common dso_local global i8* null, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"X = 0x%x, TX1_A = 0x%x\0A\00", align 1
@rOFDM0_ECCAThreshold = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Y = 0x%x, TX1_C = 0x%x\0A\00", align 1
@rOFDM0_XDTxAFE = common dso_local global i8* null, align 8
@rOFDM0_XCTxAFE = common dso_local global i32 0, align 4
@PATH_S0 = common dso_local global i64 0, align 8
@IDX_0xC94 = common dso_local global i64 0, align 8
@KEY = common dso_local global i64 0, align 8
@VAL = common dso_local global i64 0, align 8
@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@IDX_0xC80 = common dso_local global i64 0, align 8
@IDX_0xC4C = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"_PHY_PathBFillIQKMatrix8723B only Tx OK\0A\00", align 1
@rOFDM0_XARxIQImbalance = common dso_local global i8* null, align 8
@IDX_0xC14 = common dso_local global i64 0, align 8
@rOFDM0_RxIQExtAnta = common dso_local global i8* null, align 8
@IDX_0xCA0 = common dso_local global i64 0, align 8
@rOFDM0_XBRxIQImbalance = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, [8 x i32]*, i32, i32)* @_PHY_PathBFillIQKMatrix8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PHY_PathBFillIQKMatrix8723B(%struct.adapter* %0, i32 %1, [8 x i32]* %2, i32 %3, i32 %4) #0 {
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
  br label %391

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %390

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** @rOFDM0_XBTxIQImbalance, align 8
  %45 = load i32, i32* @bMaskDWord, align 4
  %46 = call i32 @PHY_QueryBBReg(i32 %43, i8* %44, i32 %45)
  %47 = ashr i32 %46, 22
  %48 = and i32 %47, 1023
  store i32 %48, i32* %11, align 4
  %49 = load [8 x i32]*, [8 x i32]** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %49, i64 %51
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %52, i64 0, i64 4
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
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %66, i32 %67, i32 %68, i8* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** @rOFDM0_XBTxIQImbalance, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @PHY_SetBBReg(i32 %76, i8* %77, i32 1023, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** @rOFDM0_ECCAThreshold, align 8
  %84 = call i32 @BIT(i32 27)
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %85, %86
  %88 = ashr i32 %87, 7
  %89 = and i32 %88, 1
  %90 = call i32 @PHY_SetBBReg(i32 %82, i8* %83, i32 %84, i32 %89)
  %91 = load [8 x i32]*, [8 x i32]** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %91, i64 %93
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %94, i64 0, i64 5
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, 512
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %61
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %101, -1024
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %100, %61
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %104, %105
  %107 = ashr i32 %106, 8
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %109 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %110 = load i32, i32* @ODM_DBG_LOUD, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %108, i32 %109, i32 %110, i8* %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** @rOFDM0_XDTxAFE, align 8
  %120 = load i32, i32* %16, align 4
  %121 = and i32 %120, 960
  %122 = ashr i32 %121, 6
  %123 = call i32 @PHY_SetBBReg(i32 %118, i8* %119, i32 -268435456, i32 %122)
  %124 = load i32, i32* @rOFDM0_XCTxAFE, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32***, i32**** %126, align 8
  %128 = load i64, i64* @PATH_S0, align 8
  %129 = getelementptr inbounds i32**, i32*** %127, i64 %128
  %130 = load i32**, i32*** %129, align 8
  %131 = load i64, i64* @IDX_0xC94, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @KEY, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %124, i32* %135, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** @rOFDM0_XDTxAFE, align 8
  %140 = load i32, i32* @bMaskDWord, align 4
  %141 = call i32 @PHY_QueryBBReg(i32 %138, i8* %139, i32 %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32***, i32**** %143, align 8
  %145 = load i64, i64* @PATH_S0, align 8
  %146 = getelementptr inbounds i32**, i32*** %144, i64 %145
  %147 = load i32**, i32*** %146, align 8
  %148 = load i64, i64* @IDX_0xC94, align 8
  %149 = getelementptr inbounds i32*, i32** %147, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @VAL, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %141, i32* %152, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i8*, i8** @rOFDM0_XBTxIQImbalance, align 8
  %157 = load i32, i32* %16, align 4
  %158 = and i32 %157, 63
  %159 = call i32 @PHY_SetBBReg(i32 %155, i8* %156, i32 4128768, i32 %158)
  %160 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32***, i32**** %162, align 8
  %164 = load i64, i64* @PATH_S0, align 8
  %165 = getelementptr inbounds i32**, i32*** %163, i64 %164
  %166 = load i32**, i32*** %165, align 8
  %167 = load i64, i64* @IDX_0xC80, align 8
  %168 = getelementptr inbounds i32*, i32** %166, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @KEY, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %160, i32* %171, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i8*, i8** @rOFDM0_XBTxIQImbalance, align 8
  %176 = load i32, i32* @bMaskDWord, align 4
  %177 = call i32 @PHY_QueryBBReg(i32 %174, i8* %175, i32 %176)
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32***, i32**** %179, align 8
  %181 = load i64, i64* @PATH_S0, align 8
  %182 = getelementptr inbounds i32**, i32*** %180, i64 %181
  %183 = load i32**, i32*** %182, align 8
  %184 = load i64, i64* @IDX_0xC80, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @VAL, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 %177, i32* %188, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i8*, i8** @rOFDM0_ECCAThreshold, align 8
  %193 = call i32 @BIT(i32 25)
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %11, align 4
  %196 = mul nsw i32 %194, %195
  %197 = ashr i32 %196, 7
  %198 = and i32 %197, 1
  %199 = call i32 @PHY_SetBBReg(i32 %191, i8* %192, i32 %193, i32 %198)
  %200 = load i8*, i8** @rOFDM0_ECCAThreshold, align 8
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32***, i32**** %203, align 8
  %205 = load i64, i64* @PATH_S0, align 8
  %206 = getelementptr inbounds i32**, i32*** %204, i64 %205
  %207 = load i32**, i32*** %206, align 8
  %208 = load i64, i64* @IDX_0xC4C, align 8
  %209 = getelementptr inbounds i32*, i32** %207, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @KEY, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32 %201, i32* %212, align 4
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i8*, i8** @rOFDM0_ECCAThreshold, align 8
  %217 = load i32, i32* @bMaskDWord, align 4
  %218 = call i32 @PHY_QueryBBReg(i32 %215, i8* %216, i32 %217)
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32***, i32**** %220, align 8
  %222 = load i64, i64* @PATH_S0, align 8
  %223 = getelementptr inbounds i32**, i32*** %221, i64 %222
  %224 = load i32**, i32*** %223, align 8
  %225 = load i64, i64* @IDX_0xC4C, align 8
  %226 = getelementptr inbounds i32*, i32** %224, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @VAL, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32 %218, i32* %229, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %292

232:                                              ; preds = %103
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %234 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %235 = load i32, i32* @ODM_DBG_LOUD, align 4
  %236 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %233, i32 %234, i32 %235, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %237 = load i8*, i8** @rOFDM0_XARxIQImbalance, align 8
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32***, i32**** %240, align 8
  %242 = load i64, i64* @PATH_S0, align 8
  %243 = getelementptr inbounds i32**, i32*** %241, i64 %242
  %244 = load i32**, i32*** %243, align 8
  %245 = load i64, i64* @IDX_0xC14, align 8
  %246 = getelementptr inbounds i32*, i32** %244, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* @KEY, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32 %238, i32* %249, align 4
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32***, i32**** %251, align 8
  %253 = load i64, i64* @PATH_S0, align 8
  %254 = getelementptr inbounds i32**, i32*** %252, i64 %253
  %255 = load i32**, i32*** %254, align 8
  %256 = load i64, i64* @IDX_0xC14, align 8
  %257 = getelementptr inbounds i32*, i32** %255, i64 %256
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* @VAL, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32 1073742080, i32* %260, align 4
  %261 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %262 = ptrtoint i8* %261 to i32
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i32***, i32**** %264, align 8
  %266 = load i64, i64* @PATH_S0, align 8
  %267 = getelementptr inbounds i32**, i32*** %265, i64 %266
  %268 = load i32**, i32*** %267, align 8
  %269 = load i64, i64* @IDX_0xCA0, align 8
  %270 = getelementptr inbounds i32*, i32** %268, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @KEY, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  store i32 %262, i32* %273, align 4
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %278 = load i32, i32* @bMaskDWord, align 4
  %279 = call i32 @PHY_QueryBBReg(i32 %276, i8* %277, i32 %278)
  %280 = and i32 268435455, %279
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = load i32***, i32**** %282, align 8
  %284 = load i64, i64* @PATH_S0, align 8
  %285 = getelementptr inbounds i32**, i32*** %283, i64 %284
  %286 = load i32**, i32*** %285, align 8
  %287 = load i64, i64* @IDX_0xCA0, align 8
  %288 = getelementptr inbounds i32*, i32** %286, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @VAL, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32 %280, i32* %291, align 4
  br label %391

292:                                              ; preds = %103
  %293 = load [8 x i32]*, [8 x i32]** %8, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [8 x i32], [8 x i32]* %293, i64 %295
  %297 = getelementptr inbounds [8 x i32], [8 x i32]* %296, i64 0, i64 6
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %14, align 4
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i8*, i8** @rOFDM0_XBRxIQImbalance, align 8
  %303 = load i32, i32* %14, align 4
  %304 = call i32 @PHY_SetBBReg(i32 %301, i8* %302, i32 1023, i32 %303)
  %305 = load [8 x i32]*, [8 x i32]** %8, align 8
  %306 = load i32, i32* %9, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [8 x i32], [8 x i32]* %305, i64 %307
  %309 = getelementptr inbounds [8 x i32], [8 x i32]* %308, i64 0, i64 7
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 63
  store i32 %311, i32* %14, align 4
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i8*, i8** @rOFDM0_XBRxIQImbalance, align 8
  %316 = load i32, i32* %14, align 4
  %317 = call i32 @PHY_SetBBReg(i32 %314, i8* %315, i32 64512, i32 %316)
  %318 = load i8*, i8** @rOFDM0_XARxIQImbalance, align 8
  %319 = ptrtoint i8* %318 to i32
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 1
  %322 = load i32***, i32**** %321, align 8
  %323 = load i64, i64* @PATH_S0, align 8
  %324 = getelementptr inbounds i32**, i32*** %322, i64 %323
  %325 = load i32**, i32*** %324, align 8
  %326 = load i64, i64* @IDX_0xC14, align 8
  %327 = getelementptr inbounds i32*, i32** %325, i64 %326
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* @KEY, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32 %319, i32* %330, align 4
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i8*, i8** @rOFDM0_XBRxIQImbalance, align 8
  %335 = load i32, i32* @bMaskDWord, align 4
  %336 = call i32 @PHY_QueryBBReg(i32 %333, i8* %334, i32 %335)
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 1
  %339 = load i32***, i32**** %338, align 8
  %340 = load i64, i64* @PATH_S0, align 8
  %341 = getelementptr inbounds i32**, i32*** %339, i64 %340
  %342 = load i32**, i32*** %341, align 8
  %343 = load i64, i64* @IDX_0xC14, align 8
  %344 = getelementptr inbounds i32*, i32** %342, i64 %343
  %345 = load i32*, i32** %344, align 8
  %346 = load i64, i64* @VAL, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  store i32 %336, i32* %347, align 4
  %348 = load [8 x i32]*, [8 x i32]** %8, align 8
  %349 = load i32, i32* %9, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [8 x i32], [8 x i32]* %348, i64 %350
  %352 = getelementptr inbounds [8 x i32], [8 x i32]* %351, i64 0, i64 7
  %353 = load i32, i32* %352, align 4
  %354 = ashr i32 %353, 6
  %355 = and i32 %354, 15
  store i32 %355, i32* %14, align 4
  %356 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %357 = ptrtoint i8* %356 to i32
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 1
  %360 = load i32***, i32**** %359, align 8
  %361 = load i64, i64* @PATH_S0, align 8
  %362 = getelementptr inbounds i32**, i32*** %360, i64 %361
  %363 = load i32**, i32*** %362, align 8
  %364 = load i64, i64* @IDX_0xCA0, align 8
  %365 = getelementptr inbounds i32*, i32** %363, i64 %364
  %366 = load i32*, i32** %365, align 8
  %367 = load i64, i64* @KEY, align 8
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  store i32 %357, i32* %368, align 4
  %369 = load i32, i32* %14, align 4
  %370 = shl i32 %369, 28
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i8*, i8** @rOFDM0_RxIQExtAnta, align 8
  %375 = load i32, i32* @bMaskDWord, align 4
  %376 = call i32 @PHY_QueryBBReg(i32 %373, i8* %374, i32 %375)
  %377 = and i32 %376, 268435455
  %378 = or i32 %370, %377
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 1
  %381 = load i32***, i32**** %380, align 8
  %382 = load i64, i64* @PATH_S0, align 8
  %383 = getelementptr inbounds i32**, i32*** %381, i64 %382
  %384 = load i32**, i32*** %383, align 8
  %385 = load i64, i64* @IDX_0xCA0, align 8
  %386 = getelementptr inbounds i32*, i32** %384, i64 %385
  %387 = load i32*, i32** %386, align 8
  %388 = load i64, i64* @VAL, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  store i32 %378, i32* %389, align 4
  br label %390

390:                                              ; preds = %292, %37
  br label %391

391:                                              ; preds = %36, %232, %390
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
