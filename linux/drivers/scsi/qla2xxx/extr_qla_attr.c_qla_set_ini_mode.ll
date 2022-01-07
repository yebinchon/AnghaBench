; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla_set_ini_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla_set_ini_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Mode change accepted. From %s to %s, Tgt exchg %d|%d. ini exchg %d|%d\0A\00", align 1
@mode_to_str = common dso_local global i32* null, align 8
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Mode is set. No action taken. From %s to %s, Tgt exchg %d|%d. ini exchg %d|%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Target Mode is active. Unable to change Mode.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Mode unchange. No action taken. %d|%d pct %d|%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @qla_set_ini_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_set_ini_mode(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %393 [
    i32 131, label %12
    i32 128, label %107
    i32 129, label %212
    i32 130, label %250
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %106 [
    i32 131, label %14
    i32 128, label %53
    i32 130, label %92
    i32 129, label %99
  ]

14:                                               ; preds = %12
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @NEED_EXCH_OFFLOAD(i64 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @NEED_EXCH_OFFLOAD(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39, %31
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %39
  store i32 1, i32* %6, align 4
  br label %50

49:                                               ; preds = %45
  store i32 2, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %52

51:                                               ; preds = %14
  store i32 2, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %106

53:                                               ; preds = %12
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %53
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @NEED_EXCH_OFFLOAD(i64 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 7
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %61, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %57
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @NEED_EXCH_OFFLOAD(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78, %70
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %78
  store i32 1, i32* %6, align 4
  br label %89

88:                                               ; preds = %84
  store i32 2, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %91

90:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %89
  br label %106

92:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %98

97:                                               ; preds = %92
  store i32 2, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %106

99:                                               ; preds = %12
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 3, i32* %6, align 4
  br label %105

104:                                              ; preds = %99
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %12, %105, %98, %91, %52
  br label %393

107:                                              ; preds = %2
  %108 = load i32, i32* %4, align 4
  switch i32 %108, label %211 [
    i32 128, label %109
    i32 131, label %148
    i32 130, label %187
    i32 129, label %194
  ]

109:                                              ; preds = %107
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %109
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @NEED_EXCH_OFFLOAD(i64 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %117, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  store i32 1, i32* %8, align 4
  br label %126

126:                                              ; preds = %125, %113
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @NEED_EXCH_OFFLOAD(i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134, %126
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %134
  store i32 1, i32* %6, align 4
  br label %145

144:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %143
  br label %147

146:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %211

148:                                              ; preds = %107
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %150 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %148
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @NEED_EXCH_OFFLOAD(i64 %155)
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 7
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %156, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  store i32 1, i32* %8, align 4
  br label %165

165:                                              ; preds = %164, %152
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %168, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %165
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @NEED_EXCH_OFFLOAD(i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %173, %165
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179, %173
  store i32 1, i32* %6, align 4
  br label %184

183:                                              ; preds = %179
  store i32 2, i32* %6, align 4
  br label %184

184:                                              ; preds = %183, %182
  br label %186

185:                                              ; preds = %148
  store i32 2, i32* %6, align 4
  br label %186

186:                                              ; preds = %185, %184
  br label %211

187:                                              ; preds = %107
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %189 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %193

192:                                              ; preds = %187
  store i32 1, i32* %6, align 4
  br label %193

193:                                              ; preds = %192, %191
  br label %211

194:                                              ; preds = %107
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 3, i32* %6, align 4
  br label %210

199:                                              ; preds = %194
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 7
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  store i32 2, i32* %6, align 4
  br label %209

208:                                              ; preds = %199
  store i32 1, i32* %6, align 4
  br label %209

209:                                              ; preds = %208, %207
  br label %210

210:                                              ; preds = %209, %198
  br label %211

211:                                              ; preds = %107, %210, %193, %186, %147
  br label %393

212:                                              ; preds = %2
  %213 = load i32, i32* %4, align 4
  switch i32 %213, label %248 [
    i32 129, label %214
    i32 130, label %247
    i32 131, label %247
  ]

214:                                              ; preds = %212
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @NEED_EXCH_OFFLOAD(i64 %217)
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 7
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %218, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %214
  store i32 1, i32* %8, align 4
  br label %227

227:                                              ; preds = %226, %214
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %230, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %227
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @NEED_EXCH_OFFLOAD(i64 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %235, %227
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241, %235
  store i32 1, i32* %6, align 4
  br label %246

245:                                              ; preds = %241
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %245, %244
  br label %249

247:                                              ; preds = %212, %212
  store i32 1, i32* %6, align 4
  br label %249

248:                                              ; preds = %212
  store i32 2, i32* %6, align 4
  br label %249

249:                                              ; preds = %248, %247, %246
  br label %393

250:                                              ; preds = %2
  %251 = load i32, i32* %4, align 4
  switch i32 %251, label %392 [
    i32 130, label %252
    i32 131, label %359
    i32 128, label %370
    i32 129, label %381
  ]

252:                                              ; preds = %250
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %254 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %258 = call i32 @qla_dual_mode_enabled(%struct.TYPE_13__* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %309

260:                                              ; preds = %256, %252
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %263, %266
  %268 = call i32 @NEED_EXCH_OFFLOAD(i64 %267)
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 7
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %268, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %260
  store i32 1, i32* %8, align 4
  br label %277

277:                                              ; preds = %276, %260
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %280, %283
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %287, %290
  %292 = icmp ne i64 %284, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %277
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %296, %299
  %301 = call i32 @NEED_EXCH_OFFLOAD(i64 %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %293, %277
  %304 = load i32, i32* %8, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303, %293
  store i32 1, i32* %6, align 4
  br label %308

307:                                              ; preds = %303
  store i32 0, i32* %6, align 4
  br label %308

308:                                              ; preds = %307, %306
  br label %358

309:                                              ; preds = %256
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %312, %315
  %317 = call i32 @NEED_EXCH_OFFLOAD(i64 %316)
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 7
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %317, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %309
  store i32 1, i32* %8, align 4
  br label %326

326:                                              ; preds = %325, %309
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %329, %332
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = add nsw i64 %336, %339
  %341 = icmp ne i64 %333, %340
  br i1 %341, label %342, label %352

342:                                              ; preds = %326
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %345, %348
  %350 = call i32 @NEED_EXCH_OFFLOAD(i64 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %342, %326
  %353 = load i32, i32* %8, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %352, %342
  store i32 2, i32* %6, align 4
  br label %357

356:                                              ; preds = %352
  store i32 0, i32* %6, align 4
  br label %357

357:                                              ; preds = %356, %355
  br label %358

358:                                              ; preds = %357, %308
  br label %392

359:                                              ; preds = %250
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %361 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %365 = call i32 @qla_dual_mode_enabled(%struct.TYPE_13__* %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %363, %359
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %369

368:                                              ; preds = %363
  store i32 2, i32* %6, align 4
  br label %369

369:                                              ; preds = %368, %367
  br label %392

370:                                              ; preds = %250
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %372 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %370
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %376 = call i32 @qla_dual_mode_enabled(%struct.TYPE_13__* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %374, %370
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %380

379:                                              ; preds = %374
  store i32 1, i32* %6, align 4
  br label %380

380:                                              ; preds = %379, %378
  br label %392

381:                                              ; preds = %250
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %383 = call i32 @qla_tgt_mode_enabled(%struct.TYPE_13__* %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %381
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %387 = call i32 @qla_dual_mode_enabled(%struct.TYPE_13__* %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %385, %381
  store i32 3, i32* %6, align 4
  br label %391

390:                                              ; preds = %385
  store i32 1, i32* %6, align 4
  br label %391

391:                                              ; preds = %390, %389
  br label %392

392:                                              ; preds = %391, %250, %380, %369, %358
  br label %393

393:                                              ; preds = %2, %392, %249, %211, %106
  %394 = load i32, i32* %6, align 4
  switch i32 %394, label %495 [
    i32 1, label %395
    i32 2, label %449
    i32 3, label %490
    i32 0, label %494
  ]

395:                                              ; preds = %393
  %396 = load i32, i32* @ql_log_warn, align 4
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %398 = load i32*, i32** @mode_to_str, align 8
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %398, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32*, i32** @mode_to_str, align 8
  %406 = load i32, i32* %4, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 2
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 4
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_log(i32 %396, %struct.TYPE_13__* %397, i32 65535, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %404, i32 %409, i64 %412, i64 %415, i64 %418, i64 %421)
  %423 = load i32, i32* %4, align 4
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 0
  store i32 %423, i32* %425, align 8
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %429, i32 0, i32 2
  store i64 %428, i64* %430, align 8
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 3
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 4
  store i64 %433, i64* %435, align 8
  %436 = load i32, i32* %7, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %395
  %439 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %440 = call i32 @qlt_set_mode(%struct.TYPE_13__* %439)
  br label %441

441:                                              ; preds = %438, %395
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 6
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 0
  store i32 1, i32* %444, align 4
  %445 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %446 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 5
  %448 = call i32 @set_bit(i32 %445, i32* %447)
  br label %509

449:                                              ; preds = %393
  %450 = load i32, i32* @ql_log_warn, align 4
  %451 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %452 = load i32*, i32** @mode_to_str, align 8
  %453 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %452, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = load i32*, i32** @mode_to_str, align 8
  %460 = load i32, i32* %4, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 2
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 4
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 3
  %475 = load i64, i64* %474, align 8
  %476 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_log(i32 %450, %struct.TYPE_13__* %451, i32 65535, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %458, i32 %463, i64 %466, i64 %469, i64 %472, i64 %475)
  %477 = load i32, i32* %4, align 4
  %478 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 0
  store i32 %477, i32* %479, align 8
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 2
  store i64 %482, i64* %484, align 8
  %485 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 3
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %488, i32 0, i32 4
  store i64 %487, i64* %489, align 8
  br label %509

490:                                              ; preds = %393
  %491 = load i32, i32* @ql_log_warn, align 4
  %492 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %493 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_log(i32 %491, %struct.TYPE_13__* %492, i32 65535, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %509

494:                                              ; preds = %393
  br label %495

495:                                              ; preds = %393, %494
  %496 = load i32, i32* @ql_log_warn, align 4
  %497 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %498 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load i32, i32* %4, align 4
  %502 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %503 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %502, i32 0, i32 2
  %504 = load i64, i64* %503, align 8
  %505 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %505, i32 0, i32 1
  %507 = load i64, i64* %506, align 8
  %508 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_log(i32 %496, %struct.TYPE_13__* %497, i32 65535, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %500, i32 %501, i64 %504, i64 %507)
  br label %509

509:                                              ; preds = %495, %490, %449, %441
  %510 = load i32, i32* %5, align 4
  ret i32 %510
}

declare dso_local i32 @qla_tgt_mode_enabled(%struct.TYPE_13__*) #1

declare dso_local i32 @NEED_EXCH_OFFLOAD(i64) #1

declare dso_local i32 @qla_dual_mode_enabled(%struct.TYPE_13__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @qlt_set_mode(%struct.TYPE_13__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
