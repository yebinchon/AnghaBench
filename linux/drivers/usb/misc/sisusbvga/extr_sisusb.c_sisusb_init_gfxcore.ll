; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_init_gfxcore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_init_gfxcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sisusb_init_gfxcore.mclktable = internal constant [16 x i8] c";\22\01\8F;\22\01\8F;\22\01\8F;\22\01\8F", align 16
@sisusb_init_gfxcore.eclktable = internal constant [16 x i8] c";\22\01\8F;\22\01\8F;\22\01\8F;\22\01\8F", align 16
@sisusb_init_gfxcore.ramtypetable1 = internal constant [28 x i8] c"\00\04``\0F\0F\1F\1F\BA\BA\BA\BA\A9\A9\AC\AC\A0\A0\A0\A8\00\00\02\0200@@", align 16
@sisusb_init_gfxcore.ramtypetable2 = internal constant [20 x i8] c"wwDDwwDD\00\00\00\00[[\AB\AB\00\00\F0\F8", align 16
@SISVGAEN = common dso_local global i32 0, align 4
@SISMISCR = common dso_local global i32 0, align 4
@SISMISCW = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@SISSR = common dso_local global i32 0, align 4
@SISPART1 = common dso_local global i32 0, align 4
@SISCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"RAM size detection failed, assuming 8MB video RAM\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"DDR RAM device found, assuming 8MB video RAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*)* @sisusb_init_gfxcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_init_gfxcore(%struct.sisusb_usb_data* %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 3, i32* %9, align 4
  br label %13

13:                                               ; preds = %467, %351, %287, %203, %123, %38, %1
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %468

17:                                               ; preds = %13
  %18 = load i32, i32* @SISVGAEN, align 4
  %19 = call i32 @GETREG(i32 %18, i32* %10)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @SISVGAEN, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, 1
  %23 = call i32 @SETREG(i32 %20, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SISMISCR, align 4
  %27 = call i32 @GETREG(i32 %26, i32* %10)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @SISMISCW, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, 1
  %33 = call i32 @SETREG(i32 %30, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  br label %13

39:                                               ; preds = %17
  %40 = load i32, i32* @SISCR, align 4
  %41 = call i32 @SETIREGAND(i32 %40, i32 91, i32 223)
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @SISSR, align 4
  %45 = call i32 @SETIREG(i32 %44, i32 5, i8 signext -122)
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @SISSR, align 4
  %49 = call i32 @SETIREGOR(i32 %48, i32 32, i32 1)
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @SISMISCW, align 4
  %53 = call i32 @SETREG(i32 %52, i32 103)
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  store i32 6, i32* %4, align 4
  br label %56

56:                                               ; preds = %65, %39
  %57 = load i32, i32* %4, align 4
  %58 = icmp sle i32 %57, 31
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* @SISSR, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @SETIREG(i32 %60, i32 %61, i8 signext 0)
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %56

68:                                               ; preds = %56
  store i32 33, i32* %4, align 4
  br label %69

69:                                               ; preds = %78, %68
  %70 = load i32, i32* %4, align 4
  %71 = icmp sle i32 %70, 39
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* @SISSR, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @SETIREG(i32 %73, i32 %74, i8 signext 0)
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %69

81:                                               ; preds = %69
  store i32 49, i32* %4, align 4
  br label %82

82:                                               ; preds = %91, %81
  %83 = load i32, i32* %4, align 4
  %84 = icmp sle i32 %83, 61
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* @SISSR, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @SETIREG(i32 %86, i32 %87, i8 signext 0)
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %82

94:                                               ; preds = %82
  store i32 18, i32* %4, align 4
  br label %95

95:                                               ; preds = %104, %94
  %96 = load i32, i32* %4, align 4
  %97 = icmp sle i32 %96, 27
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* @SISSR, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @SETIREG(i32 %99, i32 %100, i8 signext 0)
  %102 = load i32, i32* %3, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %95

107:                                              ; preds = %95
  store i32 121, i32* %4, align 4
  br label %108

108:                                              ; preds = %117, %107
  %109 = load i32, i32* %4, align 4
  %110 = icmp sle i32 %109, 124
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, i32* @SISCR, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @SETIREG(i32 %112, i32 %113, i8 signext 0)
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %108

120:                                              ; preds = %108
  %121 = load i32, i32* %3, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %13

124:                                              ; preds = %120
  %125 = load i32, i32* @SISCR, align 4
  %126 = call i32 @SETIREG(i32 %125, i32 99, i8 signext -128)
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* @SISSR, align 4
  %130 = call i32 @GETIREG(i32 %129, i32 58, i32* %11)
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, 3
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* @SISSR, align 4
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* @sisusb_init_gfxcore.mclktable, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @SETIREG(i32 %135, i32 40, i8 signext %140)
  %142 = load i32, i32* %3, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* @SISSR, align 4
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 %145, 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [16 x i8], [16 x i8]* @sisusb_init_gfxcore.mclktable, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @SETIREG(i32 %144, i32 41, i8 signext %150)
  %152 = load i32, i32* %3, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %3, align 4
  %154 = load i32, i32* @SISSR, align 4
  %155 = load i32, i32* %11, align 4
  %156 = mul nsw i32 %155, 4
  %157 = add nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [16 x i8], [16 x i8]* @sisusb_init_gfxcore.mclktable, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = call i32 @SETIREG(i32 %154, i32 42, i8 signext %160)
  %162 = load i32, i32* %3, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %3, align 4
  %164 = load i32, i32* @SISSR, align 4
  %165 = load i32, i32* %11, align 4
  %166 = mul nsw i32 %165, 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [16 x i8], [16 x i8]* @sisusb_init_gfxcore.eclktable, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = call i32 @SETIREG(i32 %164, i32 46, i8 signext %169)
  %171 = load i32, i32* %3, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* @SISSR, align 4
  %174 = load i32, i32* %11, align 4
  %175 = mul nsw i32 %174, 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [16 x i8], [16 x i8]* @sisusb_init_gfxcore.eclktable, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = call i32 @SETIREG(i32 %173, i32 47, i8 signext %179)
  %181 = load i32, i32* %3, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* @SISSR, align 4
  %184 = load i32, i32* %11, align 4
  %185 = mul nsw i32 %184, 4
  %186 = add nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [16 x i8], [16 x i8]* @sisusb_init_gfxcore.eclktable, i64 0, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = call i32 @SETIREG(i32 %183, i32 48, i8 signext %189)
  %191 = load i32, i32* %3, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %3, align 4
  %193 = load i32, i32* @SISSR, align 4
  %194 = call i32 @SETIREG(i32 %193, i32 7, i8 signext 24)
  %195 = load i32, i32* %3, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %3, align 4
  %197 = load i32, i32* @SISSR, align 4
  %198 = call i32 @SETIREG(i32 %197, i32 17, i8 signext 15)
  %199 = load i32, i32* %3, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %3, align 4
  %201 = load i32, i32* %3, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %124
  br label %13

204:                                              ; preds = %124
  store i32 21, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %221, %204
  %206 = load i32, i32* %4, align 4
  %207 = icmp sle i32 %206, 27
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = load i32, i32* @SISSR, align 4
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* %5, align 4
  %212 = mul nsw i32 %211, 4
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [28 x i8], [28 x i8]* @sisusb_init_gfxcore.ramtypetable1, i64 0, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = call i32 @SETIREG(i32 %209, i32 %210, i8 signext %217)
  %219 = load i32, i32* %3, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %208
  %222 = load i32, i32* %4, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %205

226:                                              ; preds = %205
  store i32 64, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %227

227:                                              ; preds = %243, %226
  %228 = load i32, i32* %4, align 4
  %229 = icmp sle i32 %228, 68
  br i1 %229, label %230, label %248

230:                                              ; preds = %227
  %231 = load i32, i32* @SISCR, align 4
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* %5, align 4
  %234 = mul nsw i32 %233, 4
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [20 x i8], [20 x i8]* @sisusb_init_gfxcore.ramtypetable2, i64 0, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = call i32 @SETIREG(i32 %231, i32 %232, i8 signext %239)
  %241 = load i32, i32* %3, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %3, align 4
  br label %243

243:                                              ; preds = %230
  %244 = load i32, i32* %4, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %4, align 4
  %246 = load i32, i32* %5, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %5, align 4
  br label %227

248:                                              ; preds = %227
  %249 = load i32, i32* @SISCR, align 4
  %250 = call i32 @SETIREG(i32 %249, i32 73, i8 signext -86)
  %251 = load i32, i32* %3, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %3, align 4
  %253 = load i32, i32* @SISSR, align 4
  %254 = call i32 @SETIREG(i32 %253, i32 31, i8 signext 0)
  %255 = load i32, i32* %3, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %3, align 4
  %257 = load i32, i32* @SISSR, align 4
  %258 = call i32 @SETIREG(i32 %257, i32 32, i8 signext -96)
  %259 = load i32, i32* %3, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %3, align 4
  %261 = load i32, i32* @SISSR, align 4
  %262 = call i32 @SETIREG(i32 %261, i32 35, i8 signext -10)
  %263 = load i32, i32* %3, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %3, align 4
  %265 = load i32, i32* @SISSR, align 4
  %266 = call i32 @SETIREG(i32 %265, i32 36, i8 signext 13)
  %267 = load i32, i32* %3, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %3, align 4
  %269 = load i32, i32* @SISSR, align 4
  %270 = call i32 @SETIREG(i32 %269, i32 37, i8 signext 51)
  %271 = load i32, i32* %3, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %3, align 4
  %273 = load i32, i32* @SISSR, align 4
  %274 = call i32 @SETIREG(i32 %273, i32 17, i8 signext 15)
  %275 = load i32, i32* %3, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %3, align 4
  %277 = load i32, i32* @SISPART1, align 4
  %278 = call i32 @SETIREGOR(i32 %277, i32 47, i32 1)
  %279 = load i32, i32* %3, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %3, align 4
  %281 = load i32, i32* @SISCAP, align 4
  %282 = call i32 @SETIREGAND(i32 %281, i32 63, i32 239)
  %283 = load i32, i32* %3, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %3, align 4
  %285 = load i32, i32* %3, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %248
  br label %13

288:                                              ; preds = %248
  %289 = load i32, i32* @SISPART1, align 4
  %290 = call i32 @SETIREG(i32 %289, i32 0, i8 signext 0)
  %291 = load i32, i32* %3, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %3, align 4
  %293 = load i32, i32* @SISSR, align 4
  %294 = call i32 @GETIREG(i32 %293, i32 19, i32* %10)
  %295 = load i32, i32* %3, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %3, align 4
  %297 = load i32, i32* %10, align 4
  %298 = ashr i32 %297, 4
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* @SISPART1, align 4
  %300 = call i32 @SETIREG(i32 %299, i32 2, i8 signext 0)
  %301 = load i32, i32* %3, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %3, align 4
  %303 = load i32, i32* @SISPART1, align 4
  %304 = call i32 @SETIREG(i32 %303, i32 46, i8 signext 8)
  %305 = load i32, i32* %3, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %3, align 4
  %307 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %308 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %307, i32 80, i32* %12)
  %309 = load i32, i32* %3, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %3, align 4
  %311 = load i32, i32* %12, align 4
  %312 = and i32 %311, 15728640
  store i32 %312, i32* %12, align 4
  %313 = load i32, i32* %12, align 4
  %314 = icmp eq i32 %313, 1048576
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i32 51, i32 3
  store i32 %316, i32* %10, align 4
  %317 = load i32, i32* @SISSR, align 4
  %318 = load i32, i32* %10, align 4
  %319 = trunc i32 %318 to i8
  %320 = call i32 @SETIREG(i32 %317, i32 37, i8 signext %319)
  %321 = load i32, i32* %3, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %3, align 4
  %323 = load i32, i32* %12, align 4
  %324 = icmp eq i32 %323, 1048576
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i32 170, i32 136
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* @SISCR, align 4
  %328 = load i32, i32* %10, align 4
  %329 = trunc i32 %328 to i8
  %330 = call i32 @SETIREG(i32 %327, i32 73, i8 signext %329)
  %331 = load i32, i32* %3, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %3, align 4
  %333 = load i32, i32* @SISSR, align 4
  %334 = call i32 @SETIREG(i32 %333, i32 39, i8 signext 31)
  %335 = load i32, i32* %3, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %3, align 4
  %337 = load i32, i32* @SISSR, align 4
  %338 = call i32 @SETIREG(i32 %337, i32 49, i8 signext 0)
  %339 = load i32, i32* %3, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %3, align 4
  %341 = load i32, i32* @SISSR, align 4
  %342 = call i32 @SETIREG(i32 %341, i32 50, i8 signext 17)
  %343 = load i32, i32* %3, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %3, align 4
  %345 = load i32, i32* @SISSR, align 4
  %346 = call i32 @SETIREG(i32 %345, i32 51, i8 signext 0)
  %347 = load i32, i32* %3, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %3, align 4
  %349 = load i32, i32* %3, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %288
  br label %13

352:                                              ; preds = %288
  %353 = load i32, i32* @SISCR, align 4
  %354 = call i32 @SETIREG(i32 %353, i32 131, i8 signext 0)
  %355 = load i32, i32* %3, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %3, align 4
  %357 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %358 = call i32 @sisusb_set_default_mode(%struct.sisusb_usb_data* %357, i32 0)
  %359 = load i32, i32* @SISSR, align 4
  %360 = call i32 @SETIREGAND(i32 %359, i32 33, i32 223)
  %361 = load i32, i32* %3, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %3, align 4
  %363 = load i32, i32* @SISSR, align 4
  %364 = call i32 @SETIREGOR(i32 %363, i32 1, i32 32)
  %365 = load i32, i32* %3, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %3, align 4
  %367 = load i32, i32* @SISSR, align 4
  %368 = call i32 @SETIREGOR(i32 %367, i32 22, i32 15)
  %369 = load i32, i32* %3, align 4
  %370 = or i32 %369, %368
  store i32 %370, i32* %3, align 4
  %371 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %372 = load i32, i32* %11, align 4
  %373 = call i32 @sisusb_triggersr16(%struct.sisusb_usb_data* %371, i32 %372)
  %374 = load i32, i32* %3, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %3, align 4
  %376 = load i32, i32* @SISSR, align 4
  %377 = call i32 @SETIREGAND(i32 %376, i32 23, i32 248)
  %378 = load i32, i32* %3, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %3, align 4
  %380 = load i32, i32* @SISSR, align 4
  %381 = call i32 @SETIREGOR(i32 %380, i32 25, i32 3)
  %382 = load i32, i32* %3, align 4
  %383 = or i32 %382, %381
  store i32 %383, i32* %3, align 4
  %384 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %385 = call i32 @sisusb_getbuswidth(%struct.sisusb_usb_data* %384, i32* %6, i32* %7)
  %386 = load i32, i32* %3, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %3, align 4
  %388 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %389 = call i32 @sisusb_verify_mclk(%struct.sisusb_usb_data* %388)
  %390 = load i32, i32* %3, align 4
  %391 = or i32 %390, %389
  store i32 %391, i32* %3, align 4
  %392 = load i32, i32* %11, align 4
  %393 = icmp sle i32 %392, 1
  br i1 %393, label %394, label %414

394:                                              ; preds = %352
  %395 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %396 = load i32, i32* %6, align 4
  %397 = load i32, i32* %7, align 4
  %398 = call i32 @sisusb_get_sdram_size(%struct.sisusb_usb_data* %395, i32* %8, i32 %396, i32 %397)
  %399 = load i32, i32* %3, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %3, align 4
  %401 = load i32, i32* %8, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %413

403:                                              ; preds = %394
  %404 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %405 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %404, i32 0, i32 0
  %406 = load %struct.TYPE_2__*, %struct.TYPE_2__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i32 0, i32 0
  %408 = call i32 @dev_err(i32* %407, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %409 = load i32, i32* @SISSR, align 4
  %410 = call i32 @SETIREG(i32 %409, i32 20, i8 signext 49)
  %411 = load i32, i32* %3, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* %3, align 4
  br label %413

413:                                              ; preds = %403, %394
  br label %424

414:                                              ; preds = %352
  %415 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %416 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %415, i32 0, i32 0
  %417 = load %struct.TYPE_2__*, %struct.TYPE_2__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %417, i32 0, i32 0
  %419 = call i32 @dev_err(i32* %418, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %420 = load i32, i32* @SISSR, align 4
  %421 = call i32 @SETIREG(i32 %420, i32 20, i8 signext 49)
  %422 = load i32, i32* %3, align 4
  %423 = or i32 %422, %421
  store i32 %423, i32* %3, align 4
  br label %424

424:                                              ; preds = %414, %413
  %425 = load i32, i32* @SISSR, align 4
  %426 = load i32, i32* %11, align 4
  %427 = add nsw i32 4, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [28 x i8], [28 x i8]* @sisusb_init_gfxcore.ramtypetable1, i64 0, i64 %428
  %430 = load i8, i8* %429, align 1
  %431 = call i32 @SETIREG(i32 %425, i32 22, i8 signext %430)
  %432 = load i32, i32* %3, align 4
  %433 = or i32 %432, %431
  store i32 %433, i32* %3, align 4
  %434 = load i32, i32* @SISSR, align 4
  %435 = load i32, i32* %11, align 4
  %436 = add nsw i32 8, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [28 x i8], [28 x i8]* @sisusb_init_gfxcore.ramtypetable1, i64 0, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = call i32 @SETIREG(i32 %434, i32 23, i8 signext %439)
  %441 = load i32, i32* %3, align 4
  %442 = or i32 %441, %440
  store i32 %442, i32* %3, align 4
  %443 = load i32, i32* @SISSR, align 4
  %444 = load i32, i32* %11, align 4
  %445 = add nsw i32 16, %444
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [28 x i8], [28 x i8]* @sisusb_init_gfxcore.ramtypetable1, i64 0, i64 %446
  %448 = load i8, i8* %447, align 1
  %449 = call i32 @SETIREG(i32 %443, i32 25, i8 signext %448)
  %450 = load i32, i32* %3, align 4
  %451 = or i32 %450, %449
  store i32 %451, i32* %3, align 4
  %452 = load i32, i32* @SISSR, align 4
  %453 = call i32 @SETIREGOR(i32 %452, i32 33, i32 32)
  %454 = load i32, i32* %3, align 4
  %455 = or i32 %454, %453
  store i32 %455, i32* %3, align 4
  %456 = load i32, i32* @SISSR, align 4
  %457 = call i32 @SETIREG(i32 %456, i32 34, i8 signext -5)
  %458 = load i32, i32* %3, align 4
  %459 = or i32 %458, %457
  store i32 %459, i32* %3, align 4
  %460 = load i32, i32* @SISSR, align 4
  %461 = call i32 @SETIREG(i32 %460, i32 33, i8 signext -91)
  %462 = load i32, i32* %3, align 4
  %463 = or i32 %462, %461
  store i32 %463, i32* %3, align 4
  %464 = load i32, i32* %3, align 4
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %424
  br label %468

467:                                              ; preds = %424
  br label %13

468:                                              ; preds = %466, %13
  %469 = load i32, i32* %3, align 4
  ret i32 %469
}

declare dso_local i32 @GETREG(i32, i32*) #1

declare dso_local i32 @SETREG(i32, i32) #1

declare dso_local i32 @SETIREGAND(i32, i32, i32) #1

declare dso_local i32 @SETIREG(i32, i32, i8 signext) #1

declare dso_local i32 @SETIREGOR(i32, i32, i32) #1

declare dso_local i32 @GETIREG(i32, i32, i32*) #1

declare dso_local i32 @sisusb_read_pci_config(%struct.sisusb_usb_data*, i32, i32*) #1

declare dso_local i32 @sisusb_set_default_mode(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @sisusb_triggersr16(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @sisusb_getbuswidth(%struct.sisusb_usb_data*, i32*, i32*) #1

declare dso_local i32 @sisusb_verify_mclk(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_get_sdram_size(%struct.sisusb_usb_data*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
