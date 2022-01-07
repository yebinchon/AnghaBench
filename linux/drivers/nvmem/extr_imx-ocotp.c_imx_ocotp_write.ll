; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocotp_priv = type { i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.ocotp_priv*)* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ocotp_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to prepare/enable ocotp clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"timeout during timing setup\0A\00", align 1
@IMX_OCOTP_ADDR_CTRL = common dso_local global i64 0, align 8
@IMX_OCOTP_BM_CTRL_ADDR = common dso_local global i32 0, align 4
@IMX_OCOTP_WR_UNLOCK = common dso_local global i32 0, align 4
@IMX_OCOTP_ADDR_DATA1 = common dso_local global i64 0, align 8
@IMX_OCOTP_ADDR_DATA2 = common dso_local global i64 0, align 8
@IMX_OCOTP_ADDR_DATA3 = common dso_local global i64 0, align 8
@IMX_OCOTP_ADDR_DATA0 = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed write to locked region\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"timeout during data write\0A\00", align 1
@IMX_OCOTP_BM_CTRL_REL_SHADOWS = common dso_local global i32 0, align 4
@IMX_OCOTP_ADDR_CTRL_SET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"timeout during shadow register reload\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @imx_ocotp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ocotp_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocotp_priv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.ocotp_priv*
  store %struct.ocotp_priv* %17, %struct.ocotp_priv** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %22 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %31 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = urem i64 %29, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27, %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %323

40:                                               ; preds = %27
  %41 = call i32 @mutex_lock(i32* @ocotp_mutex)
  %42 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %43 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_prepare_enable(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = call i32 @mutex_unlock(i32* @ocotp_mutex)
  %50 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %51 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %323

55:                                               ; preds = %40
  %56 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %57 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32 (%struct.ocotp_priv*)*, i32 (%struct.ocotp_priv*)** %59, align 8
  %61 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %62 = call i32 %60(%struct.ocotp_priv* %61)
  %63 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %64 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @imx_ocotp_wait_for_busy(i64 %65, i32 0)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %55
  %70 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %71 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %310

74:                                               ; preds = %55
  %75 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %76 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %85 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %84, i32 0, i32 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = udiv i64 %83, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %93 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = udiv i32 %91, %96
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %100 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub i32 %103, 1
  %105 = and i32 %98, %104
  store i32 %105, i32* %15, align 4
  br label %109

106:                                              ; preds = %74
  %107 = load i32, i32* %7, align 4
  %108 = udiv i32 %107, 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %106, %81
  %110 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %111 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IMX_OCOTP_ADDR_CTRL, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @readl(i64 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* @IMX_OCOTP_BM_CTRL_ADDR, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %13, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @IMX_OCOTP_BM_CTRL_ADDR, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* @IMX_OCOTP_WR_UNLOCK, align 4
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %130 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IMX_OCOTP_ADDR_CTRL, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  %135 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %136 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %135, i32 0, i32 3
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %252

141:                                              ; preds = %109
  %142 = load i32, i32* %15, align 4
  switch i32 %142, label %251 [
    i32 0, label %143
    i32 1, label %170
    i32 2, label %197
    i32 3, label %224
  ]

143:                                              ; preds = %141
  %144 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %145 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @IMX_OCOTP_ADDR_DATA1, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 0, i64 %148)
  %150 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %151 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @IMX_OCOTP_ADDR_DATA2, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 0, i64 %154)
  %156 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %157 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @IMX_OCOTP_ADDR_DATA3, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 0, i64 %160)
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %165 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @IMX_OCOTP_ADDR_DATA0, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writel(i32 %163, i64 %168)
  br label %251

170:                                              ; preds = %141
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %174 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @IMX_OCOTP_ADDR_DATA1, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i32 %172, i64 %177)
  %179 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %180 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @IMX_OCOTP_ADDR_DATA2, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 0, i64 %183)
  %185 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %186 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @IMX_OCOTP_ADDR_DATA3, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @writel(i32 0, i64 %189)
  %191 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %192 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @IMX_OCOTP_ADDR_DATA0, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @writel(i32 0, i64 %195)
  br label %251

197:                                              ; preds = %141
  %198 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %199 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @IMX_OCOTP_ADDR_DATA1, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @writel(i32 0, i64 %202)
  %204 = load i32*, i32** %11, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %207 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @IMX_OCOTP_ADDR_DATA2, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @writel(i32 %205, i64 %210)
  %212 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %213 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @IMX_OCOTP_ADDR_DATA3, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writel(i32 0, i64 %216)
  %218 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %219 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @IMX_OCOTP_ADDR_DATA0, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @writel(i32 0, i64 %222)
  br label %251

224:                                              ; preds = %141
  %225 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %226 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @IMX_OCOTP_ADDR_DATA1, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @writel(i32 0, i64 %229)
  %231 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %232 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @IMX_OCOTP_ADDR_DATA2, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @writel(i32 0, i64 %235)
  %237 = load i32*, i32** %11, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %240 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @IMX_OCOTP_ADDR_DATA3, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writel(i32 %238, i64 %243)
  %245 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %246 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @IMX_OCOTP_ADDR_DATA0, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @writel(i32 0, i64 %249)
  br label %251

251:                                              ; preds = %141, %224, %197, %170, %143
  br label %261

252:                                              ; preds = %109
  %253 = load i32*, i32** %11, align 8
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %256 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @IMX_OCOTP_ADDR_DATA0, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @writel(i32 %254, i64 %259)
  br label %261

261:                                              ; preds = %252, %251
  %262 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %263 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @imx_ocotp_wait_for_busy(i64 %264, i32 0)
  store i32 %265, i32* %12, align 4
  %266 = load i32, i32* %12, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %288

268:                                              ; preds = %261
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* @EPERM, align 4
  %271 = sub nsw i32 0, %270
  %272 = icmp eq i32 %269, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %268
  %274 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %275 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @dev_err(i32 %276, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %278 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %279 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @imx_ocotp_clr_err_if_set(i64 %280)
  br label %287

282:                                              ; preds = %268
  %283 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %284 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @dev_err(i32 %285, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %287

287:                                              ; preds = %282, %273
  br label %310

288:                                              ; preds = %261
  %289 = call i32 @udelay(i32 2)
  %290 = load i32, i32* @IMX_OCOTP_BM_CTRL_REL_SHADOWS, align 4
  %291 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %292 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @IMX_OCOTP_ADDR_CTRL_SET, align 8
  %295 = add nsw i64 %293, %294
  %296 = call i32 @writel(i32 %290, i64 %295)
  %297 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %298 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load i32, i32* @IMX_OCOTP_BM_CTRL_REL_SHADOWS, align 4
  %301 = call i32 @imx_ocotp_wait_for_busy(i64 %299, i32 %300)
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %12, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %288
  %305 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %306 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @dev_err(i32 %307, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %310

309:                                              ; preds = %288
  br label %310

310:                                              ; preds = %309, %304, %287, %69
  %311 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %312 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @clk_disable_unprepare(i32 %313)
  %315 = call i32 @mutex_unlock(i32* @ocotp_mutex)
  %316 = load i32, i32* %12, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %310
  %319 = load i32, i32* %12, align 4
  store i32 %319, i32* %5, align 4
  br label %323

320:                                              ; preds = %310
  %321 = load i64, i64* %9, align 8
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %5, align 4
  br label %323

323:                                              ; preds = %320, %318, %48, %37
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @imx_ocotp_wait_for_busy(i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @imx_ocotp_clr_err_if_set(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
