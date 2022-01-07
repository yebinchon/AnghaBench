; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_con_trol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_con_trol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.vc_data = type { i32, i32, i32, i32*, i32, i32, i64, i32*, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@ESnormal = common dso_local global i8* null, align 8
@lnm = common dso_local global i32 0, align 4
@kbdapplic = common dso_local global i32 0, align 4
@NPAR = common dso_local global i64 0, align 8
@EPdec = common dso_local global i8* null, align 8
@EPgt = common dso_local global i8* null, align 8
@EPeq = common dso_local global i8* null, align 8
@EPlt = common dso_local global i8* null, align 8
@EPecma = common dso_local global i8* null, align 8
@cur_default = common dso_local global i32 0, align 4
@GRAF_MAP = common dso_local global i8* null, align 8
@LAT1_MAP = common dso_local global i8* null, align 8
@IBMPC_MAP = common dso_local global i8* null, align 8
@USER_MAP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.vc_data*, i32)* @do_con_trol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_con_trol(%struct.tty_struct* %0, %struct.vc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.vc_data* %1, %struct.vc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 133
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 8
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 13
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %1348

20:                                               ; preds = %16, %13, %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %155 [
    i32 0, label %22
    i32 7, label %23
    i32 8, label %48
    i32 9, label %51
    i32 10, label %105
    i32 11, label %105
    i32 12, label %105
    i32 13, label %114
    i32 14, label %117
    i32 15, label %129
    i32 24, label %141
    i32 26, label %141
    i32 27, label %146
    i32 127, label %149
    i32 155, label %152
  ]

22:                                               ; preds = %20
  br label %1348

23:                                               ; preds = %20
  %24 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 133
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** @ESnormal, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %47

33:                                               ; preds = %23
  %34 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 26
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 27
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 26
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @kd_mksound(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  br label %47

47:                                               ; preds = %46, %28
  br label %1348

48:                                               ; preds = %20
  %49 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %50 = call i32 @bs(%struct.vc_data* %49)
  br label %1348

51:                                               ; preds = %20
  %52 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 1
  %56 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %93, %51
  %61 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 25
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %60
  %70 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %75 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = ashr i32 %79, 5
  %81 = and i32 7, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %76, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 31
  %89 = shl i32 1, %88
  %90 = and i32 %84, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %69
  br label %94

93:                                               ; preds = %69
  br label %60

94:                                               ; preds = %92, %60
  %95 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %96 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 %97, 1
  %99 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %104 = call i32 @notify_write(%struct.vc_data* %103, i8 signext 9)
  br label %1348

105:                                              ; preds = %20, %20, %20
  %106 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %107 = call i32 @lf(%struct.vc_data* %106)
  %108 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %109 = load i32, i32* @lnm, align 4
  %110 = call i32 @is_kbd(%struct.vc_data* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %1348

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %20, %113
  %115 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %116 = call i32 @cr(%struct.vc_data* %115)
  br label %1348

117:                                              ; preds = %20
  %118 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %119 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %118, i32 0, i32 4
  store i32 1, i32* %119, align 8
  %120 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %121 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %120, i32 0, i32 19
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %124 = call i8* @set_translate(i8* %122, %struct.vc_data* %123)
  %125 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %126 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %125, i32 0, i32 20
  store i8* %124, i8** %126, align 8
  %127 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %128 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %127, i32 0, i32 5
  store i32 1, i32* %128, align 4
  br label %1348

129:                                              ; preds = %20
  %130 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %131 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %130, i32 0, i32 4
  store i32 0, i32* %131, align 8
  %132 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %133 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %132, i32 0, i32 21
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %136 = call i8* @set_translate(i8* %134, %struct.vc_data* %135)
  %137 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %138 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %137, i32 0, i32 20
  store i8* %136, i8** %138, align 8
  %139 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %140 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %139, i32 0, i32 5
  store i32 0, i32* %140, align 4
  br label %1348

141:                                              ; preds = %20, %20
  %142 = load i8*, i8** @ESnormal, align 8
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %145 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %1348

146:                                              ; preds = %20
  %147 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %148 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %147, i32 0, i32 0
  store i32 138, i32* %148, align 8
  br label %1348

149:                                              ; preds = %20
  %150 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %151 = call i32 @del(%struct.vc_data* %150)
  br label %1348

152:                                              ; preds = %20
  %153 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %154 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %153, i32 0, i32 0
  store i32 128, i32* %154, align 8
  br label %1348

155:                                              ; preds = %20
  %156 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %157 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %1343 [
    i32 138, label %159
    i32 134, label %233
    i32 132, label %290
    i32 128, label %423
    i32 136, label %477
    i32 139, label %1180
    i32 131, label %1192
    i32 137, label %1205
    i32 135, label %1210
    i32 130, label %1244
    i32 129, label %1293
    i32 133, label %1342
  ]

159:                                              ; preds = %155
  %160 = load i8*, i8** @ESnormal, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %163 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %6, align 4
  switch i32 %164, label %232 [
    i32 91, label %165
    i32 93, label %168
    i32 37, label %171
    i32 69, label %174
    i32 77, label %179
    i32 68, label %182
    i32 72, label %185
    i32 90, label %203
    i32 55, label %206
    i32 56, label %209
    i32 40, label %212
    i32 41, label %215
    i32 35, label %218
    i32 99, label %221
    i32 62, label %224
    i32 61, label %228
  ]

165:                                              ; preds = %159
  %166 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %167 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %166, i32 0, i32 0
  store i32 128, i32* %167, align 8
  br label %1348

168:                                              ; preds = %159
  %169 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %170 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %169, i32 0, i32 0
  store i32 134, i32* %170, align 8
  br label %1348

171:                                              ; preds = %159
  %172 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %173 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %172, i32 0, i32 0
  store i32 131, i32* %173, align 8
  br label %1348

174:                                              ; preds = %159
  %175 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %176 = call i32 @cr(%struct.vc_data* %175)
  %177 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %178 = call i32 @lf(%struct.vc_data* %177)
  br label %1348

179:                                              ; preds = %159
  %180 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %181 = call i32 @ri(%struct.vc_data* %180)
  br label %1348

182:                                              ; preds = %159
  %183 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %184 = call i32 @lf(%struct.vc_data* %183)
  br label %1348

185:                                              ; preds = %159
  %186 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %187 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 31
  %190 = shl i32 1, %189
  %191 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %192 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %195 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = ashr i32 %196, 5
  %198 = and i32 7, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %193, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %190
  store i32 %202, i32* %200, align 4
  br label %1348

203:                                              ; preds = %159
  %204 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %205 = call i32 @respond_ID(%struct.tty_struct* %204)
  br label %1348

206:                                              ; preds = %159
  %207 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %208 = call i32 @save_cur(%struct.vc_data* %207)
  br label %1348

209:                                              ; preds = %159
  %210 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %211 = call i32 @restore_cur(%struct.vc_data* %210)
  br label %1348

212:                                              ; preds = %159
  %213 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %214 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %213, i32 0, i32 0
  store i32 130, i32* %214, align 8
  br label %1348

215:                                              ; preds = %159
  %216 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %217 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %216, i32 0, i32 0
  store i32 129, i32* %217, align 8
  br label %1348

218:                                              ; preds = %159
  %219 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %220 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %219, i32 0, i32 0
  store i32 135, i32* %220, align 8
  br label %1348

221:                                              ; preds = %159
  %222 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %223 = call i32 @reset_terminal(%struct.vc_data* %222, i32 1)
  br label %1348

224:                                              ; preds = %159
  %225 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %226 = load i32, i32* @kbdapplic, align 4
  %227 = call i32 @clr_kbd(%struct.vc_data* %225, i32 %226)
  br label %1348

228:                                              ; preds = %159
  %229 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %230 = load i32, i32* @kbdapplic, align 4
  %231 = call i32 @set_kbd(%struct.vc_data* %229, i32 %230)
  br label %1348

232:                                              ; preds = %159
  br label %1348

233:                                              ; preds = %155
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %234, 80
  br i1 %235, label %236, label %263

236:                                              ; preds = %233
  %237 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %238 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %237, i32 0, i32 6
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %253, %236
  %240 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %241 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @NPAR, align 8
  %244 = icmp ult i64 %242, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %239
  %246 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %247 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %246, i32 0, i32 7
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %250 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  store i32 0, i32* %252, align 4
  br label %253

253:                                              ; preds = %245
  %254 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %255 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %254, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %255, align 8
  br label %239

258:                                              ; preds = %239
  %259 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %260 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %259, i32 0, i32 6
  store i64 0, i64* %260, align 8
  %261 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %262 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %261, i32 0, i32 0
  store i32 132, i32* %262, align 8
  br label %1348

263:                                              ; preds = %233
  %264 = load i32, i32* %6, align 4
  %265 = icmp eq i32 %264, 82
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %268 = call i32 @reset_palette(%struct.vc_data* %267)
  %269 = load i8*, i8** @ESnormal, align 8
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %272 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  br label %288

273:                                              ; preds = %263
  %274 = load i32, i32* %6, align 4
  %275 = icmp sge i32 %274, 48
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = load i32, i32* %6, align 4
  %278 = icmp sle i32 %277, 57
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %281 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %280, i32 0, i32 0
  store i32 133, i32* %281, align 8
  br label %287

282:                                              ; preds = %276, %273
  %283 = load i8*, i8** @ESnormal, align 8
  %284 = ptrtoint i8* %283 to i32
  %285 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %286 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %282, %279
  br label %288

288:                                              ; preds = %287, %266
  br label %289

289:                                              ; preds = %288
  br label %1348

290:                                              ; preds = %155
  %291 = load i32, i32* %6, align 4
  %292 = call i32 @isxdigit(i32 %291) #3
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %417

294:                                              ; preds = %290
  %295 = load i32, i32* %6, align 4
  %296 = call i32 @hex_to_bin(i32 %295)
  %297 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %298 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %297, i32 0, i32 7
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %301 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %300, i32 0, i32 6
  %302 = load i64, i64* %301, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %301, align 8
  %304 = getelementptr inbounds i32, i32* %299, i64 %302
  store i32 %296, i32* %304, align 4
  %305 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %306 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %307, 7
  br i1 %308, label %309, label %416

309:                                              ; preds = %294
  %310 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %311 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %310, i32 0, i32 7
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  %314 = load i32, i32* %313, align 4
  %315 = mul nsw i32 %314, 3
  store i32 %315, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %316 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %317 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %316, i32 0, i32 7
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %8, align 4
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %318, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = mul nsw i32 16, %323
  %325 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %326 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %325, i32 0, i32 8
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %7, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %324, i32* %330, align 4
  %331 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %332 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %331, i32 0, i32 7
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %8, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %8, align 4
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %340 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %339, i32 0, i32 8
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %7, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %7, align 4
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, %338
  store i32 %347, i32* %345, align 4
  %348 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %349 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %348, i32 0, i32 7
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %8, align 4
  %353 = sext i32 %351 to i64
  %354 = getelementptr inbounds i32, i32* %350, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = mul nsw i32 16, %355
  %357 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %358 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %357, i32 0, i32 8
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  store i32 %356, i32* %362, align 4
  %363 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %364 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %363, i32 0, i32 7
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %8, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %8, align 4
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %372 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %371, i32 0, i32 8
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %7, align 4
  %376 = sext i32 %374 to i64
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, %370
  store i32 %379, i32* %377, align 4
  %380 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %381 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %380, i32 0, i32 7
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %8, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %8, align 4
  %385 = sext i32 %383 to i64
  %386 = getelementptr inbounds i32, i32* %382, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = mul nsw i32 16, %387
  %389 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %390 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %389, i32 0, i32 8
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 %388, i32* %394, align 4
  %395 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %396 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %395, i32 0, i32 7
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %403 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %402, i32 0, i32 8
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %408, %401
  store i32 %409, i32* %407, align 4
  %410 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %411 = call i32 @set_palette(%struct.vc_data* %410)
  %412 = load i8*, i8** @ESnormal, align 8
  %413 = ptrtoint i8* %412 to i32
  %414 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %415 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  br label %416

416:                                              ; preds = %309, %294
  br label %422

417:                                              ; preds = %290
  %418 = load i8*, i8** @ESnormal, align 8
  %419 = ptrtoint i8* %418 to i32
  %420 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %421 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 8
  br label %422

422:                                              ; preds = %417, %416
  br label %1348

423:                                              ; preds = %155
  %424 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %425 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %424, i32 0, i32 6
  store i64 0, i64* %425, align 8
  br label %426

426:                                              ; preds = %440, %423
  %427 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %428 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %427, i32 0, i32 6
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @NPAR, align 8
  %431 = icmp ult i64 %429, %430
  br i1 %431, label %432, label %445

432:                                              ; preds = %426
  %433 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %434 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %433, i32 0, i32 7
  %435 = load i32*, i32** %434, align 8
  %436 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %437 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds i32, i32* %435, i64 %438
  store i32 0, i32* %439, align 4
  br label %440

440:                                              ; preds = %432
  %441 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %442 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %441, i32 0, i32 6
  %443 = load i64, i64* %442, align 8
  %444 = add i64 %443, 1
  store i64 %444, i64* %442, align 8
  br label %426

445:                                              ; preds = %426
  %446 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %447 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %446, i32 0, i32 6
  store i64 0, i64* %447, align 8
  %448 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %449 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %448, i32 0, i32 0
  store i32 136, i32* %449, align 8
  %450 = load i32, i32* %6, align 4
  %451 = icmp eq i32 %450, 91
  br i1 %451, label %452, label %455

452:                                              ; preds = %445
  %453 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %454 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %453, i32 0, i32 0
  store i32 137, i32* %454, align 8
  br label %1348

455:                                              ; preds = %445
  %456 = load i32, i32* %6, align 4
  switch i32 %456, label %473 [
    i32 63, label %457
    i32 62, label %461
    i32 61, label %465
    i32 60, label %469
  ]

457:                                              ; preds = %455
  %458 = load i8*, i8** @EPdec, align 8
  %459 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %460 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %459, i32 0, i32 9
  store i8* %458, i8** %460, align 8
  br label %1348

461:                                              ; preds = %455
  %462 = load i8*, i8** @EPgt, align 8
  %463 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %464 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %463, i32 0, i32 9
  store i8* %462, i8** %464, align 8
  br label %1348

465:                                              ; preds = %455
  %466 = load i8*, i8** @EPeq, align 8
  %467 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %468 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %467, i32 0, i32 9
  store i8* %466, i8** %468, align 8
  br label %1348

469:                                              ; preds = %455
  %470 = load i8*, i8** @EPlt, align 8
  %471 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %472 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %471, i32 0, i32 9
  store i8* %470, i8** %472, align 8
  br label %1348

473:                                              ; preds = %455
  %474 = load i8*, i8** @EPecma, align 8
  %475 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %476 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %475, i32 0, i32 9
  store i8* %474, i8** %476, align 8
  br label %477

477:                                              ; preds = %155, %473
  %478 = load i32, i32* %6, align 4
  %479 = icmp eq i32 %478, 59
  br i1 %479, label %480, label %492

480:                                              ; preds = %477
  %481 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %482 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %481, i32 0, i32 6
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @NPAR, align 8
  %485 = sub i64 %484, 1
  %486 = icmp ult i64 %483, %485
  br i1 %486, label %487, label %492

487:                                              ; preds = %480
  %488 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %489 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %488, i32 0, i32 6
  %490 = load i64, i64* %489, align 8
  %491 = add i64 %490, 1
  store i64 %491, i64* %489, align 8
  br label %1348

492:                                              ; preds = %480, %477
  %493 = load i32, i32* %6, align 4
  %494 = icmp sge i32 %493, 48
  br i1 %494, label %495, label %519

495:                                              ; preds = %492
  %496 = load i32, i32* %6, align 4
  %497 = icmp sle i32 %496, 57
  br i1 %497, label %498, label %519

498:                                              ; preds = %495
  %499 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %500 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %499, i32 0, i32 7
  %501 = load i32*, i32** %500, align 8
  %502 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %503 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %502, i32 0, i32 6
  %504 = load i64, i64* %503, align 8
  %505 = getelementptr inbounds i32, i32* %501, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = mul nsw i32 %506, 10
  store i32 %507, i32* %505, align 4
  %508 = load i32, i32* %6, align 4
  %509 = sub nsw i32 %508, 48
  %510 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %511 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %510, i32 0, i32 7
  %512 = load i32*, i32** %511, align 8
  %513 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %514 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %513, i32 0, i32 6
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds i32, i32* %512, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = add nsw i32 %517, %509
  store i32 %518, i32* %516, align 4
  br label %1348

519:                                              ; preds = %495, %492
  br label %520

520:                                              ; preds = %519
  %521 = load i32, i32* %6, align 4
  %522 = icmp sge i32 %521, 32
  br i1 %522, label %523, label %529

523:                                              ; preds = %520
  %524 = load i32, i32* %6, align 4
  %525 = icmp sle i32 %524, 63
  br i1 %525, label %526, label %529

526:                                              ; preds = %523
  %527 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %528 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %527, i32 0, i32 0
  store i32 139, i32* %528, align 8
  br label %1348

529:                                              ; preds = %523, %520
  %530 = load i8*, i8** @ESnormal, align 8
  %531 = ptrtoint i8* %530 to i32
  %532 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %533 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %532, i32 0, i32 0
  store i32 %531, i32* %533, align 8
  %534 = load i32, i32* %6, align 4
  switch i32 %534, label %663 [
    i32 104, label %535
    i32 108, label %545
    i32 99, label %555
    i32 109, label %596
    i32 110, label %633
  ]

535:                                              ; preds = %529
  %536 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %537 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %536, i32 0, i32 9
  %538 = load i8*, i8** %537, align 8
  %539 = load i8*, i8** @EPdec, align 8
  %540 = icmp ule i8* %538, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %535
  %542 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %543 = call i32 @set_mode(%struct.vc_data* %542, i32 1)
  br label %544

544:                                              ; preds = %541, %535
  br label %1348

545:                                              ; preds = %529
  %546 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %547 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %546, i32 0, i32 9
  %548 = load i8*, i8** %547, align 8
  %549 = load i8*, i8** @EPdec, align 8
  %550 = icmp ule i8* %548, %549
  br i1 %550, label %551, label %554

551:                                              ; preds = %545
  %552 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %553 = call i32 @set_mode(%struct.vc_data* %552, i32 0)
  br label %554

554:                                              ; preds = %551, %545
  br label %1348

555:                                              ; preds = %529
  %556 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %557 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %556, i32 0, i32 9
  %558 = load i8*, i8** %557, align 8
  %559 = load i8*, i8** @EPdec, align 8
  %560 = icmp eq i8* %558, %559
  br i1 %560, label %561, label %595

561:                                              ; preds = %555
  %562 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %563 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %562, i32 0, i32 7
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 0
  %566 = load i32, i32* %565, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %590

568:                                              ; preds = %561
  %569 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %570 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %569, i32 0, i32 7
  %571 = load i32*, i32** %570, align 8
  %572 = getelementptr inbounds i32, i32* %571, i64 0
  %573 = load i32, i32* %572, align 4
  %574 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %575 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %574, i32 0, i32 7
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 1
  %578 = load i32, i32* %577, align 4
  %579 = shl i32 %578, 8
  %580 = or i32 %573, %579
  %581 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %582 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %581, i32 0, i32 7
  %583 = load i32*, i32** %582, align 8
  %584 = getelementptr inbounds i32, i32* %583, i64 2
  %585 = load i32, i32* %584, align 4
  %586 = shl i32 %585, 16
  %587 = or i32 %580, %586
  %588 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %589 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %588, i32 0, i32 10
  store i32 %587, i32* %589, align 8
  br label %594

590:                                              ; preds = %561
  %591 = load i32, i32* @cur_default, align 4
  %592 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %593 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %592, i32 0, i32 10
  store i32 %591, i32* %593, align 8
  br label %594

594:                                              ; preds = %590, %568
  br label %1348

595:                                              ; preds = %555
  br label %663

596:                                              ; preds = %529
  %597 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %598 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %597, i32 0, i32 9
  %599 = load i8*, i8** %598, align 8
  %600 = load i8*, i8** @EPdec, align 8
  %601 = icmp eq i8* %599, %600
  br i1 %601, label %602, label %632

602:                                              ; preds = %596
  %603 = call i32 (...) @clear_selection()
  %604 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %605 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %604, i32 0, i32 7
  %606 = load i32*, i32** %605, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 0
  %608 = load i32, i32* %607, align 4
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %625

610:                                              ; preds = %602
  %611 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %612 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %611, i32 0, i32 7
  %613 = load i32*, i32** %612, align 8
  %614 = getelementptr inbounds i32, i32* %613, i64 0
  %615 = load i32, i32* %614, align 4
  %616 = shl i32 %615, 8
  %617 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %618 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %617, i32 0, i32 7
  %619 = load i32*, i32** %618, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 1
  %621 = load i32, i32* %620, align 4
  %622 = or i32 %616, %621
  %623 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %624 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %623, i32 0, i32 11
  store i32 %622, i32* %624, align 4
  br label %631

625:                                              ; preds = %602
  %626 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %627 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %626, i32 0, i32 12
  %628 = load i32, i32* %627, align 8
  %629 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %630 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %629, i32 0, i32 11
  store i32 %628, i32* %630, align 4
  br label %631

631:                                              ; preds = %625, %610
  br label %1348

632:                                              ; preds = %596
  br label %663

633:                                              ; preds = %529
  %634 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %635 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %634, i32 0, i32 9
  %636 = load i8*, i8** %635, align 8
  %637 = load i8*, i8** @EPecma, align 8
  %638 = icmp eq i8* %636, %637
  br i1 %638, label %639, label %662

639:                                              ; preds = %633
  %640 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %641 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %640, i32 0, i32 7
  %642 = load i32*, i32** %641, align 8
  %643 = getelementptr inbounds i32, i32* %642, i64 0
  %644 = load i32, i32* %643, align 4
  %645 = icmp eq i32 %644, 5
  br i1 %645, label %646, label %649

646:                                              ; preds = %639
  %647 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %648 = call i32 @status_report(%struct.tty_struct* %647)
  br label %661

649:                                              ; preds = %639
  %650 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %651 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %650, i32 0, i32 7
  %652 = load i32*, i32** %651, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 0
  %654 = load i32, i32* %653, align 4
  %655 = icmp eq i32 %654, 6
  br i1 %655, label %656, label %660

656:                                              ; preds = %649
  %657 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %658 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %659 = call i32 @cursor_report(%struct.vc_data* %657, %struct.tty_struct* %658)
  br label %660

660:                                              ; preds = %656, %649
  br label %661

661:                                              ; preds = %660, %646
  br label %662

662:                                              ; preds = %661, %633
  br label %1348

663:                                              ; preds = %529, %632, %595
  %664 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %665 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %664, i32 0, i32 9
  %666 = load i8*, i8** %665, align 8
  %667 = load i8*, i8** @EPecma, align 8
  %668 = icmp ne i8* %666, %667
  br i1 %668, label %669, label %673

669:                                              ; preds = %663
  %670 = load i8*, i8** @EPecma, align 8
  %671 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %672 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %671, i32 0, i32 9
  store i8* %670, i8** %672, align 8
  br label %1348

673:                                              ; preds = %663
  %674 = load i32, i32* %6, align 4
  switch i32 %674, label %1179 [
    i32 71, label %675
    i32 96, label %675
    i32 65, label %700
    i32 66, label %729
    i32 101, label %729
    i32 67, label %758
    i32 97, label %758
    i32 68, label %787
    i32 69, label %816
    i32 70, label %842
    i32 100, label %868
    i32 72, label %893
    i32 102, label %893
    i32 74, label %934
    i32 75, label %942
    i32 76, label %950
    i32 77, label %958
    i32 80, label %966
    i32 99, label %974
    i32 103, label %985
    i32 109, label %1053
    i32 113, label %1056
    i32 114, label %1084
    i32 115, label %1154
    i32 117, label %1157
    i32 88, label %1160
    i32 64, label %1168
    i32 93, label %1176
  ]

675:                                              ; preds = %673, %673
  %676 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %677 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %676, i32 0, i32 7
  %678 = load i32*, i32** %677, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 0
  %680 = load i32, i32* %679, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %689

682:                                              ; preds = %675
  %683 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %684 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %683, i32 0, i32 7
  %685 = load i32*, i32** %684, align 8
  %686 = getelementptr inbounds i32, i32* %685, i64 0
  %687 = load i32, i32* %686, align 4
  %688 = add nsw i32 %687, -1
  store i32 %688, i32* %686, align 4
  br label %689

689:                                              ; preds = %682, %675
  %690 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %691 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %692 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %691, i32 0, i32 7
  %693 = load i32*, i32** %692, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 0
  %695 = load i32, i32* %694, align 4
  %696 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %697 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %696, i32 0, i32 13
  %698 = load i32, i32* %697, align 4
  %699 = call i32 @gotoxy(%struct.vc_data* %690, i32 %695, i32 %698)
  br label %1348

700:                                              ; preds = %673
  %701 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %702 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %701, i32 0, i32 7
  %703 = load i32*, i32** %702, align 8
  %704 = getelementptr inbounds i32, i32* %703, i64 0
  %705 = load i32, i32* %704, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %714, label %707

707:                                              ; preds = %700
  %708 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %709 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %708, i32 0, i32 7
  %710 = load i32*, i32** %709, align 8
  %711 = getelementptr inbounds i32, i32* %710, i64 0
  %712 = load i32, i32* %711, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %711, align 4
  br label %714

714:                                              ; preds = %707, %700
  %715 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %716 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %717 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %716, i32 0, i32 2
  %718 = load i32, i32* %717, align 8
  %719 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %720 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %719, i32 0, i32 13
  %721 = load i32, i32* %720, align 4
  %722 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %723 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %722, i32 0, i32 7
  %724 = load i32*, i32** %723, align 8
  %725 = getelementptr inbounds i32, i32* %724, i64 0
  %726 = load i32, i32* %725, align 4
  %727 = sub nsw i32 %721, %726
  %728 = call i32 @gotoxy(%struct.vc_data* %715, i32 %718, i32 %727)
  br label %1348

729:                                              ; preds = %673, %673
  %730 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %731 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %730, i32 0, i32 7
  %732 = load i32*, i32** %731, align 8
  %733 = getelementptr inbounds i32, i32* %732, i64 0
  %734 = load i32, i32* %733, align 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %743, label %736

736:                                              ; preds = %729
  %737 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %738 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %737, i32 0, i32 7
  %739 = load i32*, i32** %738, align 8
  %740 = getelementptr inbounds i32, i32* %739, i64 0
  %741 = load i32, i32* %740, align 4
  %742 = add nsw i32 %741, 1
  store i32 %742, i32* %740, align 4
  br label %743

743:                                              ; preds = %736, %729
  %744 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %745 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %746 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %745, i32 0, i32 2
  %747 = load i32, i32* %746, align 8
  %748 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %749 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %748, i32 0, i32 13
  %750 = load i32, i32* %749, align 4
  %751 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %752 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %751, i32 0, i32 7
  %753 = load i32*, i32** %752, align 8
  %754 = getelementptr inbounds i32, i32* %753, i64 0
  %755 = load i32, i32* %754, align 4
  %756 = add nsw i32 %750, %755
  %757 = call i32 @gotoxy(%struct.vc_data* %744, i32 %747, i32 %756)
  br label %1348

758:                                              ; preds = %673, %673
  %759 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %760 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %759, i32 0, i32 7
  %761 = load i32*, i32** %760, align 8
  %762 = getelementptr inbounds i32, i32* %761, i64 0
  %763 = load i32, i32* %762, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %772, label %765

765:                                              ; preds = %758
  %766 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %767 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %766, i32 0, i32 7
  %768 = load i32*, i32** %767, align 8
  %769 = getelementptr inbounds i32, i32* %768, i64 0
  %770 = load i32, i32* %769, align 4
  %771 = add nsw i32 %770, 1
  store i32 %771, i32* %769, align 4
  br label %772

772:                                              ; preds = %765, %758
  %773 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %774 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %775 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %774, i32 0, i32 2
  %776 = load i32, i32* %775, align 8
  %777 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %778 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %777, i32 0, i32 7
  %779 = load i32*, i32** %778, align 8
  %780 = getelementptr inbounds i32, i32* %779, i64 0
  %781 = load i32, i32* %780, align 4
  %782 = add nsw i32 %776, %781
  %783 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %784 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %783, i32 0, i32 13
  %785 = load i32, i32* %784, align 4
  %786 = call i32 @gotoxy(%struct.vc_data* %773, i32 %782, i32 %785)
  br label %1348

787:                                              ; preds = %673
  %788 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %789 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %788, i32 0, i32 7
  %790 = load i32*, i32** %789, align 8
  %791 = getelementptr inbounds i32, i32* %790, i64 0
  %792 = load i32, i32* %791, align 4
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %801, label %794

794:                                              ; preds = %787
  %795 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %796 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %795, i32 0, i32 7
  %797 = load i32*, i32** %796, align 8
  %798 = getelementptr inbounds i32, i32* %797, i64 0
  %799 = load i32, i32* %798, align 4
  %800 = add nsw i32 %799, 1
  store i32 %800, i32* %798, align 4
  br label %801

801:                                              ; preds = %794, %787
  %802 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %803 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %804 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %803, i32 0, i32 2
  %805 = load i32, i32* %804, align 8
  %806 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %807 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %806, i32 0, i32 7
  %808 = load i32*, i32** %807, align 8
  %809 = getelementptr inbounds i32, i32* %808, i64 0
  %810 = load i32, i32* %809, align 4
  %811 = sub nsw i32 %805, %810
  %812 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %813 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %812, i32 0, i32 13
  %814 = load i32, i32* %813, align 4
  %815 = call i32 @gotoxy(%struct.vc_data* %802, i32 %811, i32 %814)
  br label %1348

816:                                              ; preds = %673
  %817 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %818 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %817, i32 0, i32 7
  %819 = load i32*, i32** %818, align 8
  %820 = getelementptr inbounds i32, i32* %819, i64 0
  %821 = load i32, i32* %820, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %830, label %823

823:                                              ; preds = %816
  %824 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %825 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %824, i32 0, i32 7
  %826 = load i32*, i32** %825, align 8
  %827 = getelementptr inbounds i32, i32* %826, i64 0
  %828 = load i32, i32* %827, align 4
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %827, align 4
  br label %830

830:                                              ; preds = %823, %816
  %831 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %832 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %833 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %832, i32 0, i32 13
  %834 = load i32, i32* %833, align 4
  %835 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %836 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %835, i32 0, i32 7
  %837 = load i32*, i32** %836, align 8
  %838 = getelementptr inbounds i32, i32* %837, i64 0
  %839 = load i32, i32* %838, align 4
  %840 = add nsw i32 %834, %839
  %841 = call i32 @gotoxy(%struct.vc_data* %831, i32 0, i32 %840)
  br label %1348

842:                                              ; preds = %673
  %843 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %844 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %843, i32 0, i32 7
  %845 = load i32*, i32** %844, align 8
  %846 = getelementptr inbounds i32, i32* %845, i64 0
  %847 = load i32, i32* %846, align 4
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %856, label %849

849:                                              ; preds = %842
  %850 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %851 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %850, i32 0, i32 7
  %852 = load i32*, i32** %851, align 8
  %853 = getelementptr inbounds i32, i32* %852, i64 0
  %854 = load i32, i32* %853, align 4
  %855 = add nsw i32 %854, 1
  store i32 %855, i32* %853, align 4
  br label %856

856:                                              ; preds = %849, %842
  %857 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %858 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %859 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %858, i32 0, i32 13
  %860 = load i32, i32* %859, align 4
  %861 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %862 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %861, i32 0, i32 7
  %863 = load i32*, i32** %862, align 8
  %864 = getelementptr inbounds i32, i32* %863, i64 0
  %865 = load i32, i32* %864, align 4
  %866 = sub nsw i32 %860, %865
  %867 = call i32 @gotoxy(%struct.vc_data* %857, i32 0, i32 %866)
  br label %1348

868:                                              ; preds = %673
  %869 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %870 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %869, i32 0, i32 7
  %871 = load i32*, i32** %870, align 8
  %872 = getelementptr inbounds i32, i32* %871, i64 0
  %873 = load i32, i32* %872, align 4
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %875, label %882

875:                                              ; preds = %868
  %876 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %877 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %876, i32 0, i32 7
  %878 = load i32*, i32** %877, align 8
  %879 = getelementptr inbounds i32, i32* %878, i64 0
  %880 = load i32, i32* %879, align 4
  %881 = add nsw i32 %880, -1
  store i32 %881, i32* %879, align 4
  br label %882

882:                                              ; preds = %875, %868
  %883 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %884 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %885 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %884, i32 0, i32 2
  %886 = load i32, i32* %885, align 8
  %887 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %888 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %887, i32 0, i32 7
  %889 = load i32*, i32** %888, align 8
  %890 = getelementptr inbounds i32, i32* %889, i64 0
  %891 = load i32, i32* %890, align 4
  %892 = call i32 @gotoxay(%struct.vc_data* %883, i32 %886, i32 %891)
  br label %1348

893:                                              ; preds = %673, %673
  %894 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %895 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %894, i32 0, i32 7
  %896 = load i32*, i32** %895, align 8
  %897 = getelementptr inbounds i32, i32* %896, i64 0
  %898 = load i32, i32* %897, align 4
  %899 = icmp ne i32 %898, 0
  br i1 %899, label %900, label %907

900:                                              ; preds = %893
  %901 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %902 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %901, i32 0, i32 7
  %903 = load i32*, i32** %902, align 8
  %904 = getelementptr inbounds i32, i32* %903, i64 0
  %905 = load i32, i32* %904, align 4
  %906 = add nsw i32 %905, -1
  store i32 %906, i32* %904, align 4
  br label %907

907:                                              ; preds = %900, %893
  %908 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %909 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %908, i32 0, i32 7
  %910 = load i32*, i32** %909, align 8
  %911 = getelementptr inbounds i32, i32* %910, i64 1
  %912 = load i32, i32* %911, align 4
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %921

914:                                              ; preds = %907
  %915 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %916 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %915, i32 0, i32 7
  %917 = load i32*, i32** %916, align 8
  %918 = getelementptr inbounds i32, i32* %917, i64 1
  %919 = load i32, i32* %918, align 4
  %920 = add nsw i32 %919, -1
  store i32 %920, i32* %918, align 4
  br label %921

921:                                              ; preds = %914, %907
  %922 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %923 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %924 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %923, i32 0, i32 7
  %925 = load i32*, i32** %924, align 8
  %926 = getelementptr inbounds i32, i32* %925, i64 1
  %927 = load i32, i32* %926, align 4
  %928 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %929 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %928, i32 0, i32 7
  %930 = load i32*, i32** %929, align 8
  %931 = getelementptr inbounds i32, i32* %930, i64 0
  %932 = load i32, i32* %931, align 4
  %933 = call i32 @gotoxay(%struct.vc_data* %922, i32 %927, i32 %932)
  br label %1348

934:                                              ; preds = %673
  %935 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %936 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %937 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %936, i32 0, i32 7
  %938 = load i32*, i32** %937, align 8
  %939 = getelementptr inbounds i32, i32* %938, i64 0
  %940 = load i32, i32* %939, align 4
  %941 = call i32 @csi_J(%struct.vc_data* %935, i32 %940)
  br label %1348

942:                                              ; preds = %673
  %943 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %944 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %945 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %944, i32 0, i32 7
  %946 = load i32*, i32** %945, align 8
  %947 = getelementptr inbounds i32, i32* %946, i64 0
  %948 = load i32, i32* %947, align 4
  %949 = call i32 @csi_K(%struct.vc_data* %943, i32 %948)
  br label %1348

950:                                              ; preds = %673
  %951 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %952 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %953 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %952, i32 0, i32 7
  %954 = load i32*, i32** %953, align 8
  %955 = getelementptr inbounds i32, i32* %954, i64 0
  %956 = load i32, i32* %955, align 4
  %957 = call i32 @csi_L(%struct.vc_data* %951, i32 %956)
  br label %1348

958:                                              ; preds = %673
  %959 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %960 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %961 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %960, i32 0, i32 7
  %962 = load i32*, i32** %961, align 8
  %963 = getelementptr inbounds i32, i32* %962, i64 0
  %964 = load i32, i32* %963, align 4
  %965 = call i32 @csi_M(%struct.vc_data* %959, i32 %964)
  br label %1348

966:                                              ; preds = %673
  %967 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %968 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %969 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %968, i32 0, i32 7
  %970 = load i32*, i32** %969, align 8
  %971 = getelementptr inbounds i32, i32* %970, i64 0
  %972 = load i32, i32* %971, align 4
  %973 = call i32 @csi_P(%struct.vc_data* %967, i32 %972)
  br label %1348

974:                                              ; preds = %673
  %975 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %976 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %975, i32 0, i32 7
  %977 = load i32*, i32** %976, align 8
  %978 = getelementptr inbounds i32, i32* %977, i64 0
  %979 = load i32, i32* %978, align 4
  %980 = icmp ne i32 %979, 0
  br i1 %980, label %984, label %981

981:                                              ; preds = %974
  %982 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %983 = call i32 @respond_ID(%struct.tty_struct* %982)
  br label %984

984:                                              ; preds = %981, %974
  br label %1348

985:                                              ; preds = %673
  %986 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %987 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %986, i32 0, i32 7
  %988 = load i32*, i32** %987, align 8
  %989 = getelementptr inbounds i32, i32* %988, i64 0
  %990 = load i32, i32* %989, align 4
  %991 = icmp ne i32 %990, 0
  br i1 %991, label %1011, label %992

992:                                              ; preds = %985
  %993 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %994 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %993, i32 0, i32 2
  %995 = load i32, i32* %994, align 8
  %996 = and i32 %995, 31
  %997 = shl i32 1, %996
  %998 = xor i32 %997, -1
  %999 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1000 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %999, i32 0, i32 3
  %1001 = load i32*, i32** %1000, align 8
  %1002 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1003 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1002, i32 0, i32 2
  %1004 = load i32, i32* %1003, align 8
  %1005 = ashr i32 %1004, 5
  %1006 = and i32 7, %1005
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds i32, i32* %1001, i64 %1007
  %1009 = load i32, i32* %1008, align 4
  %1010 = and i32 %1009, %998
  store i32 %1010, i32* %1008, align 4
  br label %1052

1011:                                             ; preds = %985
  %1012 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1013 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1012, i32 0, i32 7
  %1014 = load i32*, i32** %1013, align 8
  %1015 = getelementptr inbounds i32, i32* %1014, i64 0
  %1016 = load i32, i32* %1015, align 4
  %1017 = icmp eq i32 %1016, 3
  br i1 %1017, label %1018, label %1051

1018:                                             ; preds = %1011
  %1019 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1020 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1019, i32 0, i32 3
  %1021 = load i32*, i32** %1020, align 8
  %1022 = getelementptr inbounds i32, i32* %1021, i64 7
  store i32 0, i32* %1022, align 4
  %1023 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1024 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1023, i32 0, i32 3
  %1025 = load i32*, i32** %1024, align 8
  %1026 = getelementptr inbounds i32, i32* %1025, i64 6
  store i32 0, i32* %1026, align 4
  %1027 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1028 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1027, i32 0, i32 3
  %1029 = load i32*, i32** %1028, align 8
  %1030 = getelementptr inbounds i32, i32* %1029, i64 5
  store i32 0, i32* %1030, align 4
  %1031 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1032 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1031, i32 0, i32 3
  %1033 = load i32*, i32** %1032, align 8
  %1034 = getelementptr inbounds i32, i32* %1033, i64 4
  store i32 0, i32* %1034, align 4
  %1035 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1036 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1035, i32 0, i32 3
  %1037 = load i32*, i32** %1036, align 8
  %1038 = getelementptr inbounds i32, i32* %1037, i64 3
  store i32 0, i32* %1038, align 4
  %1039 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1040 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1039, i32 0, i32 3
  %1041 = load i32*, i32** %1040, align 8
  %1042 = getelementptr inbounds i32, i32* %1041, i64 2
  store i32 0, i32* %1042, align 4
  %1043 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1044 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1043, i32 0, i32 3
  %1045 = load i32*, i32** %1044, align 8
  %1046 = getelementptr inbounds i32, i32* %1045, i64 1
  store i32 0, i32* %1046, align 4
  %1047 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1048 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1047, i32 0, i32 3
  %1049 = load i32*, i32** %1048, align 8
  %1050 = getelementptr inbounds i32, i32* %1049, i64 0
  store i32 0, i32* %1050, align 4
  br label %1051

1051:                                             ; preds = %1018, %1011
  br label %1052

1052:                                             ; preds = %1051, %992
  br label %1348

1053:                                             ; preds = %673
  %1054 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1055 = call i32 @csi_m(%struct.vc_data* %1054)
  br label %1348

1056:                                             ; preds = %673
  %1057 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1058 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1057, i32 0, i32 7
  %1059 = load i32*, i32** %1058, align 8
  %1060 = getelementptr inbounds i32, i32* %1059, i64 0
  %1061 = load i32, i32* %1060, align 4
  %1062 = icmp slt i32 %1061, 4
  br i1 %1062, label %1063, label %1083

1063:                                             ; preds = %1056
  %1064 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1065 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1064, i32 0, i32 24
  %1066 = load i32, i32* %1065, align 8
  %1067 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1068 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1067, i32 0, i32 7
  %1069 = load i32*, i32** %1068, align 8
  %1070 = getelementptr inbounds i32, i32* %1069, i64 0
  %1071 = load i32, i32* %1070, align 4
  %1072 = icmp slt i32 %1071, 3
  br i1 %1072, label %1073, label %1079

1073:                                             ; preds = %1063
  %1074 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1075 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1074, i32 0, i32 7
  %1076 = load i32*, i32** %1075, align 8
  %1077 = getelementptr inbounds i32, i32* %1076, i64 0
  %1078 = load i32, i32* %1077, align 4
  br label %1080

1079:                                             ; preds = %1063
  br label %1080

1080:                                             ; preds = %1079, %1073
  %1081 = phi i32 [ %1078, %1073 ], [ 4, %1079 ]
  %1082 = call i32 @vt_set_led_state(i32 %1066, i32 %1081)
  br label %1083

1083:                                             ; preds = %1080, %1056
  br label %1348

1084:                                             ; preds = %673
  %1085 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1086 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1085, i32 0, i32 7
  %1087 = load i32*, i32** %1086, align 8
  %1088 = getelementptr inbounds i32, i32* %1087, i64 0
  %1089 = load i32, i32* %1088, align 4
  %1090 = icmp ne i32 %1089, 0
  br i1 %1090, label %1098, label %1091

1091:                                             ; preds = %1084
  %1092 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1093 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1092, i32 0, i32 7
  %1094 = load i32*, i32** %1093, align 8
  %1095 = getelementptr inbounds i32, i32* %1094, i64 0
  %1096 = load i32, i32* %1095, align 4
  %1097 = add nsw i32 %1096, 1
  store i32 %1097, i32* %1095, align 4
  br label %1098

1098:                                             ; preds = %1091, %1084
  %1099 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1099, i32 0, i32 7
  %1101 = load i32*, i32** %1100, align 8
  %1102 = getelementptr inbounds i32, i32* %1101, i64 1
  %1103 = load i32, i32* %1102, align 4
  %1104 = icmp ne i32 %1103, 0
  br i1 %1104, label %1113, label %1105

1105:                                             ; preds = %1098
  %1106 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1107 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1106, i32 0, i32 14
  %1108 = load i32, i32* %1107, align 8
  %1109 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1110 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1109, i32 0, i32 7
  %1111 = load i32*, i32** %1110, align 8
  %1112 = getelementptr inbounds i32, i32* %1111, i64 1
  store i32 %1108, i32* %1112, align 4
  br label %1113

1113:                                             ; preds = %1105, %1098
  %1114 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1115 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1114, i32 0, i32 7
  %1116 = load i32*, i32** %1115, align 8
  %1117 = getelementptr inbounds i32, i32* %1116, i64 0
  %1118 = load i32, i32* %1117, align 4
  %1119 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1120 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1119, i32 0, i32 7
  %1121 = load i32*, i32** %1120, align 8
  %1122 = getelementptr inbounds i32, i32* %1121, i64 1
  %1123 = load i32, i32* %1122, align 4
  %1124 = icmp slt i32 %1118, %1123
  br i1 %1124, label %1125, label %1153

1125:                                             ; preds = %1113
  %1126 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1127 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1126, i32 0, i32 7
  %1128 = load i32*, i32** %1127, align 8
  %1129 = getelementptr inbounds i32, i32* %1128, i64 1
  %1130 = load i32, i32* %1129, align 4
  %1131 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1132 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1131, i32 0, i32 14
  %1133 = load i32, i32* %1132, align 8
  %1134 = icmp sle i32 %1130, %1133
  br i1 %1134, label %1135, label %1153

1135:                                             ; preds = %1125
  %1136 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1137 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1136, i32 0, i32 7
  %1138 = load i32*, i32** %1137, align 8
  %1139 = getelementptr inbounds i32, i32* %1138, i64 0
  %1140 = load i32, i32* %1139, align 4
  %1141 = sub nsw i32 %1140, 1
  %1142 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1143 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1142, i32 0, i32 23
  store i32 %1141, i32* %1143, align 4
  %1144 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1145 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1144, i32 0, i32 7
  %1146 = load i32*, i32** %1145, align 8
  %1147 = getelementptr inbounds i32, i32* %1146, i64 1
  %1148 = load i32, i32* %1147, align 4
  %1149 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1150 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1149, i32 0, i32 15
  store i32 %1148, i32* %1150, align 4
  %1151 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1152 = call i32 @gotoxay(%struct.vc_data* %1151, i32 0, i32 0)
  br label %1153

1153:                                             ; preds = %1135, %1125, %1113
  br label %1348

1154:                                             ; preds = %673
  %1155 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1156 = call i32 @save_cur(%struct.vc_data* %1155)
  br label %1348

1157:                                             ; preds = %673
  %1158 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1159 = call i32 @restore_cur(%struct.vc_data* %1158)
  br label %1348

1160:                                             ; preds = %673
  %1161 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1162 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1163 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1162, i32 0, i32 7
  %1164 = load i32*, i32** %1163, align 8
  %1165 = getelementptr inbounds i32, i32* %1164, i64 0
  %1166 = load i32, i32* %1165, align 4
  %1167 = call i32 @csi_X(%struct.vc_data* %1161, i32 %1166)
  br label %1348

1168:                                             ; preds = %673
  %1169 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1170 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1171 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1170, i32 0, i32 7
  %1172 = load i32*, i32** %1171, align 8
  %1173 = getelementptr inbounds i32, i32* %1172, i64 0
  %1174 = load i32, i32* %1173, align 4
  %1175 = call i32 @csi_at(%struct.vc_data* %1169, i32 %1174)
  br label %1348

1176:                                             ; preds = %673
  %1177 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1178 = call i32 @setterm_command(%struct.vc_data* %1177)
  br label %1348

1179:                                             ; preds = %673
  br label %1348

1180:                                             ; preds = %155
  %1181 = load i32, i32* %6, align 4
  %1182 = icmp sge i32 %1181, 20
  br i1 %1182, label %1183, label %1187

1183:                                             ; preds = %1180
  %1184 = load i32, i32* %6, align 4
  %1185 = icmp sle i32 %1184, 63
  br i1 %1185, label %1186, label %1187

1186:                                             ; preds = %1183
  br label %1348

1187:                                             ; preds = %1183, %1180
  %1188 = load i8*, i8** @ESnormal, align 8
  %1189 = ptrtoint i8* %1188 to i32
  %1190 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1191 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1190, i32 0, i32 0
  store i32 %1189, i32* %1191, align 8
  br label %1348

1192:                                             ; preds = %155
  %1193 = load i8*, i8** @ESnormal, align 8
  %1194 = ptrtoint i8* %1193 to i32
  %1195 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1196 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1195, i32 0, i32 0
  store i32 %1194, i32* %1196, align 8
  %1197 = load i32, i32* %6, align 4
  switch i32 %1197, label %1204 [
    i32 64, label %1198
    i32 71, label %1201
    i32 56, label %1201
  ]

1198:                                             ; preds = %1192
  %1199 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1200 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1199, i32 0, i32 16
  store i32 0, i32* %1200, align 8
  br label %1348

1201:                                             ; preds = %1192, %1192
  %1202 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1203 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1202, i32 0, i32 16
  store i32 1, i32* %1203, align 8
  br label %1348

1204:                                             ; preds = %1192
  br label %1348

1205:                                             ; preds = %155
  %1206 = load i8*, i8** @ESnormal, align 8
  %1207 = ptrtoint i8* %1206 to i32
  %1208 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1209 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1208, i32 0, i32 0
  store i32 %1207, i32* %1209, align 8
  br label %1348

1210:                                             ; preds = %155
  %1211 = load i8*, i8** @ESnormal, align 8
  %1212 = ptrtoint i8* %1211 to i32
  %1213 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1214 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1213, i32 0, i32 0
  store i32 %1212, i32* %1214, align 8
  %1215 = load i32, i32* %6, align 4
  %1216 = icmp eq i32 %1215, 56
  br i1 %1216, label %1217, label %1243

1217:                                             ; preds = %1210
  %1218 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1219 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1218, i32 0, i32 17
  %1220 = load i32, i32* %1219, align 4
  %1221 = and i32 %1220, 65280
  %1222 = or i32 %1221, 69
  %1223 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1224 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1223, i32 0, i32 17
  store i32 %1222, i32* %1224, align 4
  %1225 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1226 = call i32 @csi_J(%struct.vc_data* %1225, i32 2)
  %1227 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1228 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1227, i32 0, i32 17
  %1229 = load i32, i32* %1228, align 4
  %1230 = and i32 %1229, 65280
  %1231 = or i32 %1230, 32
  %1232 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1233 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1232, i32 0, i32 17
  store i32 %1231, i32* %1233, align 4
  %1234 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1235 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1236 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1235, i32 0, i32 22
  %1237 = load i32, i32* %1236, align 8
  %1238 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1239 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1238, i32 0, i32 18
  %1240 = load i32, i32* %1239, align 8
  %1241 = sdiv i32 %1240, 2
  %1242 = call i32 @do_update_region(%struct.vc_data* %1234, i32 %1237, i32 %1241)
  br label %1243

1243:                                             ; preds = %1217, %1210
  br label %1348

1244:                                             ; preds = %155
  %1245 = load i32, i32* %6, align 4
  %1246 = icmp eq i32 %1245, 48
  br i1 %1246, label %1247, label %1251

1247:                                             ; preds = %1244
  %1248 = load i8*, i8** @GRAF_MAP, align 8
  %1249 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1250 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1249, i32 0, i32 21
  store i8* %1248, i8** %1250, align 8
  br label %1275

1251:                                             ; preds = %1244
  %1252 = load i32, i32* %6, align 4
  %1253 = icmp eq i32 %1252, 66
  br i1 %1253, label %1254, label %1258

1254:                                             ; preds = %1251
  %1255 = load i8*, i8** @LAT1_MAP, align 8
  %1256 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1257 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1256, i32 0, i32 21
  store i8* %1255, i8** %1257, align 8
  br label %1274

1258:                                             ; preds = %1251
  %1259 = load i32, i32* %6, align 4
  %1260 = icmp eq i32 %1259, 85
  br i1 %1260, label %1261, label %1265

1261:                                             ; preds = %1258
  %1262 = load i8*, i8** @IBMPC_MAP, align 8
  %1263 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1264 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1263, i32 0, i32 21
  store i8* %1262, i8** %1264, align 8
  br label %1273

1265:                                             ; preds = %1258
  %1266 = load i32, i32* %6, align 4
  %1267 = icmp eq i32 %1266, 75
  br i1 %1267, label %1268, label %1272

1268:                                             ; preds = %1265
  %1269 = load i8*, i8** @USER_MAP, align 8
  %1270 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1271 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1270, i32 0, i32 21
  store i8* %1269, i8** %1271, align 8
  br label %1272

1272:                                             ; preds = %1268, %1265
  br label %1273

1273:                                             ; preds = %1272, %1261
  br label %1274

1274:                                             ; preds = %1273, %1254
  br label %1275

1275:                                             ; preds = %1274, %1247
  %1276 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1277 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1276, i32 0, i32 4
  %1278 = load i32, i32* %1277, align 8
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1280, label %1288

1280:                                             ; preds = %1275
  %1281 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1282 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1281, i32 0, i32 21
  %1283 = load i8*, i8** %1282, align 8
  %1284 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1285 = call i8* @set_translate(i8* %1283, %struct.vc_data* %1284)
  %1286 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1287 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1286, i32 0, i32 20
  store i8* %1285, i8** %1287, align 8
  br label %1288

1288:                                             ; preds = %1280, %1275
  %1289 = load i8*, i8** @ESnormal, align 8
  %1290 = ptrtoint i8* %1289 to i32
  %1291 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1292 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1291, i32 0, i32 0
  store i32 %1290, i32* %1292, align 8
  br label %1348

1293:                                             ; preds = %155
  %1294 = load i32, i32* %6, align 4
  %1295 = icmp eq i32 %1294, 48
  br i1 %1295, label %1296, label %1300

1296:                                             ; preds = %1293
  %1297 = load i8*, i8** @GRAF_MAP, align 8
  %1298 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1299 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1298, i32 0, i32 19
  store i8* %1297, i8** %1299, align 8
  br label %1324

1300:                                             ; preds = %1293
  %1301 = load i32, i32* %6, align 4
  %1302 = icmp eq i32 %1301, 66
  br i1 %1302, label %1303, label %1307

1303:                                             ; preds = %1300
  %1304 = load i8*, i8** @LAT1_MAP, align 8
  %1305 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1306 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1305, i32 0, i32 19
  store i8* %1304, i8** %1306, align 8
  br label %1323

1307:                                             ; preds = %1300
  %1308 = load i32, i32* %6, align 4
  %1309 = icmp eq i32 %1308, 85
  br i1 %1309, label %1310, label %1314

1310:                                             ; preds = %1307
  %1311 = load i8*, i8** @IBMPC_MAP, align 8
  %1312 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1313 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1312, i32 0, i32 19
  store i8* %1311, i8** %1313, align 8
  br label %1322

1314:                                             ; preds = %1307
  %1315 = load i32, i32* %6, align 4
  %1316 = icmp eq i32 %1315, 75
  br i1 %1316, label %1317, label %1321

1317:                                             ; preds = %1314
  %1318 = load i8*, i8** @USER_MAP, align 8
  %1319 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1320 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1319, i32 0, i32 19
  store i8* %1318, i8** %1320, align 8
  br label %1321

1321:                                             ; preds = %1317, %1314
  br label %1322

1322:                                             ; preds = %1321, %1310
  br label %1323

1323:                                             ; preds = %1322, %1303
  br label %1324

1324:                                             ; preds = %1323, %1296
  %1325 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1326 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1325, i32 0, i32 4
  %1327 = load i32, i32* %1326, align 8
  %1328 = icmp eq i32 %1327, 1
  br i1 %1328, label %1329, label %1337

1329:                                             ; preds = %1324
  %1330 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1331 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1330, i32 0, i32 19
  %1332 = load i8*, i8** %1331, align 8
  %1333 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1334 = call i8* @set_translate(i8* %1332, %struct.vc_data* %1333)
  %1335 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1336 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1335, i32 0, i32 20
  store i8* %1334, i8** %1336, align 8
  br label %1337

1337:                                             ; preds = %1329, %1324
  %1338 = load i8*, i8** @ESnormal, align 8
  %1339 = ptrtoint i8* %1338 to i32
  %1340 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1341 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1340, i32 0, i32 0
  store i32 %1339, i32* %1341, align 8
  br label %1348

1342:                                             ; preds = %155
  br label %1348

1343:                                             ; preds = %155
  %1344 = load i8*, i8** @ESnormal, align 8
  %1345 = ptrtoint i8* %1344 to i32
  %1346 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1347 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1346, i32 0, i32 0
  store i32 %1345, i32* %1347, align 8
  br label %1348

1348:                                             ; preds = %19, %22, %47, %48, %94, %112, %114, %117, %129, %141, %146, %149, %152, %165, %168, %171, %174, %179, %182, %185, %203, %206, %209, %212, %215, %218, %221, %224, %228, %232, %258, %289, %422, %452, %457, %461, %465, %469, %487, %498, %526, %544, %554, %594, %631, %662, %669, %689, %714, %743, %772, %801, %830, %856, %882, %921, %934, %942, %950, %958, %966, %984, %1052, %1053, %1083, %1153, %1154, %1157, %1160, %1168, %1176, %1179, %1186, %1187, %1198, %1201, %1204, %1205, %1243, %1288, %1337, %1342, %1343
  ret void
}

declare dso_local i32 @kd_mksound(i32, i32) #1

declare dso_local i32 @bs(%struct.vc_data*) #1

declare dso_local i32 @notify_write(%struct.vc_data*, i8 signext) #1

declare dso_local i32 @lf(%struct.vc_data*) #1

declare dso_local i32 @is_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @cr(%struct.vc_data*) #1

declare dso_local i8* @set_translate(i8*, %struct.vc_data*) #1

declare dso_local i32 @del(%struct.vc_data*) #1

declare dso_local i32 @ri(%struct.vc_data*) #1

declare dso_local i32 @respond_ID(%struct.tty_struct*) #1

declare dso_local i32 @save_cur(%struct.vc_data*) #1

declare dso_local i32 @restore_cur(%struct.vc_data*) #1

declare dso_local i32 @reset_terminal(%struct.vc_data*, i32) #1

declare dso_local i32 @clr_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @set_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @reset_palette(%struct.vc_data*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #2

declare dso_local i32 @hex_to_bin(i32) #1

declare dso_local i32 @set_palette(%struct.vc_data*) #1

declare dso_local i32 @set_mode(%struct.vc_data*, i32) #1

declare dso_local i32 @clear_selection(...) #1

declare dso_local i32 @status_report(%struct.tty_struct*) #1

declare dso_local i32 @cursor_report(%struct.vc_data*, %struct.tty_struct*) #1

declare dso_local i32 @gotoxy(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @gotoxay(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @csi_J(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_K(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_L(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_M(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_P(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_m(%struct.vc_data*) #1

declare dso_local i32 @vt_set_led_state(i32, i32) #1

declare dso_local i32 @csi_X(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_at(%struct.vc_data*, i32) #1

declare dso_local i32 @setterm_command(%struct.vc_data*) #1

declare dso_local i32 @do_update_region(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
