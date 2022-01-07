; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88e_phy_simularity_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88e_phy_simularity_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }

@__const._rtl88e_phy_simularity_compare.final_candidate = private unnamed_addr constant [2 x i32] [i32 255, i32 255], align 4
@MAX_TOLERANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, [8 x i64]*, i32, i32)* @_rtl88e_phy_simularity_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl88e_phy_simularity_compare(%struct.ieee80211_hw* %0, [8 x i64]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca [8 x i64]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rtl_hal*, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store [8 x i64]* %1, [8 x i64]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %20 = call i32 @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_hal* @rtl_hal(i32 %20)
  store %struct.rtl_hal* %21, %struct.rtl_hal** %15, align 8
  %22 = bitcast [2 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast ([2 x i32]* @__const._rtl88e_phy_simularity_compare.final_candidate to i8*), i64 8, i1 false)
  store i32 1, i32* %17, align 4
  %23 = load %struct.rtl_hal*, %struct.rtl_hal** %15, align 8
  %24 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_92C_SERIAL(i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i64 8, i64* %14, align 8
  br label %31

30:                                               ; preds = %4
  store i64 4, i64* %14, align 8
  br label %31

31:                                               ; preds = %30, %29
  store i64 0, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %162, %31
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %165

36:                                               ; preds = %32
  %37 = load [8 x i64]*, [8 x i64]** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i64], [8 x i64]* %37, i64 %39
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds [8 x i64], [8 x i64]* %40, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load [8 x i64]*, [8 x i64]** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i64], [8 x i64]* %44, i64 %46
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds [8 x i64], [8 x i64]* %47, i64 0, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %43, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %36
  %53 = load [8 x i64]*, [8 x i64]** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i64], [8 x i64]* %53, i64 %55
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %56, i64 0, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load [8 x i64]*, [8 x i64]** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i64], [8 x i64]* %60, i64 %62
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %63, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %59, %66
  br label %84

68:                                               ; preds = %36
  %69 = load [8 x i64]*, [8 x i64]** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* %69, i64 %71
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %72, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load [8 x i64]*, [8 x i64]** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i64], [8 x i64]* %76, i64 %78
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds [8 x i64], [8 x i64]* %79, i64 0, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %75, %82
  br label %84

84:                                               ; preds = %68, %52
  %85 = phi i64 [ %67, %52 ], [ %83, %68 ]
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @MAX_TOLERANCE, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %161

89:                                               ; preds = %84
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %90, 2
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %10, align 8
  %94 = icmp eq i64 %93, 6
  br i1 %94, label %95, label %153

95:                                               ; preds = %92, %89
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %153, label %98

98:                                               ; preds = %95
  %99 = load [8 x i64]*, [8 x i64]** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8 x i64], [8 x i64]* %99, i64 %101
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds [8 x i64], [8 x i64]* %102, i64 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load [8 x i64]*, [8 x i64]** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8 x i64], [8 x i64]* %106, i64 %108
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, 1
  %112 = getelementptr inbounds [8 x i64], [8 x i64]* %109, i64 0, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %105, %113
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %98
  %117 = load i32, i32* %9, align 4
  %118 = load i64, i64* %10, align 8
  %119 = udiv i64 %118, 4
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %119
  store i32 %117, i32* %120, align 4
  br label %152

121:                                              ; preds = %98
  %122 = load [8 x i64]*, [8 x i64]** %7, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [8 x i64], [8 x i64]* %122, i64 %124
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds [8 x i64], [8 x i64]* %125, i64 0, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load [8 x i64]*, [8 x i64]** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [8 x i64], [8 x i64]* %129, i64 %131
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 1
  %135 = getelementptr inbounds [8 x i64], [8 x i64]* %132, i64 0, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %128, %136
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %121
  %140 = load i32, i32* %8, align 4
  %141 = load i64, i64* %10, align 8
  %142 = udiv i64 %141, 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %142
  store i32 %140, i32* %143, align 4
  br label %151

144:                                              ; preds = %121
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %10, align 8
  %147 = trunc i64 %146 to i32
  %148 = shl i32 1, %147
  %149 = sext i32 %148 to i64
  %150 = or i64 %145, %149
  store i64 %150, i64* %13, align 8
  br label %151

151:                                              ; preds = %144, %139
  br label %152

152:                                              ; preds = %151, %116
  br label %160

153:                                              ; preds = %95, %92
  %154 = load i64, i64* %13, align 8
  %155 = load i64, i64* %10, align 8
  %156 = trunc i64 %155 to i32
  %157 = shl i32 1, %156
  %158 = sext i32 %157 to i64
  %159 = or i64 %154, %158
  store i64 %159, i64* %13, align 8
  br label %160

160:                                              ; preds = %153, %152
  br label %161

