; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_display_gx1.c_gx1_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_display_gx1.c_gx1_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.geodefb_par* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.geodefb_par = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }

@DC_UNLOCK = common dso_local global i64 0, align 8
@DC_UNLOCK_CODE = common dso_local global i32 0, align 4
@DC_GENERAL_CFG = common dso_local global i64 0, align 8
@DC_TIMING_CFG = common dso_local global i64 0, align 8
@DC_TCFG_BLKE = common dso_local global i32 0, align 4
@DC_TCFG_TGEN = common dso_local global i32 0, align 4
@DC_GCFG_DFLE = common dso_local global i32 0, align 4
@DC_GCFG_CMPE = common dso_local global i32 0, align 4
@DC_GCFG_DECE = common dso_local global i32 0, align 4
@DC_GCFG_DCLK_MASK = common dso_local global i32 0, align 4
@DC_GCFG_DCLK_DIV_1 = common dso_local global i32 0, align 4
@DC_GCFG_VRDY = common dso_local global i32 0, align 4
@DC_GCFG_DFHPEL_POS = common dso_local global i32 0, align 4
@DC_GCFG_DFHPSL_POS = common dso_local global i32 0, align 4
@DC_FB_ST_OFFSET = common dso_local global i64 0, align 8
@DC_LINE_DELTA = common dso_local global i64 0, align 8
@DC_BUF_SIZE = common dso_local global i64 0, align 8
@DC_OCFG_PCKE = common dso_local global i32 0, align 4
@DC_OCFG_PDEL = common dso_local global i32 0, align 4
@DC_OCFG_PDEH = common dso_local global i32 0, align 4
@DC_OCFG_8BPP = common dso_local global i32 0, align 4
@DC_TCFG_FPPE = common dso_local global i32 0, align 4
@DC_TCFG_HSYE = common dso_local global i32 0, align 4
@DC_TCFG_VSYE = common dso_local global i32 0, align 4
@DC_H_TIMING_1 = common dso_local global i64 0, align 8
@DC_H_TIMING_2 = common dso_local global i64 0, align 8
@DC_H_TIMING_3 = common dso_local global i64 0, align 8
@DC_FP_H_TIMING = common dso_local global i64 0, align 8
@DC_V_TIMING_1 = common dso_local global i64 0, align 8
@DC_V_TIMING_2 = common dso_local global i64 0, align 8
@DC_V_TIMING_3 = common dso_local global i64 0, align 8
@DC_FP_V_TIMING = common dso_local global i64 0, align 8
@DC_OUTPUT_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @gx1_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx1_set_mode(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.geodefb_par*, align 8
  %4 = alloca i32, align 4
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = load %struct.geodefb_par*, %struct.geodefb_par** %22, align 8
  store %struct.geodefb_par* %23, %struct.geodefb_par** %3, align 8
  %24 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %25 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DC_UNLOCK, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = load i32, i32* @DC_UNLOCK_CODE, align 4
  %31 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %32 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DC_UNLOCK, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %38 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DC_GENERAL_CFG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %44 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DC_TIMING_CFG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @DC_TCFG_BLKE, align 4
  %50 = load i32, i32* @DC_TCFG_TGEN, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %57 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DC_TIMING_CFG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = call i32 @udelay(i32 100)
  %63 = load i32, i32* @DC_GCFG_DFLE, align 4
  %64 = load i32, i32* @DC_GCFG_CMPE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DC_GCFG_DECE, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %73 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DC_GENERAL_CFG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* @DC_GCFG_DCLK_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %84 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DC_GENERAL_CFG, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %90 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %92, align 8
  %94 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %95 = call i32 %93(%struct.fb_info* %94)
  %96 = load i32, i32* @DC_GCFG_DCLK_DIV_1, align 4
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %102 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DC_GENERAL_CFG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = call i32 @udelay(i32 1000)
  %108 = load i32, i32* @DC_GCFG_VRDY, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @DC_GCFG_DFHPEL_POS, align 4
  %112 = shl i32 6, %111
  %113 = load i32, i32* @DC_GCFG_DFHPSL_POS, align 4
  %114 = shl i32 5, %113
  %115 = or i32 %112, %114
  %116 = load i32, i32* @DC_GCFG_DFLE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %121 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DC_FB_ST_OFFSET, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 0, i64 %124)
  %126 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 2
  %131 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %132 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DC_LINE_DELTA, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %130, i64 %135)
  %137 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %140, %144
  %146 = sdiv i32 %145, 8
  %147 = ashr i32 %146, 3
  %148 = add nsw i32 %147, 2
  %149 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %150 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DC_BUF_SIZE, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel(i32 %148, i64 %153)
  %155 = load i32, i32* @DC_OCFG_PCKE, align 4
  %156 = load i32, i32* @DC_OCFG_PDEL, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @DC_OCFG_PDEH, align 4
  %159 = or i32 %157, %158
  store i32 %159, i32* %6, align 4
  %160 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %161 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 8
  br i1 %164, label %165, label %169

