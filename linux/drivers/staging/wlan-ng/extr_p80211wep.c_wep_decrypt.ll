; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211wep.c_wep_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211wep.c_wep_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i64*, i32* }

@NUM_WEPKEYS = common dso_local global i64 0, align 8
@wep_crc32_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wep_decrypt(%struct.wlandevice* %0, i64* %1, i64 %2, i32 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlandevice*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [256 x i64], align 16
  %20 = alloca [64 x i64], align 16
  %21 = alloca [4 x i64], align 16
  %22 = alloca i64, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %218

26:                                               ; preds = %6
  %27 = load i64*, i64** %12, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds [64 x i64], [64 x i64]* %20, i64 0, i64 0
  store i64 %29, i64* %30, align 16
  %31 = load i64*, i64** %12, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds [64 x i64], [64 x i64]* %20, i64 0, i64 1
  store i64 %33, i64* %34, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [64 x i64], [64 x i64]* %20, i64 0, i64 2
  store i64 %37, i64* %38, align 16
  %39 = load i64*, i64** %12, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @WEP_KEY(i64 %41)
  store i64 %42, i64* %22, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %26
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %22, align 8
  br label %48

48:                                               ; preds = %45, %26
  %49 = load i64, i64* %22, align 8
  %50 = load i64, i64* @NUM_WEPKEYS, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -2, i32* %7, align 4
  br label %218

53:                                               ; preds = %48
  %54 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %55 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %22, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 -3, i32* %7, align 4
  br label %218

63:                                               ; preds = %53
  %64 = getelementptr inbounds [64 x i64], [64 x i64]* %20, i64 0, i64 0
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %67 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %22, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %18, align 8
  %73 = call i32 @memcpy(i64* %65, i32 %71, i64 %72)
  %74 = load i64, i64* %18, align 8
  %75 = add nsw i64 %74, 3
  store i64 %75, i64* %18, align 8
  store i64 0, i64* %14, align 8
  br label %76

76:                                               ; preds = %83, %63
  %77 = load i64, i64* %14, align 8
  %78 = icmp slt i64 %77, 256
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %81
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %14, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %14, align 8
  br label %76

86:                                               ; preds = %76
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %87

87:                                               ; preds = %106, %86
  %88 = load i64, i64* %14, align 8
  %89 = icmp slt i64 %88, 256
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %91, %94
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %18, align 8
  %98 = srem i64 %96, %97
  %99 = getelementptr inbounds [64 x i64], [64 x i64]* %20, i64 0, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %95, %100
  %102 = and i64 %101, 255
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @swap(i64 %103, i64 %104)
  br label %106

106:                                              ; preds = %90
  %107 = load i64, i64* %14, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %14, align 8
  br label %87

109:                                              ; preds = %87
  store i64 -1, i64* %17, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %110

110:                                              ; preds = %155, %109
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %158

114:                                              ; preds = %110
  %115 = load i64, i64* %14, align 8
  %116 = add nsw i64 %115, 1
  %117 = and i64 %116, 255
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %118, %121
  %123 = and i64 %122, 255
  store i64 %123, i64* %15, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @swap(i64 %124, i64 %125)
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %15, align 8
  %131 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %129, %132
  %134 = and i64 %133, 255
  %135 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %9, align 8
  %138 = load i64, i64* %16, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = xor i64 %140, %136
  store i64 %141, i64* %139, align 8
  %142 = load i64*, i64** @wep_crc32_table, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i64*, i64** %9, align 8
  %145 = load i64, i64* %16, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = xor i64 %143, %147
  %149 = and i64 %148, 255
  %150 = getelementptr inbounds i64, i64* %142, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %17, align 8
  %153 = ashr i64 %152, 8
  %154 = xor i64 %151, %153
  store i64 %154, i64* %17, align 8
  br label %155

155:                                              ; preds = %114
  %156 = load i64, i64* %16, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %16, align 8
  br label %110

158:                                              ; preds = %110
  %159 = load i64, i64* %17, align 8
  %160 = xor i64 %159, -1
  store i64 %160, i64* %17, align 8
  %161 = load i64, i64* %17, align 8
  %162 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  store i64 %161, i64* %162, align 16
  %163 = load i64, i64* %17, align 8
  %164 = ashr i64 %163, 8
  %165 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 1
  store i64 %164, i64* %165, align 8
  %166 = load i64, i64* %17, align 8
  %167 = ashr i64 %166, 16
  %168 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 2
  store i64 %167, i64* %168, align 16
  %169 = load i64, i64* %17, align 8
  %170 = ashr i64 %169, 24
  %171 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 3
  store i64 %170, i64* %171, align 8
  store i64 0, i64* %16, align 8
  br label %172

172:                                              ; preds = %214, %158
  %173 = load i64, i64* %16, align 8
  %174 = icmp slt i64 %173, 4
  br i1 %174, label %175, label %217

175:                                              ; preds = %172
  %176 = load i64, i64* %14, align 8
  %177 = add nsw i64 %176, 1
  %178 = and i64 %177, 255
  store i64 %178, i64* %14, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* %14, align 8
  %181 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %179, %182
  %184 = and i64 %183, 255
  store i64 %184, i64* %15, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* %15, align 8
  %187 = call i32 @swap(i64 %185, i64 %186)
  %188 = load i64, i64* %16, align 8
  %189 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %14, align 8
  %192 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %15, align 8
  %195 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %193, %196
  %198 = and i64 %197, 255
  %199 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = xor i64 %190, %200
  %202 = load i64*, i64** %13, align 8
  %203 = load i64, i64* %16, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %201, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %175
  %208 = load i64, i64* %16, align 8
  %209 = shl i64 %208, 4
  %210 = or i64 4, %209
  %211 = sub nsw i64 0, %210
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %7, align 4
  br label %218

213:                                              ; preds = %175
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %16, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %16, align 8
  br label %172

217:                                              ; preds = %172
  store i32 0, i32* %7, align 4
  br label %218

218:                                              ; preds = %217, %207, %62, %52, %25
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i64 @WEP_KEY(i64) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i32 @swap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
