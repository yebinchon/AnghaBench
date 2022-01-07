; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211wep.c_wep_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211wep.c_wep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i64*, i32* }

@NUM_WEPKEYS = common dso_local global i32 0, align 4
@wep_crc32_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wep_encrypt(%struct.wlandevice* %0, i32* %1, i32* %2, i64 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wlandevice*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [256 x i32], align 16
  %22 = alloca [64 x i32], align 16
  store %struct.wlandevice* %0, %struct.wlandevice** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %248

26:                                               ; preds = %7
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @NUM_WEPKEYS, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -2, i32* %8, align 4
  br label %248

31:                                               ; preds = %26
  %32 = load %struct.wlandevice*, %struct.wlandevice** %9, align 8
  %33 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %20, align 8
  %39 = load i64, i64* %20, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 -3, i32* %8, align 4
  br label %248

42:                                               ; preds = %31
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @get_random_bytes(i32* %43, i32 3)
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 3
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %20, align 8
  %61 = icmp slt i64 %59, %60
  br label %62

62:                                               ; preds = %55, %50, %45
  %63 = phi i1 [ false, %50 ], [ false, %45 ], [ %61, %55 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @get_random_bytes(i32* %65, i32 3)
  br label %45

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, 3
  %70 = shl i32 %69, 6
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 0
  store i32 %75, i32* %76, align 16
  %77 = load i32*, i32** %14, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 1
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 2
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 0
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load %struct.wlandevice*, %struct.wlandevice** %9, align 8
  %88 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %20, align 8
  %95 = call i32 @memcpy(i32* %86, i32 %93, i64 %94)
  %96 = load i64, i64* %20, align 8
  %97 = add nsw i64 %96, 3
  store i64 %97, i64* %20, align 8
  store i64 0, i64* %16, align 8
  br label %98

98:                                               ; preds = %106, %67
  %99 = load i64, i64* %16, align 8
  %100 = icmp slt i64 %99, 256
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i64, i64* %16, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* %16, align 8
  %105 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %104
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %101
  %107 = load i64, i64* %16, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %16, align 8
  br label %98

109:                                              ; preds = %98
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %110

110:                                              ; preds = %131, %109
  %111 = load i64, i64* %16, align 8
  %112 = icmp slt i64 %111, 256
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %114, %118
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %20, align 8
  %122 = srem i64 %120, %121
  %123 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %119, %125
  %127 = and i64 %126, 255
  store i64 %127, i64* %17, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* %17, align 8
  %130 = call i32 @swap(i64 %128, i64 %129)
  br label %131

131:                                              ; preds = %113
  %132 = load i64, i64* %16, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %16, align 8
  br label %110

134:                                              ; preds = %110
  store i64 -1, i64* %19, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %135

135:                                              ; preds = %186, %134
  %136 = load i64, i64* %18, align 8
  %137 = load i64, i64* %12, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %189

139:                                              ; preds = %135
  %140 = load i64*, i64** @wep_crc32_table, align 8
  %141 = load i64, i64* %19, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = load i64, i64* %18, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = xor i64 %141, %146
  %148 = and i64 %147, 255
  %149 = getelementptr inbounds i64, i64* %140, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %19, align 8
  %152 = ashr i64 %151, 8
  %153 = xor i64 %150, %152
  store i64 %153, i64* %19, align 8
  %154 = load i64, i64* %16, align 8
  %155 = add nsw i64 %154, 1
  %156 = and i64 %155, 255
  store i64 %156, i64* %16, align 8
  %157 = load i64, i64* %17, align 8
  %158 = load i64, i64* %16, align 8
  %159 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %157, %161
  %163 = and i64 %162, 255
  store i64 %163, i64* %17, align 8
  %164 = load i64, i64* %16, align 8
  %165 = load i64, i64* %17, align 8
  %166 = call i32 @swap(i64 %164, i64 %165)
  %167 = load i32*, i32** %10, align 8
  %168 = load i64, i64* %18, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %16, align 8
  %172 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* %17, align 8
  %175 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = and i32 %177, 255
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %170, %181
  %183 = load i32*, i32** %11, align 8
  %184 = load i64, i64* %18, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32 %182, i32* %185, align 4
  br label %186

186:                                              ; preds = %139
  %187 = load i64, i64* %18, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %18, align 8
  br label %135

189:                                              ; preds = %135
  %190 = load i64, i64* %19, align 8
  %191 = xor i64 %190, -1
  store i64 %191, i64* %19, align 8
  %192 = load i64, i64* %19, align 8
  %193 = trunc i64 %192 to i32
  %194 = load i32*, i32** %15, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  store i32 %193, i32* %195, align 4
  %196 = load i64, i64* %19, align 8
  %197 = ashr i64 %196, 8
  %198 = trunc i64 %197 to i32
  %199 = load i32*, i32** %15, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  store i32 %198, i32* %200, align 4
  %201 = load i64, i64* %19, align 8
  %202 = ashr i64 %201, 16
  %203 = trunc i64 %202 to i32
  %204 = load i32*, i32** %15, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  store i32 %203, i32* %205, align 4
  %206 = load i64, i64* %19, align 8
  %207 = ashr i64 %206, 24
  %208 = trunc i64 %207 to i32
  %209 = load i32*, i32** %15, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  store i32 %208, i32* %210, align 4
  store i64 0, i64* %18, align 8
  br label %211

211:                                              ; preds = %244, %189
  %212 = load i64, i64* %18, align 8
  %213 = icmp slt i64 %212, 4
  br i1 %213, label %214, label %247

214:                                              ; preds = %211
  %215 = load i64, i64* %16, align 8
  %216 = add nsw i64 %215, 1
  %217 = and i64 %216, 255
  store i64 %217, i64* %16, align 8
  %218 = load i64, i64* %17, align 8
  %219 = load i64, i64* %16, align 8
  %220 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %218, %222
  %224 = and i64 %223, 255
  store i64 %224, i64* %17, align 8
  %225 = load i64, i64* %16, align 8
  %226 = load i64, i64* %17, align 8
  %227 = call i32 @swap(i64 %225, i64 %226)
  %228 = load i64, i64* %16, align 8
  %229 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i64, i64* %17, align 8
  %232 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %230, %233
  %235 = and i32 %234, 255
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %15, align 8
  %240 = load i64, i64* %18, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = xor i32 %242, %238
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %214
  %245 = load i64, i64* %18, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %18, align 8
  br label %211

247:                                              ; preds = %211
  store i32 0, i32* %8, align 4
  br label %248

248:                                              ; preds = %247, %41, %30, %25
  %249 = load i32, i32* %8, align 4
  ret i32 %249
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @swap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
