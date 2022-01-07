; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_statemachine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_statemachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"fsm->id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"quit statemachine, changed = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otg_statemachine(%struct.otg_fsm* %0) #0 {
  %2 = alloca %struct.otg_fsm*, align 8
  %3 = alloca i32, align 4
  store %struct.otg_fsm* %0, %struct.otg_fsm** %2, align 8
  %4 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %5 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %8 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %7, i32 0, i32 12
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %13 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %509 [
    i32 128, label %15
    i32 132, label %31
    i32 130, label %85
    i32 131, label %99
    i32 129, label %136
    i32 133, label %175
    i32 140, label %208
    i32 134, label %246
    i32 136, label %274
    i32 141, label %311
    i32 138, label %366
    i32 139, label %444
    i32 135, label %481
    i32 137, label %490
  ]

15:                                               ; preds = %1
  %16 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %17 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @VDBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %21 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %26 = call i32 @otg_set_state(%struct.otg_fsm* %25, i32 132)
  br label %30

27:                                               ; preds = %15
  %28 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %29 = call i32 @otg_set_state(%struct.otg_fsm* %28, i32 140)
  br label %30

30:                                               ; preds = %27, %24
  br label %510

31:                                               ; preds = %1
  %32 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %33 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %38 = call i32 @otg_set_state(%struct.otg_fsm* %37, i32 140)
  br label %84

39:                                               ; preds = %31
  %40 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %41 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %40, i32 0, i32 23
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %46 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %45, i32 0, i32 12
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %53 = call i32 @otg_set_state(%struct.otg_fsm* %52, i32 131)
  br label %83

54:                                               ; preds = %44, %39
  %55 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %56 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %55, i32 0, i32 22
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %61 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %60, i32 0, i32 18
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %66 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64, %59, %54
  %70 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %71 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %70, i32 0, i32 29
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %76 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %75, i32 0, i32 28
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %81 = call i32 @otg_set_state(%struct.otg_fsm* %80, i32 130)
  br label %82

82:                                               ; preds = %79, %74, %69, %64
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83, %36
  br label %510

85:                                               ; preds = %1
  %86 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %87 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %92 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %91, i32 0, i32 27
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %85
  %96 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %97 = call i32 @otg_set_state(%struct.otg_fsm* %96, i32 132)
  br label %98

98:                                               ; preds = %95, %90
  br label %510

99:                                               ; preds = %1
  %100 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %101 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %106 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %105, i32 0, i32 23
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %111 = call i32 @otg_set_state(%struct.otg_fsm* %110, i32 132)
  br label %135

112:                                              ; preds = %104
  %113 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %114 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %113, i32 0, i32 22
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %119 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %118, i32 0, i32 12
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %117
  %127 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %128 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %127, i32 0, i32 26
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %133 = call i32 @otg_set_state(%struct.otg_fsm* %132, i32 129)
  br label %134

134:                                              ; preds = %131, %126, %117, %112
  br label %135

135:                                              ; preds = %134, %109
  br label %510

136:                                              ; preds = %1
  %137 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %138 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %137, i32 0, i32 21
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %143 = call i32 @otg_set_state(%struct.otg_fsm* %142, i32 133)
  br label %174

144:                                              ; preds = %136
  %145 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %146 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %151 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %150, i32 0, i32 23
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %156 = call i32 @otg_set_state(%struct.otg_fsm* %155, i32 132)
  br label %173

157:                                              ; preds = %149
  %158 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %159 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %158, i32 0, i32 25
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %164 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %163, i32 0, i32 24
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162, %157
  %168 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %169 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %168, i32 0, i32 24
  store i32 0, i32* %169, align 4
  %170 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %171 = call i32 @otg_set_state(%struct.otg_fsm* %170, i32 131)
  br label %172

172:                                              ; preds = %167, %162
  br label %173

173:                                              ; preds = %172, %154
  br label %174

174:                                              ; preds = %173, %141
  br label %510

175:                                              ; preds = %1
  %176 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %177 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %182 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %181, i32 0, i32 23
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180, %175
  %186 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %187 = call i32 @otg_set_state(%struct.otg_fsm* %186, i32 132)
  br label %207

