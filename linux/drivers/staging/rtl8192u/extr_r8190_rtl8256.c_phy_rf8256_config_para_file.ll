; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8190_rtl8256.c_phy_rf8256_config_para_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8190_rtl8256.c_phy_rf8256_config_para_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_2__* }

@bRFSI_RFENV = common dso_local global i32 0, align 4
@b3WireAddressLength = common dso_local global i32 0, align 4
@b3WireDataLength = common dso_local global i32 0, align 4
@bMask12Bits = common dso_local global i32 0, align 4
@HW90_BLOCK_RF = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"phy_rf8256_config():Check Radio[%d] Fail!!\0A\00", align 1
@COMP_RF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"RF %d %d register final value: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"phy_rf8256_config_para_file():Radio[%d] Fail!!\00", align 1
@COMP_PHY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"PHY Initialization Success\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"PHY Initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @phy_rf8256_config_para_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_rf8256_config_para_file(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %6, align 8
  store i32 3, i32* %7, align 4
  store i32 2033, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 5, i64* %10, align 8
  store i64 5, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 131, i64* %4, align 8
  br label %15

15:                                               ; preds = %236, %1
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %239

21:                                               ; preds = %15
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device* %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %236

27:                                               ; preds = %21
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %5, align 8
  %33 = load i64, i64* %4, align 8
  switch i64 %33, label %49 [
    i64 131, label %34
    i64 129, label %34
    i64 130, label %41
    i64 128, label %41
  ]

34:                                               ; preds = %27, %27
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @bRFSI_RFENV, align 4
  %40 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %35, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %27, %27
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @bRFSI_RFENV, align 4
  %47 = shl i32 %46, 16
  %48 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %42, i32 %45, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %27, %41, %34
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @bRFSI_RFENV, align 4
  %55 = shl i32 %54, 16
  %56 = call i32 @rtl8192_setBBreg(%struct.net_device* %50, i32 %53, i32 %55, i32 1)
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @bRFSI_RFENV, align 4
  %62 = call i32 @rtl8192_setBBreg(%struct.net_device* %57, i32 %60, i32 %61, i32 1)
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @b3WireAddressLength, align 4
  %68 = call i32 @rtl8192_setBBreg(%struct.net_device* %63, i32 %66, i32 %67, i32 0)
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @b3WireDataLength, align 4
  %74 = call i32 @rtl8192_setBBreg(%struct.net_device* %69, i32 %72, i32 %73, i32 0)
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load i64, i64* %4, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @bMask12Bits, align 4
  %79 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %75, i32 %77, i32 0, i32 %78, i32 191)
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = load i32, i32* @HW90_BLOCK_RF, align 4
  %82 = load i64, i64* %4, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i64 @rtl8192_phy_checkBBAndRF(%struct.net_device* %80, i32 %81, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %49
  %87 = load i32, i32* @COMP_ERR, align 4
  %88 = load i64, i64* %4, align 8
  %89 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %88)
  br label %242

90:                                               ; preds = %49
  %91 = load i64, i64* %10, align 8
  store i64 %91, i64* %11, align 8
  store i32 0, i32* %9, align 4
  %92 = load i64, i64* %4, align 8
  switch i64 %92, label %209 [
    i64 131, label %93
    i64 130, label %122
    i64 129, label %151
    i64 128, label %180
  ]

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %103, %93
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi i1 [ false, %94 ], [ %100, %98 ]
  br i1 %102, label %103, label %121

103:                                              ; preds = %101
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = load i64, i64* %4, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %104, i32 %106)
  store i64 %107, i64* %12, align 8
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = load i64, i64* %4, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @bMask12Bits, align 4
  %113 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %108, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* @COMP_RF, align 4
  %115 = load i64, i64* %4, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %115, i32 %116, i32 %117)
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %119, -1
  store i64 %120, i64* %11, align 8
  br label %94

121:                                              ; preds = %101
  br label %209

122:                                              ; preds = %90
  br label %123

123:                                              ; preds = %132, %122
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i1 [ false, %123 ], [ %129, %127 ]
  br i1 %131, label %132, label %150

