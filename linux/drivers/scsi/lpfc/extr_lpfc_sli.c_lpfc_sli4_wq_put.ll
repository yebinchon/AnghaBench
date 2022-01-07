; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_wq_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_wq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, %struct.TYPE_6__*, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%union.lpfc_wqe128 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.lpfc_register }
%struct.lpfc_register = type { i64 }
%union.lpfc_wqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@wqe_wqec = common dso_local global i32 0, align 4
@LPFC_SLI4_PHWQ_ENABLED = common dso_local global i32 0, align 4
@wqe_wqid = common dso_local global i32 0, align 4
@LPFC_DB_LIST_FORMAT = common dso_local global i64 0, align 8
@lpfc_if6_wq_db_list_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_if6_wq_db_list_fm_dpp = common dso_local global i32 0, align 4
@lpfc_if6_wq_db_list_fm_dpp_id = common dso_local global i32 0, align 4
@lpfc_if6_wq_db_list_fm_id = common dso_local global i32 0, align 4
@lpfc_wq_db_list_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_wq_db_list_fm_id = common dso_local global i32 0, align 4
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_6 = common dso_local global i64 0, align 8
@lpfc_wq_db_list_fm_index = common dso_local global i32 0, align 4
@LPFC_DB_RING_FORMAT = common dso_local global i64 0, align 8
@lpfc_wq_db_ring_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_wq_db_ring_fm_id = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_queue*, %union.lpfc_wqe128*)* @lpfc_sli4_wq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_wq_put(%struct.lpfc_queue* %0, %union.lpfc_wqe128* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca %union.lpfc_wqe128*, align 8
  %6 = alloca %union.lpfc_wqe*, align 8
  %7 = alloca %struct.lpfc_register, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %4, align 8
  store %union.lpfc_wqe128* %1, %union.lpfc_wqe128** %5, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %14 = icmp ne %struct.lpfc_queue* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %229

22:                                               ; preds = %2
  %23 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %24 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %union.lpfc_wqe* @lpfc_sli4_qe(%struct.lpfc_queue* %23, i32 %26)
  store %union.lpfc_wqe* %27, %union.lpfc_wqe** %6, align 8
  %28 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %31, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %22
  %43 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %229

49:                                               ; preds = %22
  %50 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %55 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  %58 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = srem i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* @wqe_wqec, align 4
  %65 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %5, align 8
  %66 = bitcast %union.lpfc_wqe128* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @bf_set(i32 %64, %struct.lpfc_register* %67, i32 1)
  br label %75

69:                                               ; preds = %49
  %70 = load i32, i32* @wqe_wqec, align 4
  %71 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %5, align 8
  %72 = bitcast %union.lpfc_wqe128* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @bf_set(i32 %70, %struct.lpfc_register* %73, i32 0)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %77 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %76, i32 0, i32 10
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @LPFC_SLI4_PHWQ_ENABLED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load i32, i32* @wqe_wqid, align 4
  %86 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %5, align 8
  %87 = bitcast %union.lpfc_wqe128* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %90 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @bf_set(i32 %85, %struct.lpfc_register* %88, i32 %91)
  br label %93

93:                                               ; preds = %84, %75
  %94 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %5, align 8
  %95 = load %union.lpfc_wqe*, %union.lpfc_wqe** %6, align 8
  %96 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %97 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @lpfc_sli4_pcimem_bcopy(%union.lpfc_wqe128* %94, %union.lpfc_wqe* %95, i64 %98)
  %100 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %100, i32 0, i32 11
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %93
  %105 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %105, i32 0, i32 10
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %104
  %112 = load %union.lpfc_wqe*, %union.lpfc_wqe** %6, align 8
  %113 = bitcast %union.lpfc_wqe* %112 to i32*
  store i32* %113, i32** %11, align 8
  store i64 0, i64* %10, align 8
  br label %114

114:                                              ; preds = %132, %111
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %117 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load i32*, i32** %11, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = bitcast i32* %123 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %127 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @__raw_writel(i64 %125, i64 %130)
  br label %132

132:                                              ; preds = %120
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 8
  store i64 %134, i64* %10, align 8
  br label %114

135:                                              ; preds = %114
  br label %136

136:                                              ; preds = %135, %104, %93
  %137 = call i32 (...) @wmb()
  %138 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %139 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %9, align 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %145 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %148 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @LPFC_DB_LIST_FORMAT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %204

152:                                              ; preds = %136
  %153 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %154 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %153, i32 0, i32 11
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %152
  %158 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %159 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %158, i32 0, i32 10
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %157
  %165 = load i32, i32* @lpfc_if6_wq_db_list_fm_num_posted, align 4
  %166 = call i32 @bf_set(i32 %165, %struct.lpfc_register* %7, i32 1)
  %167 = load i32, i32* @lpfc_if6_wq_db_list_fm_dpp, align 4
  %168 = call i32 @bf_set(i32 %167, %struct.lpfc_register* %7, i32 1)
  %169 = load i32, i32* @lpfc_if6_wq_db_list_fm_dpp_id, align 4
  %170 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %171 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @bf_set(i32 %169, %struct.lpfc_register* %7, i32 %172)
  %174 = load i32, i32* @lpfc_if6_wq_db_list_fm_id, align 4
  %175 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %176 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @bf_set(i32 %174, %struct.lpfc_register* %7, i32 %177)
  br label %203

179:                                              ; preds = %157, %152
  %180 = load i32, i32* @lpfc_wq_db_list_fm_num_posted, align 4
  %181 = call i32 @bf_set(i32 %180, %struct.lpfc_register* %7, i32 1)
  %182 = load i32, i32* @lpfc_wq_db_list_fm_id, align 4
  %183 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %184 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @bf_set(i32 %182, %struct.lpfc_register* %7, i32 %185)
  %187 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %188 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %189 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %188, i32 0, i32 10
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = call i64 @bf_get(i32 %187, i32* %192)
  store i64 %193, i64* %12, align 8
  %194 = load i64, i64* %12, align 8
  %195 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_6, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %179
  %198 = load i32, i32* @lpfc_wq_db_list_fm_index, align 4
  %199 = load i64, i64* %8, align 8
  %200 = trunc i64 %199 to i32
  %201 = call i32 @bf_set(i32 %198, %struct.lpfc_register* %7, i32 %200)
  br label %202

202:                                              ; preds = %197, %179
  br label %203

203:                                              ; preds = %202, %164
  br label %222

204:                                              ; preds = %136
  %205 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %206 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %205, i32 0, i32 7
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @LPFC_DB_RING_FORMAT, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %204
  %211 = load i32, i32* @lpfc_wq_db_ring_fm_num_posted, align 4
  %212 = call i32 @bf_set(i32 %211, %struct.lpfc_register* %7, i32 1)
  %213 = load i32, i32* @lpfc_wq_db_ring_fm_id, align 4
  %214 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %215 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @bf_set(i32 %213, %struct.lpfc_register* %7, i32 %216)
  br label %221

218:                                              ; preds = %204
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %3, align 4
  br label %229

221:                                              ; preds = %210
  br label %222

222:                                              ; preds = %221, %203
  %223 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %226 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @writel(i64 %224, i32 %227)
  store i32 0, i32* %3, align 4
  br label %229

229:                                              ; preds = %222, %218, %42, %19
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %union.lpfc_wqe* @lpfc_sli4_qe(%struct.lpfc_queue*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @lpfc_sli4_pcimem_bcopy(%union.lpfc_wqe128*, %union.lpfc_wqe*, i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
