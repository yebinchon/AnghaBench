; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_charger_update_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_charger_update_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_bci = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@USB_CUR_DELAY = common dso_local global i32 0, align 4
@TWL4030_BCICTL1 = common dso_local global i32 0, align 4
@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_BOOT_BCI = common dso_local global i32 0, align 4
@TWL4030_CGAIN = common dso_local global i32 0, align 4
@TWL4030_BCIMFTH8 = common dso_local global i32 0, align 4
@TWL_MODULE_MAIN_CHARGE = common dso_local global i32 0, align 4
@TWL4030_BCIMFKEY = common dso_local global i32 0, align 4
@TWL4030_BCIMFTH9 = common dso_local global i32 0, align 4
@TWL4030_BCIIREF1 = common dso_local global i32 0, align 4
@TWL4030_BCIIREF2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_bci*)* @twl4030_charger_update_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_charger_update_current(%struct.twl4030_bci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl4030_bci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.twl4030_bci* %0, %struct.twl4030_bci** %3, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %14 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ac_available(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %20 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %23 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %26 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %29 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %32 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %37 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %41 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %24
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %45 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %50 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %49, i32 0, i32 7
  %51 = load i32, i32* @USB_CUR_DELAY, align 4
  %52 = call i32 @schedule_delayed_work(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %56 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 200000
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %62 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 400000
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %60
  %67 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %68 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 820000
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 852000
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* @TWL4030_BCICTL1, align 4
  %78 = call i32 @twl4030_bci_read(i32 %77, i32* %8)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %306

83:                                               ; preds = %76
  %84 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %85 = load i32, i32* @TWL4030_PM_MASTER_BOOT_BCI, align 4
  %86 = call i64 @twl_i2c_read_u8(i32 %84, i32* %12, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 7
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @TWL4030_CGAIN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = icmp ne i32 %96, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %89
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @twl4030_clear_set_boot_bci(i32 %106, i32 0)
  br label %108

108:                                              ; preds = %105, %89
  %109 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %110 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @ua2regval(i32 %111, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ugt i32 %114, 632
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 632, i32* %6, align 4
  br label %117

117:                                              ; preds = %116, %108
  %118 = load i32, i32* %6, align 4
  %119 = icmp ult i32 %118, 512
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 512, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %117
  %122 = load i32, i32* %6, align 4
  %123 = lshr i32 %122, 3
  %124 = and i32 %123, 15
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = shl i32 %125, 4
  store i32 %126, i32* %10, align 4
  %127 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %128 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @ua2regval(i32 %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ugt i32 %132, 752
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  store i32 752, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %121
  %136 = load i32, i32* %6, align 4
  %137 = icmp ult i32 %136, 512
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 512, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %135
  %140 = load i32, i32* %6, align 4
  %141 = lshr i32 %140, 4
  %142 = and i32 %141, 15
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* @TWL4030_BCIMFTH8, align 4
  %147 = call i32 @twl4030_bci_read(i32 %146, i32* %9)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i32, i32* %4, align 4
  store i32 %151, i32* %2, align 4
  br label %306

152:                                              ; preds = %139
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %158 = load i32, i32* @TWL4030_BCIMFKEY, align 4
  %159 = call i32 @twl_i2c_write_u8(i32 %157, i32 244, i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %306

164:                                              ; preds = %156
  %165 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @TWL4030_BCIMFTH8, align 4
  %168 = call i32 @twl_i2c_write_u8(i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %152
  %170 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %171 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @ua2regval(i32 %172, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ugt i32 %175, 992
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  store i32 992, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %169
  %179 = load i32, i32* %6, align 4
  %180 = icmp ult i32 %179, 512
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 512, i32* %6, align 4
  br label %182

182:                                              ; preds = %181, %178
  %183 = load i32, i32* %6, align 4
  %184 = lshr i32 %183, 5
  %185 = and i32 %184, 15
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = shl i32 %186, 4
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* @TWL4030_BCIMFTH9, align 4
  %189 = call i32 @twl4030_bci_read(i32 %188, i32* %9)
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* %4, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %182
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  br label %306

194:                                              ; preds = %182
  %195 = load i32, i32* %9, align 4
  %196 = and i32 %195, 240
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %194
  %200 = load i32, i32* %9, align 4
  %201 = and i32 %200, 15
  %202 = load i32, i32* %10, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %205 = load i32, i32* @TWL4030_BCIMFKEY, align 4
  %206 = call i32 @twl_i2c_write_u8(i32 %204, i32 231, i32 %205)
  store i32 %206, i32* %4, align 4
  %207 = load i32, i32* %4, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %199
  %210 = load i32, i32* %4, align 4
  store i32 %210, i32* %2, align 4
  br label %306

211:                                              ; preds = %199
  %212 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @TWL4030_BCIMFTH9, align 4
  %215 = call i32 @twl_i2c_write_u8(i32 %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %211, %194
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @ua2regval(i32 %217, i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp ugt i32 %220, 1023
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store i32 1023, i32* %6, align 4
  br label %223

223:                                              ; preds = %222, %216
  %224 = load i32, i32* @TWL4030_BCIIREF1, align 4
  %225 = call i32 @twl4030_bci_read(i32 %224, i32* %9)
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* %4, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i32, i32* %4, align 4
  store i32 %229, i32* %2, align 4
  br label %306

230:                                              ; preds = %223
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* @TWL4030_BCIIREF2, align 4
  %233 = call i32 @twl4030_bci_read(i32 %232, i32* %9)
  store i32 %233, i32* %4, align 4
  %234 = load i32, i32* %4, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load i32, i32* %4, align 4
  store i32 %237, i32* %2, align 4
  br label %306

238:                                              ; preds = %230
  %239 = load i32, i32* %9, align 4
  %240 = shl i32 %239, 8
  %241 = load i32, i32* %7, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %9, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %281

246:                                              ; preds = %238
  %247 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %248 = load i32, i32* @TWL4030_BCIMFKEY, align 4
  %249 = call i32 @twl_i2c_write_u8(i32 %247, i32 231, i32 %248)
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* %4, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = load i32, i32* %4, align 4
  store i32 %253, i32* %2, align 4
  br label %306

254:                                              ; preds = %246
  %255 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %256 = load i32, i32* %6, align 4
  %257 = and i32 %256, 256
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 3, i32 2
  %261 = load i32, i32* @TWL4030_BCIIREF2, align 4
  %262 = call i32 @twl_i2c_write_u8(i32 %255, i32 %260, i32 %261)
  store i32 %262, i32* %4, align 4
  %263 = load i32, i32* %4, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %254
  %266 = load i32, i32* %4, align 4
  store i32 %266, i32* %2, align 4
  br label %306

267:                                              ; preds = %254
  %268 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %269 = load i32, i32* @TWL4030_BCIMFKEY, align 4
  %270 = call i32 @twl_i2c_write_u8(i32 %268, i32 231, i32 %269)
  store i32 %270, i32* %4, align 4
  %271 = load i32, i32* %4, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = load i32, i32* %4, align 4
  store i32 %274, i32* %2, align 4
  br label %306

275:                                              ; preds = %267
  %276 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %277 = load i32, i32* %6, align 4
  %278 = and i32 %277, 255
  %279 = load i32, i32* @TWL4030_BCIIREF1, align 4
  %280 = call i32 @twl_i2c_write_u8(i32 %276, i32 %278, i32 %279)
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %275, %238
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @TWL4030_CGAIN, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = xor i1 %291, true
  %293 = zext i1 %292 to i32
  %294 = icmp ne i32 %286, %293
  br i1 %294, label %295, label %305

295:                                              ; preds = %281
  %296 = load i32, i32* @TWL4030_CGAIN, align 4
  %297 = load i32, i32* %8, align 4
  %298 = xor i32 %297, %296
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %300 = load i32, i32* %8, align 4
  %301 = load i32, i32* @TWL4030_BCICTL1, align 4
  %302 = call i32 @twl_i2c_write_u8(i32 %299, i32 %300, i32 %301)
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @twl4030_clear_set_boot_bci(i32 0, i32 %303)
  br label %305

305:                                              ; preds = %295, %281
  store i32 0, i32* %2, align 4
  br label %306

306:                                              ; preds = %305, %273, %265, %252, %236, %228, %209, %192, %162, %150, %81
  %307 = load i32, i32* %2, align 4
  ret i32 %307
}

declare dso_local i64 @ac_available(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @twl4030_bci_read(i32, i32*) #1

declare dso_local i64 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @twl4030_clear_set_boot_bci(i32, i32) #1

declare dso_local i32 @ua2regval(i32, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
