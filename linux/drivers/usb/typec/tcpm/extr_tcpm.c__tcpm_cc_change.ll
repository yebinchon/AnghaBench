; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c__tcpm_cc_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c__tcpm_cc_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"CC1: %u -> %u, CC2: %u -> %u [state %s, polarity %d, %s]\00", align 1
@tcpm_states = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@TYPEC_CC_OPEN = common dso_local global i32 0, align 4
@SRC_TRY = common dso_local global i32 0, align 4
@SNK_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, i32, i32)* @_tcpm_cc_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_tcpm_cc_change(%struct.tcpm_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %14 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %18 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %21 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @tcpm_states, align 8
  %28 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %29 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %34 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %37 = call i64 @tcpm_port_is_disconnected(%struct.tcpm_port* %36)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @tcpm_log_force(%struct.tcpm_port* %22, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, i32 %32, i32 %35, i8* %40)
  %42 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %43 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  switch i64 %44, label %339 [
    i64 128, label %45
    i64 129, label %69
    i64 157, label %69
    i64 136, label %85
    i64 137, label %109
    i64 134, label %109
    i64 135, label %109
    i64 138, label %121
    i64 148, label %129
    i64 147, label %171
    i64 144, label %203
    i64 156, label %232
    i64 155, label %244
    i64 154, label %252
    i64 143, label %264
    i64 146, label %265
    i64 145, label %273
    i64 133, label %274
    i64 132, label %287
    i64 139, label %300
    i64 130, label %310
    i64 131, label %318
    i64 141, label %321
    i64 140, label %329
    i64 142, label %337
    i64 153, label %338
    i64 149, label %338
    i64 151, label %338
    i64 150, label %338
    i64 152, label %338
  ]

45:                                               ; preds = %3
  %46 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %47 = call i32 @tcpm_port_is_debug(%struct.tcpm_port* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %51 = call i32 @tcpm_port_is_audio(%struct.tcpm_port* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %55 = call i32 @tcpm_port_is_source(%struct.tcpm_port* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %49, %45
  %58 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %59 = call i32 @tcpm_set_state(%struct.tcpm_port* %58, i32 136, i32 0)
  br label %68

60:                                               ; preds = %53
  %61 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %62 = call i32 @tcpm_port_is_sink(%struct.tcpm_port* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %66 = call i32 @tcpm_set_state(%struct.tcpm_port* %65, i32 148, i32 0)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %57
  br label %349

69:                                               ; preds = %3, %3
  %70 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %71 = call i32 @tcpm_port_is_debug(%struct.tcpm_port* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %75 = call i32 @tcpm_port_is_audio(%struct.tcpm_port* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %79 = call i32 @tcpm_port_is_source(%struct.tcpm_port* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %73, %69
  %82 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %83 = call i32 @tcpm_set_state(%struct.tcpm_port* %82, i32 136, i32 0)
  br label %84

84:                                               ; preds = %81, %77
  br label %349

85:                                               ; preds = %3
  %86 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %87 = call i64 @tcpm_port_is_disconnected(%struct.tcpm_port* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %91 = call i32 @tcpm_port_is_audio_detached(%struct.tcpm_port* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %85
  %94 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %95 = call i32 @tcpm_set_state(%struct.tcpm_port* %94, i32 129, i32 0)
  br label %108

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %96
  %105 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %106 = call i32 @tcpm_set_state(%struct.tcpm_port* %105, i32 136, i32 0)
  br label %107

107:                                              ; preds = %104, %100
  br label %108

108:                                              ; preds = %107, %93
  br label %349

109:                                              ; preds = %3, %3, %3
  %110 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %111 = call i64 @tcpm_port_is_disconnected(%struct.tcpm_port* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %115 = call i32 @tcpm_port_is_source(%struct.tcpm_port* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %119 = call i32 @tcpm_set_state(%struct.tcpm_port* %118, i32 129, i32 0)
  br label %120

120:                                              ; preds = %117, %113
  br label %349

121:                                              ; preds = %3
  %122 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %123 = call i32 @tcpm_port_is_sink(%struct.tcpm_port* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %127 = call i32 @tcpm_set_state(%struct.tcpm_port* %126, i32 148, i32 0)
  br label %128

128:                                              ; preds = %125, %121
  br label %349

129:                                              ; preds = %3
  %130 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %131 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %137 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %153, label %141

141:                                              ; preds = %135, %129
  %142 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %143 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %149 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147, %135
  store i32 147, i32* %9, align 4
  br label %161

154:                                              ; preds = %147, %141
  %155 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %156 = call i64 @tcpm_port_is_disconnected(%struct.tcpm_port* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 138, i32* %9, align 4
  br label %160

159:                                              ; preds = %154
  br label %349

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160, %153
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %164 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %162, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %169 = call i32 @tcpm_set_state(%struct.tcpm_port* %168, i32 148, i32 0)
  br label %170

170:                                              ; preds = %167, %161
  br label %349

171:                                              ; preds = %3
  %172 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %173 = call i64 @tcpm_port_is_disconnected(%struct.tcpm_port* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 138, i32* %9, align 4
  br label %193

176:                                              ; preds = %171
  %177 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %178 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %183 = call i32 @tcpm_try_src(%struct.tcpm_port* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @SRC_TRY, align 4
  br label %189

187:                                              ; preds = %181
  %188 = load i32, i32* @SNK_ATTACHED, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  store i32 %190, i32* %9, align 4
  br label %192

191:                                              ; preds = %176
  store i32 138, i32* %9, align 4
  br label %192

192:                                              ; preds = %191, %189
  br label %193

193:                                              ; preds = %192, %175
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %196 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %201 = call i32 @tcpm_set_state(%struct.tcpm_port* %200, i32 147, i32 0)
  br label %202

202:                                              ; preds = %199, %193
  br label %349

203:                                              ; preds = %3
  %204 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %205 = call i64 @tcpm_port_is_disconnected(%struct.tcpm_port* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %209 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %210 = call i32 @unattached_state(%struct.tcpm_port* %209)
  %211 = call i32 @tcpm_set_state(%struct.tcpm_port* %208, i32 %210, i32 0)
  br label %231

212:                                              ; preds = %203
  %213 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %214 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %230, label %217

217:                                              ; preds = %212
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %221, %217
  %226 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %227 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %228 = call i32 @tcpm_get_current_limit(%struct.tcpm_port* %227)
  %229 = call i32 @tcpm_set_current_limit(%struct.tcpm_port* %226, i32 %228, i32 5000)
  br label %230

230:                                              ; preds = %225, %221, %212
  br label %231

231:                                              ; preds = %230, %207
  br label %349

232:                                              ; preds = %3
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236, %232
  %241 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %242 = call i32 @tcpm_set_state(%struct.tcpm_port* %241, i32 155, i32 0)
  br label %243

243:                                              ; preds = %240, %236
  br label %349

244:                                              ; preds = %3
  %245 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %246 = call i32 @tcpm_port_is_audio(%struct.tcpm_port* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %250 = call i32 @tcpm_set_state(%struct.tcpm_port* %249, i32 156, i32 0)
  br label %251

251:                                              ; preds = %248, %244
  br label %349

252:                                              ; preds = %3
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256, %252
  %261 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %262 = call i32 @tcpm_set_state(%struct.tcpm_port* %261, i32 157, i32 0)
  br label %263

263:                                              ; preds = %260, %256
  br label %349

264:                                              ; preds = %3
  br label %349

265:                                              ; preds = %3
  %266 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %267 = call i64 @tcpm_port_is_disconnected(%struct.tcpm_port* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %271 = call i32 @tcpm_set_state(%struct.tcpm_port* %270, i32 145, i32 0)
  br label %272

272:                                              ; preds = %269, %265
  br label %349

273:                                              ; preds = %3
  br label %349

274:                                              ; preds = %3
  %275 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %276 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %286, label %279

279:                                              ; preds = %274
  %280 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %281 = call i32 @tcpm_port_is_source(%struct.tcpm_port* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %285 = call i32 @tcpm_set_state(%struct.tcpm_port* %284, i32 132, i32 0)
  br label %286

286:                                              ; preds = %283, %279, %274
  br label %349

287:                                              ; preds = %3
  %288 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %289 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %287
  %293 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %294 = call i32 @tcpm_port_is_source(%struct.tcpm_port* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %292, %287
  %297 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %298 = call i32 @tcpm_set_state(%struct.tcpm_port* %297, i32 133, i32 0)
  br label %299

299:                                              ; preds = %296, %292
  br label %349

300:                                              ; preds = %3
  %301 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %302 = call i32 @tcpm_port_is_sink(%struct.tcpm_port* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %309, label %304

304:                                              ; preds = %300
  %305 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %306 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %305, i32 0, i32 4
  store i32 0, i32* %306, align 4
  %307 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %308 = call i32 @tcpm_set_state(%struct.tcpm_port* %307, i32 133, i32 0)
  br label %309

309:                                              ; preds = %304, %300
  br label %349

310:                                              ; preds = %3
  %311 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %312 = call i32 @tcpm_port_is_source(%struct.tcpm_port* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %310
  %315 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %316 = call i32 @tcpm_set_state(%struct.tcpm_port* %315, i32 131, i32 0)
  br label %317

317:                                              ; preds = %314, %310
  br label %349

318:                                              ; preds = %3
  %319 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %320 = call i32 @tcpm_set_state(%struct.tcpm_port* %319, i32 130, i32 0)
  br label %349

321:                                              ; preds = %3
  %322 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %323 = call i32 @tcpm_port_is_sink(%struct.tcpm_port* %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %321
  %326 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %327 = call i32 @tcpm_set_state(%struct.tcpm_port* %326, i32 140, i32 0)
  br label %328

328:                                              ; preds = %325, %321
  br label %349

329:                                              ; preds = %3
  %330 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %331 = call i32 @tcpm_port_is_sink(%struct.tcpm_port* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %329
  %334 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %335 = call i32 @tcpm_set_state(%struct.tcpm_port* %334, i32 141, i32 0)
  br label %336

336:                                              ; preds = %333, %329
  br label %349

337:                                              ; preds = %3
  br label %349

338:                                              ; preds = %3, %3, %3, %3, %3
  br label %349

339:                                              ; preds = %3
  %340 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %341 = call i64 @tcpm_port_is_disconnected(%struct.tcpm_port* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  %344 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %345 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %346 = call i32 @unattached_state(%struct.tcpm_port* %345)
  %347 = call i32 @tcpm_set_state(%struct.tcpm_port* %344, i32 %346, i32 0)
  br label %348

348:                                              ; preds = %343, %339
  br label %349

349:                                              ; preds = %348, %338, %337, %336, %328, %318, %317, %309, %299, %286, %273, %272, %264, %263, %251, %243, %231, %202, %170, %159, %128, %120, %108, %84, %68
  ret void
}

declare dso_local i32 @tcpm_log_force(%struct.tcpm_port*, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @tcpm_port_is_disconnected(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_port_is_debug(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_port_is_audio(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_port_is_source(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @tcpm_port_is_sink(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_port_is_audio_detached(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_try_src(%struct.tcpm_port*) #1

declare dso_local i32 @unattached_state(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_set_current_limit(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @tcpm_get_current_limit(%struct.tcpm_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