132:                                              ; preds = %130
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = load i64, i64* %4, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %133, i32 %135)
  store i64 %136, i64* %12, align 8
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = load i64, i64* %4, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @bMask12Bits, align 4
  %142 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %137, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* @COMP_RF, align 4
  %144 = load i64, i64* %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %144, i32 %145, i32 %146)
  %148 = load i64, i64* %11, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %11, align 8
  br label %123

150:                                              ; preds = %130
  br label %209

151:                                              ; preds = %90
  br label %152

152:                                              ; preds = %161, %151
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64, i64* %11, align 8
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %156, %152
  %160 = phi i1 [ false, %152 ], [ %158, %156 ]
  br i1 %160, label %161, label %179

161:                                              ; preds = %159
  %162 = load %struct.net_device*, %struct.net_device** %2, align 8
  %163 = load i64, i64* %4, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %162, i32 %164)
  store i64 %165, i64* %12, align 8
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = load i64, i64* %4, align 8
  %168 = trunc i64 %167 to i32
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @bMask12Bits, align 4
  %171 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %166, i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* @COMP_RF, align 4
  %173 = load i64, i64* %4, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %173, i32 %174, i32 %175)
  %177 = load i64, i64* %11, align 8
  %178 = add i64 %177, -1
  store i64 %178, i64* %11, align 8
  br label %152

179:                                              ; preds = %159
  br label %209

180:                                              ; preds = %90
  br label %181

181:                                              ; preds = %190, %180
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i64, i64* %11, align 8
  %187 = icmp ne i64 %186, 0
  br label %188

188:                                              ; preds = %185, %181
  %189 = phi i1 [ false, %181 ], [ %187, %185 ]
  br i1 %189, label %190, label %208

190:                                              ; preds = %188
  %191 = load %struct.net_device*, %struct.net_device** %2, align 8
  %192 = load i64, i64* %4, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %191, i32 %193)
  store i64 %194, i64* %12, align 8
  %195 = load %struct.net_device*, %struct.net_device** %2, align 8
  %196 = load i64, i64* %4, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @bMask12Bits, align 4
  %200 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %195, i32 %197, i32 %198, i32 %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* @COMP_RF, align 4
  %202 = load i64, i64* %4, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %201, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %202, i32 %203, i32 %204)
  %206 = load i64, i64* %11, align 8
  %207 = add i64 %206, -1
  store i64 %207, i64* %11, align 8
  br label %181

208:                                              ; preds = %188
  br label %209

209:                                              ; preds = %90, %208, %179, %150, %121
  %210 = load i64, i64* %4, align 8
  switch i64 %210, label %228 [
    i64 131, label %211
    i64 129, label %211
    i64 130, label %219
    i64 128, label %219
  ]

211:                                              ; preds = %209, %209
  %212 = load %struct.net_device*, %struct.net_device** %2, align 8
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @bRFSI_RFENV, align 4
  %217 = load i32, i32* %3, align 4
  %218 = call i32 @rtl8192_setBBreg(%struct.net_device* %212, i32 %215, i32 %216, i32 %217)
  br label %228

219:                                              ; preds = %209, %209
  %220 = load %struct.net_device*, %struct.net_device** %2, align 8
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @bRFSI_RFENV, align 4
  %225 = shl i32 %224, 16
  %226 = load i32, i32* %3, align 4
  %227 = call i32 @rtl8192_setBBreg(%struct.net_device* %220, i32 %223, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %209, %219, %211
  %229 = load i64, i64* %12, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i32, i32* @COMP_ERR, align 4
  %233 = load i64, i64* %4, align 8
  %234 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %232, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %233)
  br label %242

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235, %26
  %237 = load i64, i64* %4, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %4, align 8
  br label %15

239:                                              ; preds = %15
  %240 = load i32, i32* @COMP_PHY, align 4
  %241 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %240, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %245

242:                                              ; preds = %231, %86
  %243 = load i32, i32* @COMP_ERR, align 4
  %244 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %243, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %239
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device*, i64) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i64 @rtl8192_phy_checkBBAndRF(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8192_phy_QueryRFReg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
