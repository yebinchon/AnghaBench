; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_skt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_skt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@SOC_STAT_CD = common dso_local global i64 0, align 8
@SOC_STAT_RDY = common dso_local global i64 0, align 8
@SOC_STAT_BVD1 = common dso_local global i64 0, align 8
@SOC_STAT_BVD2 = common dso_local global i64 0, align 8
@SOC_STAT_VS1 = common dso_local global i64 0, align 8
@SOC_STAT_VS2 = common dso_local global i64 0, align 8
@SS_DETECT = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@SS_WRPROT = common dso_local global i32 0, align 4
@SS_3VCARD = common dso_local global i32 0, align 4
@SS_XVCARD = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@SS_IOCARD = common dso_local global i32 0, align 4
@SS_STSCHG = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @soc_common_pcmcia_skt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  %3 = alloca %struct.pcmcia_state, align 8
  %4 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %5 = call i32 @memset(%struct.pcmcia_state* %3, i32 0, i32 32)
  %6 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %9 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* @SOC_STAT_CD, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %18 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* @SOC_STAT_CD, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @gpiod_get_value(i64 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  br label %30

30:                                               ; preds = %16, %1
  %31 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %32 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* @SOC_STAT_RDY, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %30
  %40 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %41 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* @SOC_STAT_RDY, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @gpiod_get_value(i64 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %39, %30
  %54 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %55 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* @SOC_STAT_BVD1, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %53
  %63 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %64 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* @SOC_STAT_BVD1, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @gpiod_get_value(i64 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  br label %76

76:                                               ; preds = %62, %53
  %77 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %78 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* @SOC_STAT_BVD2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %87 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* @SOC_STAT_BVD2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @gpiod_get_value(i64 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %85, %76
  %100 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %101 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i64, i64* @SOC_STAT_VS1, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %110 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i64, i64* @SOC_STAT_VS1, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @gpiod_get_value(i64 %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 4
  store i32 %120, i32* %121, align 8
  br label %122

122:                                              ; preds = %108, %99
  %123 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %124 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i64, i64* @SOC_STAT_VS2, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %122
  %132 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %133 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i64, i64* @SOC_STAT_VS2, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @gpiod_get_value(i64 %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 5
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %131, %122
  %146 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %147 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32 (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)*, i32 (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)** %149, align 8
  %151 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %152 = call i32 %150(%struct.soc_pcmcia_socket* %151, %struct.pcmcia_state* %3)
  %153 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %145
  %157 = load i32, i32* @SS_DETECT, align 4
  br label %159

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ]
  store i32 %160, i32* %4, align 4
  %161 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* @SS_READY, align 4
  br label %167

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 0, %166 ]
  %169 = load i32, i32* %4, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %4, align 4
  %171 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @SS_WRPROT, align 4
  br label %177

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i32 [ %175, %174 ], [ 0, %176 ]
  %179 = load i32, i32* %4, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %4, align 4
  %181 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @SS_3VCARD, align 4
  br label %187

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %186, %184
  %188 = phi i32 [ %185, %184 ], [ 0, %186 ]
  %189 = load i32, i32* %4, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %4, align 4
  %191 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @SS_XVCARD, align 4
  br label %197

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196, %194
  %198 = phi i32 [ %195, %194 ], [ 0, %196 ]
  %199 = load i32, i32* %4, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %4, align 4
  %201 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %202 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i32, i32* @SS_POWERON, align 4
  br label %209

208:                                              ; preds = %197
  br label %209

209:                                              ; preds = %208, %206
  %210 = phi i32 [ %207, %206 ], [ 0, %208 ]
  %211 = load i32, i32* %4, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %4, align 4
  %213 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %214 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @SS_IOCARD, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %231

220:                                              ; preds = %209
  %221 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  br label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @SS_STSCHG, align 4
  br label %227

227:                                              ; preds = %225, %224
  %228 = phi i32 [ 0, %224 ], [ %226, %225 ]
  %229 = load i32, i32* %4, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %4, align 4
  br label %249

231:                                              ; preds = %209
  %232 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i32, i32* @SS_BATDEAD, align 4
  %237 = load i32, i32* %4, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %4, align 4
  br label %248

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %3, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load i32, i32* @SS_BATWARN, align 4
  %245 = load i32, i32* %4, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %243, %239
  br label %248

248:                                              ; preds = %247, %235
  br label %249

249:                                              ; preds = %248, %227
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @memset(%struct.pcmcia_state*, i32, i32) #1

declare dso_local i32 @gpiod_get_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
