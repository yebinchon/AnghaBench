; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_unset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32*, %struct.TYPE_3__*, %struct.lpfc_sli4_hdw_queue*, i64*, i32*, i64*, i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.lpfc_queue* }
%struct.lpfc_queue = type { i32 }
%struct.lpfc_sli4_hdw_queue = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_queue_unset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 14
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 14
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @lpfc_mq_destroy(%struct.lpfc_hba* %12, i64 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 13
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 13
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @lpfc_wq_destroy(%struct.lpfc_hba* %25, i64 %29)
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 12
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @lpfc_wq_destroy(%struct.lpfc_hba* %38, i64 %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 11
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @lpfc_rq_destroy(%struct.lpfc_hba* %51, i64 %55, i32 %59)
  br label %61

61:                                               ; preds = %50, %44
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 9
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %68, i64 %72)
  br label %74

74:                                               ; preds = %67, %61
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %81, i64 %85)
  br label %87

87:                                               ; preds = %80, %74
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %94, i64 %98)
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %170

105:                                              ; preds = %100
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = load i64*, i64** %108, align 8
  %110 = icmp ne i64* %109, null
  br i1 %110, label %111, label %141

111:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %137, %111
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %112
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 6
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @lpfc_rq_destroy(%struct.lpfc_hba* %119, i64 %127, i32 %135)
  br label %137

137:                                              ; preds = %118
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %112

140:                                              ; preds = %112
  br label %141

141:                                              ; preds = %140, %105
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i64*, i64** %144, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %169

147:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %165, %147
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %155, i64 %163)
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %148

168:                                              ; preds = %148
  br label %169

169:                                              ; preds = %168, %141
  br label %170

170:                                              ; preds = %169, %100
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  %174 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %173, align 8
  %175 = icmp ne %struct.lpfc_sli4_hdw_queue* %174, null
  br i1 %175, label %176, label %228

176:                                              ; preds = %170
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %201, %176
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %177
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  %187 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %187, i64 %189
  store %struct.lpfc_sli4_hdw_queue* %190, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %192 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %193 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @lpfc_wq_destroy(%struct.lpfc_hba* %191, i64 %194)
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %197 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %198 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %196, i64 %199)
  br label %201

201:                                              ; preds = %183
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  br label %177

204:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %224, %204
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %227

211:                                              ; preds = %205
  %212 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %213 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load %struct.lpfc_queue*, %struct.lpfc_queue** %219, align 8
  store %struct.lpfc_queue* %220, %struct.lpfc_queue** %4, align 8
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %222 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %223 = call i32 @lpfc_eq_destroy(%struct.lpfc_hba* %221, %struct.lpfc_queue* %222)
  br label %224

224:                                              ; preds = %211
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %5, align 4
  br label %205

227:                                              ; preds = %205
  br label %228

228:                                              ; preds = %227, %170
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %230 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 @kfree(i32* %232)
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %235 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  store i32* null, i32** %236, align 8
  %237 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %238 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  store i64 0, i64* %239, align 8
  ret void
}

declare dso_local i32 @lpfc_mq_destroy(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_wq_destroy(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_rq_destroy(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @lpfc_cq_destroy(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_eq_destroy(%struct.lpfc_hba*, %struct.lpfc_queue*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
