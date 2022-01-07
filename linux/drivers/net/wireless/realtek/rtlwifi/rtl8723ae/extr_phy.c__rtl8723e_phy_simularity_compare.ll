; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_simularity_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_simularity_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@__const._rtl8723e_phy_simularity_compare.final_candidate = private unnamed_addr constant [2 x i32] [i32 255, i32 255], align 4
@MAX_TOLERANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, [8 x i64]*, i32, i32)* @_rtl8723e_phy_simularity_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723e_phy_simularity_compare(%struct.ieee80211_hw* %0, [8 x i64]* %1, i32 %2, i32 %3) #0 {
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
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store [8 x i64]* %1, [8 x i64]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([2 x i32]* @__const._rtl8723e_phy_simularity_compare.final_candidate to i8*), i64 8, i1 false)
  store i32 1, i32* %16, align 4
  store i64 4, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %148, %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %151

22:                                               ; preds = %18
  %23 = load [8 x i64]*, [8 x i64]** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 %25
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %26, i64 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load [8 x i64]*, [8 x i64]** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i64], [8 x i64]* %30, i64 %32
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds [8 x i64], [8 x i64]* %33, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %29, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %22
  %39 = load [8 x i64]*, [8 x i64]** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i64], [8 x i64]* %39, i64 %41
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds [8 x i64], [8 x i64]* %42, i64 0, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load [8 x i64]*, [8 x i64]** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i64], [8 x i64]* %46, i64 %48
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds [8 x i64], [8 x i64]* %49, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %45, %52
  br label %70

54:                                               ; preds = %22
  %55 = load [8 x i64]*, [8 x i64]** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %55, i64 %57
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds [8 x i64], [8 x i64]* %58, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load [8 x i64]*, [8 x i64]** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %62, i64 %64
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds [8 x i64], [8 x i64]* %65, i64 0, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %61, %68
  br label %70

70:                                               ; preds = %54, %38
  %71 = phi i64 [ %53, %38 ], [ %69, %54 ]
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @MAX_TOLERANCE, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %147

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %76, 2
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  %80 = icmp eq i64 %79, 6
  br i1 %80, label %81, label %139

81:                                               ; preds = %78, %75
  %82 = load i64, i64* %13, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %139, label %84

84:                                               ; preds = %81
  %85 = load [8 x i64]*, [8 x i64]** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %85, i64 %87
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds [8 x i64], [8 x i64]* %88, i64 0, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load [8 x i64]*, [8 x i64]** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [8 x i64], [8 x i64]* %92, i64 %94
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, 1
  %98 = getelementptr inbounds [8 x i64], [8 x i64]* %95, i64 0, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %91, %99
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %84
  %103 = load i32, i32* %9, align 4
  %104 = load i64, i64* %10, align 8
  %105 = udiv i64 %104, 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  br label %138

107:                                              ; preds = %84
  %108 = load [8 x i64]*, [8 x i64]** %7, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i64], [8 x i64]* %108, i64 %110
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds [8 x i64], [8 x i64]* %111, i64 0, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load [8 x i64]*, [8 x i64]** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i64], [8 x i64]* %115, i64 %117
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 1
  %121 = getelementptr inbounds [8 x i64], [8 x i64]* %118, i64 0, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %114, %122
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %107
  %126 = load i32, i32* %8, align 4
  %127 = load i64, i64* %10, align 8
  %128 = udiv i64 %127, 4
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %128
  store i32 %126, i32* %129, align 4
  br label %137

130:                                              ; preds = %107
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %10, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 1, %133
  %135 = sext i32 %134 to i64
  %136 = or i64 %131, %135
  store i64 %136, i64* %13, align 8
  br label %137

137:                                              ; preds = %130, %125
  br label %138

138:                                              ; preds = %137, %102
  br label %146

139:                                              ; preds = %81, %78
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %10, align 8
  %142 = trunc i64 %141 to i32
  %143 = shl i32 1, %142
  %144 = sext i32 %143 to i64
  %145 = or i64 %140, %144
  store i64 %145, i64* %13, align 8
  br label %146

146:                                              ; preds = %139, %138
  br label %147

147:                                              ; preds = %146, %70
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %18

151:                                              ; preds = %18
  %152 = load i64, i64* %13, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %199

154:                                              ; preds = %151
  store i64 0, i64* %10, align 8
  br label %155

155:                                              ; preds = %194, %154
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %14, align 8
  %158 = udiv i64 %157, 4
  %159 = icmp ult i64 %156, %158
  br i1 %159, label %160, label %197

160:                                              ; preds = %155
  %161 = load i64, i64* %10, align 8
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 255
  br i1 %164, label %165, label %193

165:                                              ; preds = %160
  %166 = load i64, i64* %10, align 8
  %167 = mul i64 %166, 4
  store i64 %167, i64* %11, align 8
  br label %168

168:                                              ; preds = %189, %165
  %169 = load i64, i64* %11, align 8
  %170 = load i64, i64* %10, align 8
  %171 = add i64 %170, 1
  %172 = mul i64 %171, 4
  %173 = sub i64 %172, 2
  %174 = icmp ult i64 %169, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %168
  %176 = load [8 x i64]*, [8 x i64]** %7, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x i64], [8 x i64]* %176, i64 %180
  %182 = load i64, i64* %11, align 8
  %183 = getelementptr inbounds [8 x i64], [8 x i64]* %181, i64 0, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load [8 x i64]*, [8 x i64]** %7, align 8
  %186 = getelementptr inbounds [8 x i64], [8 x i64]* %185, i64 3
  %187 = load i64, i64* %11, align 8
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* %186, i64 0, i64 %187
  store i64 %184, i64* %188, align 8
  br label %189

189:                                              ; preds = %175
  %190 = load i64, i64* %11, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %11, align 8
  br label %168

192:                                              ; preds = %168
  store i32 0, i32* %16, align 4
  br label %193

193:                                              ; preds = %192, %160
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %10, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %10, align 8
  br label %155

197:                                              ; preds = %155
  %198 = load i32, i32* %16, align 4
  store i32 %198, i32* %5, align 4
  br label %224

199:                                              ; preds = %151
  %200 = load i64, i64* %13, align 8
  %201 = and i64 %200, 15
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %223, label %203

203:                                              ; preds = %199
  store i64 0, i64* %10, align 8
  br label %204

204:                                              ; preds = %219, %203
  %205 = load i64, i64* %10, align 8
  %206 = icmp ult i64 %205, 4
  br i1 %206, label %207, label %222

207:                                              ; preds = %204
  %208 = load [8 x i64]*, [8 x i64]** %7, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [8 x i64], [8 x i64]* %208, i64 %210
  %212 = load i64, i64* %10, align 8
  %213 = getelementptr inbounds [8 x i64], [8 x i64]* %211, i64 0, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load [8 x i64]*, [8 x i64]** %7, align 8
  %216 = getelementptr inbounds [8 x i64], [8 x i64]* %215, i64 3
  %217 = load i64, i64* %10, align 8
  %218 = getelementptr inbounds [8 x i64], [8 x i64]* %216, i64 0, i64 %217
  store i64 %214, i64* %218, align 8
  br label %219

219:                                              ; preds = %207
  %220 = load i64, i64* %10, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %10, align 8
  br label %204

222:                                              ; preds = %204
  store i32 0, i32* %5, align 4
  br label %224

223:                                              ; preds = %199
  store i32 0, i32* %5, align 4
  br label %224

224:                                              ; preds = %223, %222, %197
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
