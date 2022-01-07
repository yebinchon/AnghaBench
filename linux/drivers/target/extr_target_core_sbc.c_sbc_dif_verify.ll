; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_sbc_dif_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_sbc_dif_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, %struct.scatterlist*, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.t10_pi_tuple = type { i64, i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"DIF READ sector: %llu guard_tag: 0x%04x app_tag: 0x%04x ref_tag: %u\0A\00", align 1
@T10_PI_APP_ESCAPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbc_dif_verify(%struct.se_cmd* %0, i64 %1, i32 %2, i32 %3, %struct.scatterlist* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.se_cmd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.se_device*, align 8
  %15 = alloca %struct.t10_pi_tuple*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.scatterlist* %4, %struct.scatterlist** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %27 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %26, i32 0, i32 2
  %28 = load %struct.se_device*, %struct.se_device** %27, align 8
  store %struct.se_device* %28, %struct.se_device** %14, align 8
  %29 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 1
  %31 = load %struct.scatterlist*, %struct.scatterlist** %30, align 8
  store %struct.scatterlist* %31, %struct.scatterlist** %16, align 8
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %17, align 8
  store i32 0, i32* %22, align 4
  %33 = load %struct.se_device*, %struct.se_device** %14, align 8
  %34 = getelementptr inbounds %struct.se_device, %struct.se_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %23, align 4
  br label %37

37:                                               ; preds = %268, %6
  %38 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %39 = icmp ne %struct.scatterlist* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = icmp slt i64 %41, %45
  br label %47

47:                                               ; preds = %40, %37
  %48 = phi i1 [ false, %37 ], [ %46, %40 ]
  br i1 %48, label %49, label %271

49:                                               ; preds = %47
  %50 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %51 = call i32 @sg_page(%struct.scatterlist* %50)
  %52 = call i8* @kmap_atomic(i32 %51)
  %53 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %52, i64 %56
  store i8* %57, i8** %19, align 8
  %58 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %59 = call i32 @sg_page(%struct.scatterlist* %58)
  %60 = call i8* @kmap_atomic(i32 %59)
  %61 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %62 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %60, i64 %64
  store i8* %65, i8** %18, align 8
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %20, align 4
  br label %67

67:                                               ; preds = %246, %49
  %68 = load i32, i32* %20, align 4
  %69 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = icmp slt i64 %74, %78
  br label %80

80:                                               ; preds = %73, %67
  %81 = phi i1 [ false, %67 ], [ %79, %73 ]
  br i1 %81, label %82, label %251

82:                                               ; preds = %80
  %83 = load i32, i32* %22, align 4
  %84 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %85 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %124

88:                                               ; preds = %82
  %89 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %90 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %22, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %22, align 4
  %94 = load i8*, i8** %18, align 8
  %95 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %96 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr i8, i8* %94, i64 %99
  %101 = call i32 @kunmap_atomic(i8* %100)
  %102 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %103 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %102)
  store %struct.scatterlist* %103, %struct.scatterlist** %16, align 8
  %104 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %105 = icmp ne %struct.scatterlist* %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %88
  %107 = load i8*, i8** %19, align 8
  %108 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %109 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 0, %111
  %113 = getelementptr i8, i8* %107, i64 %112
  %114 = call i32 @kunmap_atomic(i8* %113)
  store i32 0, i32* %7, align 4
  br label %272

115:                                              ; preds = %88
  %116 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %117 = call i32 @sg_page(%struct.scatterlist* %116)
  %118 = call i8* @kmap_atomic(i32 %117)
  %119 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %120 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %118, i64 %122
  store i8* %123, i8** %18, align 8
  br label %124

124:                                              ; preds = %115, %82
  %125 = load i8*, i8** %19, align 8
  %126 = load i32, i32* %20, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr i8, i8* %125, i64 %127
  %129 = bitcast i8* %128 to %struct.t10_pi_tuple*
  store %struct.t10_pi_tuple* %129, %struct.t10_pi_tuple** %15, align 8
  %130 = load i64, i64* %17, align 8
  %131 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %15, align 8
  %132 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %15, align 8
  %135 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %15, align 8
  %138 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @be32_to_cpu(i32 %139)
  %141 = call i32 @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %130, i32 %133, i64 %136, i32 %140)
  %142 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %15, align 8
  %143 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @T10_PI_APP_ESCAPE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %124
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %22, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %22, align 4
  br label %241

