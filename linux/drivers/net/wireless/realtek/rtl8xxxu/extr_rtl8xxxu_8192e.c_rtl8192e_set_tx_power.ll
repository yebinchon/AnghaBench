; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192e_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192e_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32*, i32*, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@REG_TX_AGC_A_CCK1_MCS32 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_CCK11_A_CCK2_11 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_RATE18_06 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_RATE54_24 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_MCS03_MCS00 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_MCS07_MCS04 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_MCS11_MCS08 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_MCS15_MCS12 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_CCK1_55_MCS32 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_RATE18_06 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_RATE54_24 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_MCS03_MCS00 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_MCS07_MCS04 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_MCS11_MCS08 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_MCS15_MCS12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*, i32, i32)* @rtl8192e_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192e_set_tx_power(%struct.rtl8xxxu_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8xxxu_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @rtl8xxxu_gen2_channel_to_group(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %18 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %25 = load i32, i32* @REG_TX_AGC_A_CCK1_MCS32, align 4
  %26 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -65281
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %34 = load i32, i32* @REG_TX_AGC_A_CCK1_MCS32, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %33, i32 %34, i32 %35)
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %38 = load i32, i32* @REG_TX_AGC_B_CCK11_A_CCK2_11, align 4
  %39 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %43, %45
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 24
  %49 = or i32 %46, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %53 = load i32, i32* @REG_TX_AGC_B_CCK11_A_CCK2_11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %52, i32 %53, i32 %54)
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %57 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %64 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %63, i32 0, i32 7
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %75, %77
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %78, %80
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 24
  %84 = or i32 %81, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %86 = load i32, i32* @REG_TX_AGC_A_RATE18_06, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %85, i32 %86, i32 %87)
  %89 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %90 = load i32, i32* @REG_TX_AGC_A_RATE54_24, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %89, i32 %90, i32 %91)
  %93 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %94 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %3
  %103 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %104 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %103, i32 0, i32 6
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %12, align 4
  br label %130

116:                                              ; preds = %3
  %117 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %118 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %117, i32 0, i32 5
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %116, %102
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %131, %133
  %135 = load i32, i32* %12, align 4
  %136 = shl i32 %135, 16
  %137 = or i32 %134, %136
  %138 = load i32, i32* %12, align 4
  %139 = shl i32 %138, 24
  %140 = or i32 %137, %139
  store i32 %140, i32* %9, align 4
  %141 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %142 = load i32, i32* @REG_TX_AGC_A_MCS03_MCS00, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %141, i32 %142, i32 %143)
  %145 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %146 = load i32, i32* @REG_TX_AGC_A_MCS07_MCS04, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %145, i32 %146, i32 %147)
  %149 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %150 = load i32, i32* @REG_TX_AGC_A_MCS11_MCS08, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %149, i32 %150, i32 %151)
  %153 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %154 = load i32, i32* @REG_TX_AGC_A_MCS15_MCS12, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %153, i32 %154, i32 %155)
  %157 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %158 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %301

161:                                              ; preds = %130
  %162 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %163 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %10, align 4
  %169 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %170 = load i32, i32* @REG_TX_AGC_B_CCK1_55_MCS32, align 4
  %171 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %169, i32 %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = and i32 %172, 255
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %10, align 4
  %175 = shl i32 %174, 8
  %176 = load i32, i32* %10, align 4
  %177 = shl i32 %176, 16
  %178 = or i32 %175, %177
  %179 = load i32, i32* %10, align 4
  %180 = shl i32 %179, 24
  %181 = or i32 %178, %180
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  %184 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %185 = load i32, i32* @REG_TX_AGC_B_CCK1_55_MCS32, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %184, i32 %185, i32 %186)
  %188 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %189 = load i32, i32* @REG_TX_AGC_B_CCK11_A_CCK2_11, align 4
  %190 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %188, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, -256
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %7, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %7, align 4
  %196 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %197 = load i32, i32* @REG_TX_AGC_B_CCK11_A_CCK2_11, align 4
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %196, i32 %197, i32 %198)
  %200 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %201 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %11, align 4
  %207 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %208 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %207, i32 0, i32 7
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = shl i32 %220, 8
  %222 = or i32 %219, %221
  %223 = load i32, i32* %11, align 4
  %224 = shl i32 %223, 16
  %225 = or i32 %222, %224
  %226 = load i32, i32* %11, align 4
  %227 = shl i32 %226, 24
  %228 = or i32 %225, %227
  store i32 %228, i32* %8, align 4
  %229 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %230 = load i32, i32* @REG_TX_AGC_B_RATE18_06, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %229, i32 %230, i32 %231)
  %233 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %234 = load i32, i32* @REG_TX_AGC_B_RATE54_24, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %233, i32 %234, i32 %235)
  %237 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %238 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %12, align 4
  %244 = load i32, i32* %6, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %260

246:                                              ; preds = %161
  %247 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %248 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %247, i32 0, i32 6
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %14, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %255
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %12, align 4
  br label %274

260:                                              ; preds = %161
  %261 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %262 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %261, i32 0, i32 5
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = load i32, i32* %14, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %14, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %269
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %12, align 4
  br label %274

274:                                              ; preds = %260, %246
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %12, align 4
  %277 = shl i32 %276, 8
  %278 = or i32 %275, %277
  %279 = load i32, i32* %12, align 4
  %280 = shl i32 %279, 16
  %281 = or i32 %278, %280
  %282 = load i32, i32* %12, align 4
  %283 = shl i32 %282, 24
  %284 = or i32 %281, %283
  store i32 %284, i32* %9, align 4
  %285 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %286 = load i32, i32* @REG_TX_AGC_B_MCS03_MCS00, align 4
  %287 = load i32, i32* %9, align 4
  %288 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %285, i32 %286, i32 %287)
  %289 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %290 = load i32, i32* @REG_TX_AGC_B_MCS07_MCS04, align 4
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %289, i32 %290, i32 %291)
  %293 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %294 = load i32, i32* @REG_TX_AGC_B_MCS11_MCS08, align 4
  %295 = load i32, i32* %9, align 4
  %296 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %293, i32 %294, i32 %295)
  %297 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %298 = load i32, i32* @REG_TX_AGC_B_MCS15_MCS12, align 4
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %297, i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %274, %130
  ret void
}

declare dso_local i32 @rtl8xxxu_gen2_channel_to_group(i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