188:                                              ; preds = %180
  %189 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %190 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %189, i32 0, i32 22
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %195 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %194, i32 0, i32 21
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %200 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %199, i32 0, i32 20
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198, %193, %188
  %204 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %205 = call i32 @otg_set_state(%struct.otg_fsm* %204, i32 131)
  br label %206

206:                                              ; preds = %203, %198
  br label %207

207:                                              ; preds = %206, %185
  br label %510

208:                                              ; preds = %1
  %209 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %210 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %215 = call i32 @otg_set_state(%struct.otg_fsm* %214, i32 132)
  br label %245

216:                                              ; preds = %208
  %217 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %218 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %244, label %221

221:                                              ; preds = %216
  %222 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %223 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %222, i32 0, i32 11
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %241, label %226

226:                                              ; preds = %221
  %227 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %228 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %227, i32 0, i32 19
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %226
  %232 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %233 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %232, i32 0, i32 18
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %238 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %237, i32 0, i32 17
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236, %231, %226, %221
  %242 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %243 = call i32 @otg_set_state(%struct.otg_fsm* %242, i32 134)
  br label %244

244:                                              ; preds = %241, %236, %216
  br label %245

245:                                              ; preds = %244, %213
  br label %510

246:                                              ; preds = %1
  %247 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %248 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %253 = call i32 @otg_set_state(%struct.otg_fsm* %252, i32 136)
  br label %273

254:                                              ; preds = %246
  %255 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %256 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %254
  %260 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %261 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %259
  %265 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %266 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %265, i32 0, i32 16
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %264, %259, %254
  %270 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %271 = call i32 @otg_set_state(%struct.otg_fsm* %270, i32 135)
  br label %272

272:                                              ; preds = %269, %264
  br label %273

273:                                              ; preds = %272, %251
  br label %510

274:                                              ; preds = %1
  %275 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %276 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %274
  %280 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %281 = call i32 @otg_set_state(%struct.otg_fsm* %280, i32 137)
  br label %310

282:                                              ; preds = %274
  %283 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %284 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %283, i32 0, i32 13
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %289 = call i32 @otg_set_state(%struct.otg_fsm* %288, i32 141)
  br label %309

290:                                              ; preds = %282
  %291 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %292 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %305, label %295

295:                                              ; preds = %290
  %296 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %297 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %295
  %301 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %302 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %301, i32 0, i32 15
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300, %295, %290
  %306 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %307 = call i32 @otg_set_state(%struct.otg_fsm* %306, i32 135)
  br label %308

308:                                              ; preds = %305, %300
  br label %309

309:                                              ; preds = %308, %287
  br label %310

310:                                              ; preds = %309, %279
  br label %510

311:                                              ; preds = %1
  %312 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %313 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %321, label %316

316:                                              ; preds = %311
  %317 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %318 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %316, %311
  %322 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %323 = call i32 @otg_set_state(%struct.otg_fsm* %322, i32 135)
  br label %365

324:                                              ; preds = %316
  %325 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %326 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %325, i32 0, i32 11
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %324
  %330 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %331 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %330, i32 0, i32 14
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %329, %324
  %335 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %336 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %335, i32 0, i32 12
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %334
  %344 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %345 = call i32 @otg_set_state(%struct.otg_fsm* %344, i32 138)
  br label %364

346:                                              ; preds = %334, %329
  %347 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %348 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %347, i32 0, i32 13
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %346
  %352 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %353 = call i32 @otg_set_state(%struct.otg_fsm* %352, i32 136)
  br label %363

354:                                              ; preds = %346
  %355 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %356 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %354
  %360 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %361 = call i32 @otg_set_state(%struct.otg_fsm* %360, i32 137)
  br label %362

362:                                              ; preds = %359, %354
  br label %363

363:                                              ; preds = %362, %351
  br label %364

364:                                              ; preds = %363, %343
  br label %365

365:                                              ; preds = %364, %321
  br label %510

366:                                              ; preds = %1
  %367 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %368 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %367, i32 0, i32 13
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %383, label %371

371:                                              ; preds = %366
  %372 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %373 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %372, i32 0, i32 12
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 1
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %371
  %381 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %382 = call i32 @otg_set_state(%struct.otg_fsm* %381, i32 139)
  br label %443

