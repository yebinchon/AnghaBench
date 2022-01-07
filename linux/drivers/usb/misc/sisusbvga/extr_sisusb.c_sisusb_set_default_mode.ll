; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_set_default_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_set_default_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@sisusb_set_default_mode.attrdata = internal constant [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\01\00\00\00", align 16
@sisusb_set_default_mode.crtcrdata = internal constant [25 x i8] c"_OP\82T\80\0B>\00@\00\00\00\00\00\00\EA\8C\DF(@\E7\04\A3\FF", align 16
@sisusb_set_default_mode.grcdata = internal constant [9 x i8] c"\00\00\00\00\00@\05\0F\FF", align 1
@sisusb_set_default_mode.crtcdata = internal constant [17 x i8] c"_OO\83U\81\0B>\E9\8B\DF\E8\0C\00\00\05\00", align 16
@SISSR = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@SISMISCW = common dso_local global i32 0, align 4
@SISINPSTAT = common dso_local global i32 0, align 4
@SISAR = common dso_local global i32 0, align 4
@SISGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sisusb_usb_data*, i32)* @sisusb_set_default_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusb_set_default_mode(%struct.sisusb_usb_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sisusb_usb_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 640, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %13 = load i32, i32* @SISSR, align 4
  %14 = call i32 @GETIREG(i32 %13, i32 49, i32* %10)
  %15 = load i32, i32* @SISCR, align 4
  %16 = call i32 @GETIREG(i32 %15, i32 99, i32* %11)
  %17 = load i32, i32* @SISSR, align 4
  %18 = call i32 @SETIREGOR(i32 %17, i32 1, i32 32)
  %19 = load i32, i32* @SISCR, align 4
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, 191
  %22 = trunc i32 %21 to i8
  %23 = call i32 @SETIREG(i32 %19, i32 99, i8 signext %22)
  %24 = load i32, i32* @SISCR, align 4
  %25 = call i32 @SETIREGOR(i32 %24, i32 23, i32 128)
  %26 = load i32, i32* @SISSR, align 4
  %27 = call i32 @SETIREGOR(i32 %26, i32 31, i32 4)
  %28 = load i32, i32* @SISSR, align 4
  %29 = call i32 @SETIREGAND(i32 %28, i32 7, i32 251)
  %30 = load i32, i32* @SISSR, align 4
  %31 = call i32 @SETIREG(i32 %30, i32 0, i8 signext 3)
  %32 = load i32, i32* @SISSR, align 4
  %33 = call i32 @SETIREG(i32 %32, i32 1, i8 signext 33)
  %34 = load i32, i32* @SISSR, align 4
  %35 = call i32 @SETIREG(i32 %34, i32 2, i8 signext 15)
  %36 = load i32, i32* @SISSR, align 4
  %37 = call i32 @SETIREG(i32 %36, i32 3, i8 signext 0)
  %38 = load i32, i32* @SISSR, align 4
  %39 = call i32 @SETIREG(i32 %38, i32 4, i8 signext 14)
  %40 = load i32, i32* @SISMISCW, align 4
  %41 = call i32 @SETREG(i32 %40, i8 signext 35)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %53, %2
  %43 = load i32, i32* %5, align 4
  %44 = icmp sle i32 %43, 24
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* @SISCR, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [25 x i8], [25 x i8]* @sisusb_set_default_mode.crtcrdata, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @SETIREG(i32 %46, i32 %47, i8 signext %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %42

56:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %73, %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %58, 19
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load i32, i32* @SISINPSTAT, align 4
  %62 = call i32 @GETREG(i32 %61, i32* %12)
  %63 = load i32, i32* @SISAR, align 4
  %64 = load i32, i32* %5, align 4
  %65 = trunc i32 %64 to i8
  %66 = call i32 @SETREG(i32 %63, i8 signext %65)
  %67 = load i32, i32* @SISAR, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* @sisusb_set_default_mode.attrdata, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @SETREG(i32 %67, i8 signext %71)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load i32, i32* @SISINPSTAT, align 4
  %78 = call i32 @GETREG(i32 %77, i32* %12)
  %79 = load i32, i32* @SISAR, align 4
  %80 = call i32 @SETREG(i32 %79, i8 signext 20)
  %81 = load i32, i32* @SISAR, align 4
  %82 = call i32 @SETREG(i32 %81, i8 signext 0)
  %83 = load i32, i32* @SISINPSTAT, align 4
  %84 = call i32 @GETREG(i32 %83, i32* %12)
  %85 = load i32, i32* @SISAR, align 4
  %86 = call i32 @SETREG(i32 %85, i8 signext 32)
  %87 = load i32, i32* @SISINPSTAT, align 4
  %88 = call i32 @GETREG(i32 %87, i32* %12)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %100, %76
  %90 = load i32, i32* %5, align 4
  %91 = icmp sle i32 %90, 8
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* @SISGR, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [9 x i8], [9 x i8]* @sisusb_set_default_mode.grcdata, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @SETIREG(i32 %93, i32 %94, i8 signext %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %89

103:                                              ; preds = %89
  %104 = load i32, i32* @SISGR, align 4
  %105 = call i32 @SETIREGAND(i32 %104, i32 5, i32 191)
  store i32 10, i32* %5, align 4
  br label %106

106:                                              ; preds = %113, %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp sle i32 %107, 14
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* @SISSR, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @SETIREG(i32 %110, i32 %111, i8 signext 0)
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %106

116:                                              ; preds = %106
  %117 = load i32, i32* @SISSR, align 4
  %118 = call i32 @SETIREGAND(i32 %117, i32 55, i32 254)
  %119 = load i32, i32* @SISMISCW, align 4
  %120 = call i32 @SETREG(i32 %119, i8 signext -17)
  %121 = load i32, i32* @SISCR, align 4
  %122 = call i32 @SETIREG(i32 %121, i32 17, i8 signext 0)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %134, %116
  %124 = load i32, i32* %5, align 4
  %125 = icmp sle i32 %124, 7
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load i32, i32* @SISCR, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @SETIREG(i32 %127, i32 %128, i8 signext %132)
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %123

139:                                              ; preds = %123
  store i32 16, i32* %6, align 4
  br label %140

140:                                              ; preds = %151, %139
  %141 = load i32, i32* %5, align 4
  %142 = icmp sle i32 %141, 10
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = load i32, i32* @SISCR, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = call i32 @SETIREG(i32 %144, i32 %145, i8 signext %149)
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %140

156:                                              ; preds = %140
  store i32 21, i32* %6, align 4
  br label %157

157:                                              ; preds = %168, %156
  %158 = load i32, i32* %5, align 4
  %159 = icmp sle i32 %158, 12
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i32, i32* @SISCR, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = call i32 @SETIREG(i32 %161, i32 %162, i8 signext %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %157

173:                                              ; preds = %157
  store i32 10, i32* %6, align 4
  br label %174

174:                                              ; preds = %185, %173
  %175 = load i32, i32* %5, align 4
  %176 = icmp sle i32 %175, 15
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = load i32, i32* @SISSR, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = call i32 @SETIREG(i32 %178, i32 %179, i8 signext %183)
  br label %185

185:                                              ; preds = %177
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %174

190:                                              ; preds = %174
  %191 = load i32, i32* @SISSR, align 4
  %192 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 16), align 16
  %193 = sext i8 %192 to i32
  %194 = and i32 %193, 224
  %195 = trunc i32 %194 to i8
  %196 = call i32 @SETIREG(i32 %191, i32 14, i8 signext %195)
  %197 = load i32, i32* @SISCR, align 4
  %198 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 16), align 16
  %199 = sext i8 %198 to i32
  %200 = and i32 %199, 1
  %201 = shl i32 %200, 5
  %202 = trunc i32 %201 to i8
  %203 = call i32 @SETIREGANDOR(i32 %197, i32 9, i32 95, i8 signext %202)
  %204 = load i32, i32* @SISCR, align 4
  %205 = call i32 @SETIREG(i32 %204, i32 20, i8 signext 79)
  %206 = load i32, i32* %7, align 4
  %207 = sdiv i32 %206, 16
  %208 = load i32, i32* %8, align 4
  %209 = mul nsw i32 %208, 2
  %210 = mul nsw i32 %207, %209
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* @SISSR, align 4
  %212 = load i32, i32* %9, align 4
  %213 = ashr i32 %212, 8
  %214 = and i32 %213, 15
  %215 = trunc i32 %214 to i8
  %216 = call i32 @SETIREGANDOR(i32 %211, i32 14, i32 240, i8 signext %215)
  %217 = load i32, i32* @SISCR, align 4
  %218 = load i32, i32* %9, align 4
  %219 = and i32 %218, 255
  %220 = trunc i32 %219 to i8
  %221 = call i32 @SETIREG(i32 %217, i32 19, i8 signext %220)
  %222 = load i32, i32* %9, align 4
  %223 = shl i32 %222, 5
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %9, align 4
  %225 = ashr i32 %224, 8
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* @SISSR, align 4
  %227 = load i32, i32* %12, align 4
  %228 = trunc i32 %227 to i8
  %229 = call i32 @SETIREG(i32 %226, i32 16, i8 signext %228)
  %230 = load i32, i32* @SISSR, align 4
  %231 = call i32 @SETIREG(i32 %230, i32 49, i8 signext 0)
  %232 = load i32, i32* @SISSR, align 4
  %233 = call i32 @SETIREG(i32 %232, i32 43, i8 signext 27)
  %234 = load i32, i32* @SISSR, align 4
  %235 = call i32 @SETIREG(i32 %234, i32 44, i8 signext -31)
  %236 = load i32, i32* @SISSR, align 4
  %237 = call i32 @SETIREG(i32 %236, i32 45, i8 signext 1)
  %238 = load i32, i32* @SISSR, align 4
  %239 = call i32 @SETIREGAND(i32 %238, i32 61, i32 254)
  %240 = load i32, i32* @SISSR, align 4
  %241 = call i32 @SETIREG(i32 %240, i32 8, i8 signext -82)
  %242 = load i32, i32* @SISSR, align 4
  %243 = call i32 @SETIREGAND(i32 %242, i32 9, i32 240)
  %244 = load i32, i32* @SISSR, align 4
  %245 = call i32 @SETIREG(i32 %244, i32 8, i8 signext 52)
  %246 = load i32, i32* @SISSR, align 4
  %247 = call i32 @SETIREGOR(i32 %246, i32 61, i32 1)
  %248 = load i32, i32* @SISSR, align 4
  %249 = call i32 @SETIREGAND(i32 %248, i32 31, i32 63)
  %250 = load i32, i32* @SISSR, align 4
  %251 = call i32 @SETIREGANDOR(i32 %250, i32 6, i32 192, i8 signext 10)
  %252 = load i32, i32* @SISCR, align 4
  %253 = call i32 @SETIREG(i32 %252, i32 25, i8 signext 0)
  %254 = load i32, i32* @SISCR, align 4
  %255 = call i32 @SETIREGAND(i32 %254, i32 26, i32 252)
  %256 = load i32, i32* @SISSR, align 4
  %257 = call i32 @SETIREGAND(i32 %256, i32 15, i32 183)
  %258 = load i32, i32* @SISSR, align 4
  %259 = call i32 @SETIREGAND(i32 %258, i32 49, i32 251)
  %260 = load i32, i32* @SISSR, align 4
  %261 = call i32 @SETIREGANDOR(i32 %260, i32 33, i32 31, i8 signext -96)
  %262 = load i32, i32* @SISSR, align 4
  %263 = call i32 @SETIREGAND(i32 %262, i32 50, i32 243)
  %264 = load i32, i32* @SISSR, align 4
  %265 = call i32 @SETIREGANDOR(i32 %264, i32 7, i32 248, i8 signext 3)
  %266 = load i32, i32* @SISCR, align 4
  %267 = call i32 @SETIREG(i32 %266, i32 82, i8 signext 108)
  %268 = load i32, i32* @SISCR, align 4
  %269 = call i32 @SETIREG(i32 %268, i32 13, i8 signext 0)
  %270 = load i32, i32* @SISCR, align 4
  %271 = call i32 @SETIREG(i32 %270, i32 12, i8 signext 0)
  %272 = load i32, i32* @SISSR, align 4
  %273 = call i32 @SETIREG(i32 %272, i32 13, i8 signext 0)
  %274 = load i32, i32* @SISSR, align 4
  %275 = call i32 @SETIREGAND(i32 %274, i32 55, i32 254)
  %276 = load i32, i32* @SISCR, align 4
  %277 = call i32 @SETIREG(i32 %276, i32 50, i8 signext 32)
  %278 = load i32, i32* @SISSR, align 4
  %279 = call i32 @SETIREGAND(i32 %278, i32 1, i32 223)
  %280 = load i32, i32* @SISCR, align 4
  %281 = load i32, i32* %11, align 4
  %282 = and i32 %281, 191
  %283 = trunc i32 %282 to i8
  %284 = call i32 @SETIREG(i32 %280, i32 99, i8 signext %283)
  %285 = load i32, i32* @SISSR, align 4
  %286 = load i32, i32* %10, align 4
  %287 = and i32 %286, 251
  %288 = trunc i32 %287 to i8
  %289 = call i32 @SETIREG(i32 %285, i32 49, i8 signext %288)
  %290 = load i32, i32* %4, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %190
  %293 = load i32, i32* @SISSR, align 4
  %294 = call i32 @SETIREG(i32 %293, i32 32, i8 signext -95)
  %295 = load i32, i32* @SISSR, align 4
  %296 = call i32 @SETIREGOR(i32 %295, i32 30, i32 90)
  %297 = load i32, i32* @SISSR, align 4
  %298 = call i32 @SETIREG(i32 %297, i32 38, i8 signext 1)
  %299 = load i32, i32* @SISSR, align 4
  %300 = call i32 @SETIREG(i32 %299, i32 39, i8 signext 31)
  %301 = load i32, i32* @SISSR, align 4
  %302 = call i32 @SETIREG(i32 %301, i32 38, i8 signext 0)
  br label %303

303:                                              ; preds = %292, %190
  %304 = load i32, i32* @SISCR, align 4
  %305 = call i32 @SETIREG(i32 %304, i32 52, i8 signext 68)
  ret void
}

declare dso_local i32 @GETIREG(i32, i32, i32*) #1

declare dso_local i32 @SETIREGOR(i32, i32, i32) #1

declare dso_local i32 @SETIREG(i32, i32, i8 signext) #1

declare dso_local i32 @SETIREGAND(i32, i32, i32) #1

declare dso_local i32 @SETREG(i32, i8 signext) #1

declare dso_local i32 @GETREG(i32, i32*) #1

declare dso_local i32 @SETIREGANDOR(i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