161:                                              ; preds = %160, %84
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %10, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %10, align 8
  br label %32

165:                                              ; preds = %32
  %166 = load i64, i64* %13, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %213

168:                                              ; preds = %165
  store i64 0, i64* %10, align 8
  br label %169

169:                                              ; preds = %208, %168
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* %14, align 8
  %172 = udiv i64 %171, 4
  %173 = icmp ult i64 %170, %172
  br i1 %173, label %174, label %211

174:                                              ; preds = %169
  %175 = load i64, i64* %10, align 8
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 255
  br i1 %178, label %179, label %207

179:                                              ; preds = %174
  %180 = load i64, i64* %10, align 8
  %181 = mul i64 %180, 4
  store i64 %181, i64* %11, align 8
  br label %182

182:                                              ; preds = %203, %179
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* %10, align 8
  %185 = add i64 %184, 1
  %186 = mul i64 %185, 4
  %187 = sub i64 %186, 2
  %188 = icmp ult i64 %183, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %182
  %190 = load [8 x i64]*, [8 x i64]** %7, align 8
  %191 = load i64, i64* %10, align 8
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [8 x i64], [8 x i64]* %190, i64 %194
  %196 = load i64, i64* %11, align 8
  %197 = getelementptr inbounds [8 x i64], [8 x i64]* %195, i64 0, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load [8 x i64]*, [8 x i64]** %7, align 8
  %200 = getelementptr inbounds [8 x i64], [8 x i64]* %199, i64 3
  %201 = load i64, i64* %11, align 8
  %202 = getelementptr inbounds [8 x i64], [8 x i64]* %200, i64 0, i64 %201
  store i64 %198, i64* %202, align 8
  br label %203

203:                                              ; preds = %189
  %204 = load i64, i64* %11, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %11, align 8
  br label %182

206:                                              ; preds = %182
  store i32 0, i32* %17, align 4
  br label %207

207:                                              ; preds = %206, %174
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %10, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %10, align 8
  br label %169

211:                                              ; preds = %169
  %212 = load i32, i32* %17, align 4
  store i32 %212, i32* %5, align 4
  br label %265

213:                                              ; preds = %165
  %214 = load i64, i64* %13, align 8
  %215 = and i64 %214, 15
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %237, label %217

217:                                              ; preds = %213
  store i64 0, i64* %10, align 8
  br label %218

218:                                              ; preds = %233, %217
  %219 = load i64, i64* %10, align 8
  %220 = icmp ult i64 %219, 4
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  %222 = load [8 x i64]*, [8 x i64]** %7, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [8 x i64], [8 x i64]* %222, i64 %224
  %226 = load i64, i64* %10, align 8
  %227 = getelementptr inbounds [8 x i64], [8 x i64]* %225, i64 0, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load [8 x i64]*, [8 x i64]** %7, align 8
  %230 = getelementptr inbounds [8 x i64], [8 x i64]* %229, i64 3
  %231 = load i64, i64* %10, align 8
  %232 = getelementptr inbounds [8 x i64], [8 x i64]* %230, i64 0, i64 %231
  store i64 %228, i64* %232, align 8
  br label %233

233:                                              ; preds = %221
  %234 = load i64, i64* %10, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %10, align 8
  br label %218

236:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  br label %265

237:                                              ; preds = %213
  %238 = load i64, i64* %13, align 8
  %239 = and i64 %238, 240
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %264, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %264

244:                                              ; preds = %241
  store i64 4, i64* %10, align 8
  br label %245

245:                                              ; preds = %260, %244
  %246 = load i64, i64* %10, align 8
  %247 = icmp ult i64 %246, 8
  br i1 %247, label %248, label %263

248:                                              ; preds = %245
  %249 = load [8 x i64]*, [8 x i64]** %7, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [8 x i64], [8 x i64]* %249, i64 %251
  %253 = load i64, i64* %10, align 8
  %254 = getelementptr inbounds [8 x i64], [8 x i64]* %252, i64 0, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load [8 x i64]*, [8 x i64]** %7, align 8
  %257 = getelementptr inbounds [8 x i64], [8 x i64]* %256, i64 3
  %258 = load i64, i64* %10, align 8
  %259 = getelementptr inbounds [8 x i64], [8 x i64]* %257, i64 0, i64 %258
  store i64 %255, i64* %259, align 8
  br label %260

260:                                              ; preds = %248
  %261 = load i64, i64* %10, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* %10, align 8
  br label %245

263:                                              ; preds = %245
  store i32 0, i32* %5, align 4
  br label %265

264:                                              ; preds = %241, %237
  store i32 0, i32* %5, align 4
  br label %265

265:                                              ; preds = %264, %263, %236, %211
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IS_92C_SERIAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