151:                                              ; preds = %124
  %152 = load i32, i32* %23, align 4
  %153 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %154 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %22, align 4
  %157 = sub nsw i32 %155, %156
  %158 = call i32 @min(i32 %152, i32 %157)
  store i32 %158, i32* %25, align 4
  %159 = load i8*, i8** %18, align 8
  %160 = load i32, i32* %22, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr i8, i8* %159, i64 %161
  %163 = load i32, i32* %25, align 4
  %164 = call i32 @crc_t10dif(i8* %162, i32 %163)
  store i32 %164, i32* %24, align 4
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %23, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %206

168:                                              ; preds = %151
  %169 = load i8*, i8** %18, align 8
  %170 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %171 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 0, %173
  %175 = getelementptr i8, i8* %169, i64 %174
  %176 = call i32 @kunmap_atomic(i8* %175)
  %177 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %178 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %177)
  store %struct.scatterlist* %178, %struct.scatterlist** %16, align 8
  %179 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %180 = icmp ne %struct.scatterlist* %179, null
  br i1 %180, label %190, label %181

181:                                              ; preds = %168
  %182 = load i8*, i8** %19, align 8
  %183 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %184 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = sub i64 0, %186
  %188 = getelementptr i8, i8* %182, i64 %187
  %189 = call i32 @kunmap_atomic(i8* %188)
  store i32 0, i32* %7, align 4
  br label %272

190:                                              ; preds = %168
  %191 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %192 = call i32 @sg_page(%struct.scatterlist* %191)
  %193 = call i8* @kmap_atomic(i32 %192)
  %194 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %195 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr i8, i8* %193, i64 %197
  store i8* %198, i8** %18, align 8
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %25, align 4
  %201 = sub i32 %199, %200
  store i32 %201, i32* %22, align 4
  %202 = load i32, i32* %24, align 4
  %203 = load i8*, i8** %18, align 8
  %204 = load i32, i32* %22, align 4
  %205 = call i32 @crc_t10dif_update(i32 %202, i8* %203, i32 %204)
  store i32 %205, i32* %24, align 4
  br label %210

206:                                              ; preds = %151
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %22, align 4
  %209 = add i32 %208, %207
  store i32 %209, i32* %22, align 4
  br label %210

210:                                              ; preds = %206, %190
  %211 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %212 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %15, align 8
  %213 = load i32, i32* %24, align 4
  %214 = load i64, i64* %17, align 8
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @sbc_dif_v1_verify(%struct.se_cmd* %211, %struct.t10_pi_tuple* %212, i32 %213, i64 %214, i32 %215)
  store i32 %216, i32* %21, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %210
  %220 = load i8*, i8** %18, align 8
  %221 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %222 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = sub i64 0, %224
  %226 = getelementptr i8, i8* %220, i64 %225
  %227 = call i32 @kunmap_atomic(i8* %226)
  %228 = load i8*, i8** %19, align 8
  %229 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %230 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = sub i64 0, %232
  %234 = getelementptr i8, i8* %228, i64 %233
  %235 = call i32 @kunmap_atomic(i8* %234)
  %236 = load i64, i64* %17, align 8
  %237 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %238 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  %239 = load i32, i32* %21, align 4
  store i32 %239, i32* %7, align 4
  br label %272

240:                                              ; preds = %210
  br label %241

241:                                              ; preds = %240, %147
  %242 = load i64, i64* %17, align 8
  %243 = add nsw i64 %242, 1
  store i64 %243, i64* %17, align 8
  %244 = load i32, i32* %11, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %11, align 4
  br label %246

246:                                              ; preds = %241
  %247 = load i32, i32* %20, align 4
  %248 = sext i32 %247 to i64
  %249 = add i64 %248, 16
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %20, align 4
  br label %67

251:                                              ; preds = %80
  store i32 0, i32* %13, align 4
  %252 = load i8*, i8** %18, align 8
  %253 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %254 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = sub i64 0, %256
  %258 = getelementptr i8, i8* %252, i64 %257
  %259 = call i32 @kunmap_atomic(i8* %258)
  %260 = load i8*, i8** %19, align 8
  %261 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %262 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = sub i64 0, %264
  %266 = getelementptr i8, i8* %260, i64 %265
  %267 = call i32 @kunmap_atomic(i8* %266)
  br label %268

268:                                              ; preds = %251
  %269 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %270 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %269)
  store %struct.scatterlist* %270, %struct.scatterlist** %12, align 8
  br label %37

271:                                              ; preds = %47
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %271, %219, %181, %106
  %273 = load i32, i32* %7, align 4
  ret i32 %273
}

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i64, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @crc_t10dif(i8*, i32) #1

declare dso_local i32 @crc_t10dif_update(i32, i8*, i32) #1

declare dso_local i32 @sbc_dif_v1_verify(%struct.se_cmd*, %struct.t10_pi_tuple*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