383:                                              ; preds = %371, %366
  %384 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %385 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %384, i32 0, i32 13
  %386 = load i32, i32* %385, align 8
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %400, label %388

388:                                              ; preds = %383
  %389 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %390 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %389, i32 0, i32 12
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %400, label %397

397:                                              ; preds = %388
  %398 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %399 = call i32 @otg_set_state(%struct.otg_fsm* %398, i32 136)
  br label %442

400:                                              ; preds = %388, %383
  %401 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %402 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %401, i32 0, i32 11
  %403 = load i32, i32* %402, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %410, label %405

405:                                              ; preds = %400
  %406 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %407 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %406, i32 0, i32 10
  %408 = load i32, i32* %407, align 8
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %405, %400
  %411 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %412 = call i32 @otg_set_state(%struct.otg_fsm* %411, i32 141)
  br label %441

413:                                              ; preds = %405
  %414 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %415 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %428, label %418

418:                                              ; preds = %413
  %419 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %420 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %428, label %423

423:                                              ; preds = %418
  %424 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %425 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %424, i32 0, i32 9
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %423, %418, %413
  %429 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %430 = call i32 @otg_set_state(%struct.otg_fsm* %429, i32 135)
  br label %440

431:                                              ; preds = %423
  %432 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %433 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %432, i32 0, i32 6
  %434 = load i32, i32* %433, align 8
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %431
  %437 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %438 = call i32 @otg_set_state(%struct.otg_fsm* %437, i32 137)
  br label %439

439:                                              ; preds = %436, %431
  br label %440

440:                                              ; preds = %439, %428
  br label %441

441:                                              ; preds = %440, %410
  br label %442

442:                                              ; preds = %441, %397
  br label %443

443:                                              ; preds = %442, %380
  br label %510

444:                                              ; preds = %1
  %445 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %446 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %454, label %449

449:                                              ; preds = %444
  %450 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %451 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %449, %444
  %455 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %456 = call i32 @otg_set_state(%struct.otg_fsm* %455, i32 135)
  br label %480

457:                                              ; preds = %449
  %458 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %459 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %458, i32 0, i32 8
  %460 = load i32, i32* %459, align 8
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %467, label %462

462:                                              ; preds = %457
  %463 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %464 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %463, i32 0, i32 7
  %465 = load i32, i32* %464, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %470

467:                                              ; preds = %462, %457
  %468 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %469 = call i32 @otg_set_state(%struct.otg_fsm* %468, i32 136)
  br label %479

470:                                              ; preds = %462
  %471 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %472 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %471, i32 0, i32 6
  %473 = load i32, i32* %472, align 8
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %470
  %476 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %477 = call i32 @otg_set_state(%struct.otg_fsm* %476, i32 137)
  br label %478

478:                                              ; preds = %475, %470
  br label %479

479:                                              ; preds = %478, %467
  br label %480

480:                                              ; preds = %479, %454
  br label %510

481:                                              ; preds = %1
  %482 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %483 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %482, i32 0, i32 5
  %484 = load i32, i32* %483, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %481
  %487 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %488 = call i32 @otg_set_state(%struct.otg_fsm* %487, i32 140)
  br label %489

489:                                              ; preds = %486, %481
  br label %510

490:                                              ; preds = %1
  %491 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %492 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %505, label %495

495:                                              ; preds = %490
  %496 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %497 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %505, label %500

500:                                              ; preds = %495
  %501 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %502 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %501, i32 0, i32 3
  %503 = load i32, i32* %502, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %508

505:                                              ; preds = %500, %495, %490
  %506 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %507 = call i32 @otg_set_state(%struct.otg_fsm* %506, i32 135)
  br label %508

508:                                              ; preds = %505, %500
  br label %510

509:                                              ; preds = %1
  br label %510

510:                                              ; preds = %509, %508, %489, %480, %443, %365, %310, %273, %245, %207, %174, %135, %98, %84, %30
  %511 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %512 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %511, i32 0, i32 2
  %513 = call i32 @mutex_unlock(i32* %512)
  %514 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %515 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @VDBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %516)
  %518 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %519 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  ret i32 %520
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @VDBG(i8*, i32) #1

declare dso_local i32 @otg_set_state(%struct.otg_fsm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
