; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_ms_mode_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_ms_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@MODE_SENSE = common dso_local global i64 0, align 8
@MODE_SENSE_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i64, i32, i64*, i32)* @ms_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_mode_sense(%struct.rtsx_chip* %0, i64 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ms_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 0
  store %struct.ms_info* %18, %struct.ms_info** %11, align 8
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @MODE_SENSE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  store i32 8, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 104
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 104, i32* %13, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i64*, i64** %9, align 8
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %15, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  store i64 103, i64* %32, align 8
  br label %48

33:                                               ; preds = %5
  store i32 12, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 108
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 108, i32* %13, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i64*, i64** %9, align 8
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64 106, i64* %47, align 8
  br label %48

48:                                               ; preds = %37, %27
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @check_card_ready(%struct.rtsx_chip* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %48
  %54 = load %struct.ms_info*, %struct.ms_info** %11, align 8
  %55 = call i64 @CHK_MSXC(%struct.ms_info* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  %58 = load i64*, i64** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64 64, i64* %62, align 8
  br label %80

63:                                               ; preds = %53
  %64 = load %struct.ms_info*, %struct.ms_info** %11, align 8
  %65 = call i64 @CHK_MSPRO(%struct.ms_info* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  store i32 1, i32* %14, align 4
  %68 = load i64*, i64** %9, align 8
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 32, i64* %72, align 8
  br label %79

73:                                               ; preds = %63
  %74 = load i64*, i64** %9, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64 16, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %57
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @check_card_wp(%struct.rtsx_chip* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i64*, i64** %9, align 8
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  store i64 128, i64* %90, align 8
  br label %97

91:                                               ; preds = %80
  %92 = load i64*, i64** %9, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %85
  br label %109

98:                                               ; preds = %48
  %99 = load i64*, i64** %9, align 8
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  store i64 0, i64* %103, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %98, %97
  %110 = load i64*, i64** %9, align 8
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  store i64 0, i64* %114, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @MODE_SENSE_10, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %180

118:                                              ; preds = %109
  %119 = load i64*, i64** %9, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  store i64 0, i64* %123, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  store i64 0, i64* %128, align 8
  %129 = load i64*, i64** %9, align 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* %13, align 4
  %135 = icmp sge i32 %134, 9
  br i1 %135, label %136, label %142

136:                                              ; preds = %118
  %137 = load i64*, i64** %9, align 8
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  store i64 32, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %118
  %143 = load i32, i32* %13, align 4
  %144 = icmp sge i32 %143, 10
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i64*, i64** %9, align 8
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i64, i64* %146, i64 %149
  store i64 98, i64* %150, align 8
  br label %151

151:                                              ; preds = %145, %142
  %152 = load i32, i32* %13, align 4
  %153 = icmp sge i32 %152, 11
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i64*, i64** %9, align 8
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i64, i64* %155, i64 %158
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %151
  %161 = load i32, i32* %13, align 4
  %162 = icmp sge i32 %161, 12
  br i1 %162, label %163, label %179

163:                                              ; preds = %160
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i64*, i64** %9, align 8
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  store i64 192, i64* %171, align 8
  br label %178

172:                                              ; preds = %163
  %173 = load i64*, i64** %9, align 8
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %172, %166
  br label %179

179:                                              ; preds = %178, %160
  br label %227

180:                                              ; preds = %109
  %181 = load i32, i32* %13, align 4
  %182 = icmp sge i32 %181, 5
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i64*, i64** %9, align 8
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %15, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i64, i64* %184, i64 %187
  store i64 32, i64* %188, align 8
  br label %189

189:                                              ; preds = %183, %180
  %190 = load i32, i32* %13, align 4
  %191 = icmp sge i32 %190, 6
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i64*, i64** %9, align 8
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %15, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i64, i64* %193, i64 %196
  store i64 98, i64* %197, align 8
  br label %198

198:                                              ; preds = %192, %189
  %199 = load i32, i32* %13, align 4
  %200 = icmp sge i32 %199, 7
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load i64*, i64** %9, align 8
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i64, i64* %202, i64 %205
  store i64 0, i64* %206, align 8
  br label %207

207:                                              ; preds = %201, %198
  %208 = load i32, i32* %13, align 4
  %209 = icmp sge i32 %208, 8
  br i1 %209, label %210, label %226

210:                                              ; preds = %207
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i64*, i64** %9, align 8
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i64, i64* %214, i64 %217
  store i64 192, i64* %218, align 8
  br label %225

219:                                              ; preds = %210
  %220 = load i64*, i64** %9, align 8
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i64, i64* %220, i64 %223
  store i64 0, i64* %224, align 8
  br label %225

225:                                              ; preds = %219, %213
  br label %226

226:                                              ; preds = %225, %207
  br label %227

227:                                              ; preds = %226, %179
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %251

231:                                              ; preds = %227
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %12, align 4
  %234 = sub nsw i32 %232, %233
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* %16, align 4
  %236 = icmp slt i32 %235, 96
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i32, i32* %16, align 4
  br label %240

239:                                              ; preds = %231
  br label %240

240:                                              ; preds = %239, %237
  %241 = phi i32 [ %238, %237 ], [ 96, %239 ]
  store i32 %241, i32* %16, align 4
  %242 = load i64*, i64** %9, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load %struct.ms_info*, %struct.ms_info** %11, align 8
  %247 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @memcpy(i64* %245, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %240, %227
  ret void
}

declare dso_local i64 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_MSXC(%struct.ms_info*) #1

declare dso_local i64 @CHK_MSPRO(%struct.ms_info*) #1

declare dso_local i64 @check_card_wp(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
