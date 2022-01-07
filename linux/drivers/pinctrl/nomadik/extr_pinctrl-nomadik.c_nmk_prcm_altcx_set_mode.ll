; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_prcm_altcx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_prcm_altcx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_pinctrl = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64*, %struct.prcm_gpiocr_altcx_pin_desc* }
%struct.prcm_gpiocr_altcx_pin_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64 }

@PRCM_IDX_GPIOCR_ALTC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PRCM GPIOCR: alternate-C%i is invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"PRCM GPIOCR: pin %i is not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"PRCM GPIOCR: pin %i: alternate-C%i has been disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"PRCM GPIOCR: pin %i: alternate-C%i does not exist\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"PRCM GPIOCR: pin %i: alternate-C%i has been selected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nmk_pinctrl*, i32, i32)* @nmk_prcm_altcx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmk_prcm_altcx_set_mode(%struct.nmk_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nmk_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.prcm_gpiocr_altcx_pin_desc*, align 8
  %12 = alloca i64*, align 8
  store %struct.nmk_pinctrl* %0, %struct.nmk_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %14 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %278

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PRCM_IDX_GPIOCR_ALTC_MAX, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %24 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %278

28:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %32 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %39 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %42, i64 %44
  %46 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %55

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %29

55:                                               ; preds = %50, %29
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %58 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %65 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %278

69:                                               ; preds = %55
  %70 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %71 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %74, i64 %76
  store %struct.prcm_gpiocr_altcx_pin_desc* %77, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %78 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %79 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  store i64* %82, i64** %12, align 8
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %152, label %85

85:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %148, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @PRCM_IDX_GPIOCR_ALTC_MAX, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %151

90:                                               ; preds = %86
  %91 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %92 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %147

100:                                              ; preds = %90
  %101 = load i64*, i64** %12, align 8
  %102 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %103 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i64, i64* %101, i64 %109
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %8, align 8
  %112 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %113 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %9, align 8
  %120 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %121 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @readl(i64 %124)
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @BIT(i64 %126)
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %100
  %131 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %132 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @BIT(i64 %136)
  %138 = call i32 @nmk_write_masked(i64 %135, i32 %137, i32 0)
  %139 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %140 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  %145 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %141, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %144)
  br label %146

146:                                              ; preds = %130, %100
  br label %147

147:                                              ; preds = %146, %90
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %86

151:                                              ; preds = %86
  br label %278

152:                                              ; preds = %69
  %153 = load i32, i32* %6, align 4
  %154 = sub i32 %153, 1
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %10, align 8
  %156 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %157 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i64, i64* %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %152
  %165 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %166 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @dev_warn(i32 %167, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %168, i32 %169)
  br label %278

171:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %240, %171
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @PRCM_IDX_GPIOCR_ALTC_MAX, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %243

176:                                              ; preds = %172
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %10, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %240

182:                                              ; preds = %176
  %183 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %184 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %239

192:                                              ; preds = %182
  %193 = load i64*, i64** %12, align 8
  %194 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %195 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %194, i32 0, i32 1
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i64, i64* %193, i64 %201
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %8, align 8
  %204 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %205 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %9, align 8
  %212 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %213 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %8, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @readl(i64 %216)
  %218 = load i64, i64* %9, align 8
  %219 = call i32 @BIT(i64 %218)
  %220 = and i32 %217, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %192
  %223 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %224 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %8, align 8
  %227 = add nsw i64 %225, %226
  %228 = load i64, i64* %9, align 8
  %229 = call i32 @BIT(i64 %228)
  %230 = call i32 @nmk_write_masked(i64 %227, i32 %229, i32 0)
  %231 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %232 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  %237 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %233, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %234, i32 %236)
  br label %238

238:                                              ; preds = %222, %192
  br label %239

239:                                              ; preds = %238, %182
  br label %240

240:                                              ; preds = %239, %181
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %172

243:                                              ; preds = %172
  %244 = load i64*, i64** %12, align 8
  %245 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %246 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %245, i32 0, i32 1
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = load i64, i64* %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i64, i64* %244, i64 %251
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %8, align 8
  %254 = load %struct.prcm_gpiocr_altcx_pin_desc*, %struct.prcm_gpiocr_altcx_pin_desc** %11, align 8
  %255 = getelementptr inbounds %struct.prcm_gpiocr_altcx_pin_desc, %struct.prcm_gpiocr_altcx_pin_desc* %254, i32 0, i32 1
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = load i64, i64* %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %9, align 8
  %261 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %262 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = load i64, i64* %10, align 8
  %266 = add i64 %265, 1
  %267 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %263, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %264, i64 %266)
  %268 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %4, align 8
  %269 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %8, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i64, i64* %9, align 8
  %274 = call i32 @BIT(i64 %273)
  %275 = load i64, i64* %9, align 8
  %276 = call i32 @BIT(i64 %275)
  %277 = call i32 @nmk_write_masked(i64 %272, i32 %274, i32 %276)
  br label %278

278:                                              ; preds = %243, %164, %151, %63, %22, %17
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @nmk_write_masked(i64, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