165:                                              ; preds = %1
  %166 = load i32, i32* @DC_OCFG_8BPP, align 4
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %165, %1
  %170 = load i32, i32* @DC_TCFG_FPPE, align 4
  %171 = load i32, i32* @DC_TCFG_HSYE, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @DC_TCFG_VSYE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @DC_TCFG_BLKE, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @DC_TCFG_TGEN, align 4
  %178 = or i32 %176, %177
  store i32 %178, i32* %5, align 4
  %179 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %186 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %184, %188
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %192 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %190, %194
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %198 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %196, %200
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %14, align 4
  %203 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %204 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %208, %212
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* %17, align 4
  %215 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %216 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %214, %218
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %222 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %220, %224
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %19, align 4
  store i32 %226, i32* %20, align 4
  %227 = load i32, i32* %9, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load i32, i32* %14, align 4
  %230 = sub nsw i32 %229, 1
  %231 = shl i32 %230, 16
  %232 = or i32 %228, %231
  store i32 %232, i32* %8, align 4
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %235 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @DC_H_TIMING_1, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @writel(i32 %233, i64 %238)
  %240 = load i32, i32* %10, align 4
  %241 = sub nsw i32 %240, 1
  %242 = load i32, i32* %13, align 4
  %243 = sub nsw i32 %242, 1
  %244 = shl i32 %243, 16
  %245 = or i32 %241, %244
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %248 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @DC_H_TIMING_2, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @writel(i32 %246, i64 %251)
  %253 = load i32, i32* %11, align 4
  %254 = sub nsw i32 %253, 1
  %255 = load i32, i32* %12, align 4
  %256 = sub nsw i32 %255, 1
  %257 = shl i32 %256, 16
  %258 = or i32 %254, %257
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %261 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @DC_H_TIMING_3, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @writel(i32 %259, i64 %264)
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %268 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @DC_FP_H_TIMING, align 8
  %271 = add nsw i64 %269, %270
  %272 = call i32 @writel(i32 %266, i64 %271)
  %273 = load i32, i32* %15, align 4
  %274 = sub nsw i32 %273, 1
  %275 = load i32, i32* %20, align 4
  %276 = sub nsw i32 %275, 1
  %277 = shl i32 %276, 16
  %278 = or i32 %274, %277
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %281 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @DC_V_TIMING_1, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i32 @writel(i32 %279, i64 %284)
  %286 = load i32, i32* %16, align 4
  %287 = sub nsw i32 %286, 1
  %288 = load i32, i32* %19, align 4
  %289 = sub nsw i32 %288, 1
  %290 = shl i32 %289, 16
  %291 = or i32 %287, %290
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %294 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @DC_V_TIMING_2, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @writel(i32 %292, i64 %297)
  %299 = load i32, i32* %17, align 4
  %300 = sub nsw i32 %299, 1
  %301 = load i32, i32* %18, align 4
  %302 = sub nsw i32 %301, 1
  %303 = shl i32 %302, 16
  %304 = or i32 %300, %303
  store i32 %304, i32* %8, align 4
  %305 = load i32, i32* %8, align 4
  %306 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %307 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @DC_V_TIMING_3, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @writel(i32 %305, i64 %310)
  %312 = load i32, i32* %17, align 4
  %313 = sub nsw i32 %312, 2
  %314 = load i32, i32* %18, align 4
  %315 = sub nsw i32 %314, 2
  %316 = shl i32 %315, 16
  %317 = or i32 %313, %316
  store i32 %317, i32* %8, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %320 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @DC_FP_V_TIMING, align 8
  %323 = add nsw i64 %321, %322
  %324 = call i32 @writel(i32 %318, i64 %323)
  %325 = load i32, i32* %6, align 4
  %326 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %327 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @DC_OUTPUT_CFG, align 8
  %330 = add nsw i64 %328, %329
  %331 = call i32 @writel(i32 %325, i64 %330)
  %332 = load i32, i32* %5, align 4
  %333 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %334 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @DC_TIMING_CFG, align 8
  %337 = add nsw i64 %335, %336
  %338 = call i32 @writel(i32 %332, i64 %337)
  %339 = call i32 @udelay(i32 1000)
  %340 = load i32, i32* %4, align 4
  %341 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %342 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @DC_GENERAL_CFG, align 8
  %345 = add nsw i64 %343, %344
  %346 = call i32 @writel(i32 %340, i64 %345)
  %347 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %348 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %347, i32 0, i32 1
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %350, align 8
  %352 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %353 = call i32 %351(%struct.fb_info* %352)
  %354 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %355 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @DC_UNLOCK, align 8
  %358 = add nsw i64 %356, %357
  %359 = call i32 @writel(i32 0, i64 %358)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
