; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_rq_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_rq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i64, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.lpfc_rqe = type { i32 }
%struct.lpfc_register = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@LPFC_HRQ = common dso_local global i64 0, align 8
@LPFC_DRQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LPFC_DB_RING_FORMAT = common dso_local global i64 0, align 8
@lpfc_rq_db_ring_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_rq_db_ring_fm_id = common dso_local global i32 0, align 4
@LPFC_DB_LIST_FORMAT = common dso_local global i64 0, align 8
@lpfc_rq_db_list_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_rq_db_list_fm_index = common dso_local global i32 0, align 4
@lpfc_rq_db_list_fm_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_rq_put(%struct.lpfc_queue* %0, %struct.lpfc_queue* %1, %struct.lpfc_rqe* %2, %struct.lpfc_rqe* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca %struct.lpfc_queue*, align 8
  %8 = alloca %struct.lpfc_rqe*, align 8
  %9 = alloca %struct.lpfc_rqe*, align 8
  %10 = alloca %struct.lpfc_rqe*, align 8
  %11 = alloca %struct.lpfc_rqe*, align 8
  %12 = alloca %struct.lpfc_register, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %6, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %7, align 8
  store %struct.lpfc_rqe* %2, %struct.lpfc_rqe** %8, align 8
  store %struct.lpfc_rqe* %3, %struct.lpfc_rqe** %9, align 8
  %15 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %16 = icmp ne %struct.lpfc_queue* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %23 = icmp ne %struct.lpfc_queue* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %173

31:                                               ; preds = %21
  %32 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  %38 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.lpfc_rqe* @lpfc_sli4_qe(%struct.lpfc_queue* %38, i32 %39)
  store %struct.lpfc_rqe* %40, %struct.lpfc_rqe** %10, align 8
  %41 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call %struct.lpfc_rqe* @lpfc_sli4_qe(%struct.lpfc_queue* %41, i32 %42)
  store %struct.lpfc_rqe* %43, %struct.lpfc_rqe** %11, align 8
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LPFC_HRQ, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %31
  %50 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %51 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LPFC_DRQ, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %31
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %173

58:                                               ; preds = %49
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %173

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = srem i32 %67, %70
  %72 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %173

79:                                               ; preds = %65
  %80 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %8, align 8
  %81 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %10, align 8
  %82 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %83 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_rqe* %80, %struct.lpfc_rqe* %81, i32 %84)
  %86 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %9, align 8
  %87 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %11, align 8
  %88 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_rqe* %86, %struct.lpfc_rqe* %87, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %95 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = srem i32 %93, %96
  %98 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %99 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  %102 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %103 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = srem i32 %101, %104
  %106 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %107 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %109 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %113 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %116 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = srem i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %171, label %120

120:                                              ; preds = %79
  %121 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %12, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %123 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @LPFC_DB_RING_FORMAT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  %128 = load i32, i32* @lpfc_rq_db_ring_fm_num_posted, align 4
  %129 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %130 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bf_set(i32 %128, %struct.lpfc_register* %12, i32 %131)
  %133 = load i32, i32* @lpfc_rq_db_ring_fm_id, align 4
  %134 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %135 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @bf_set(i32 %133, %struct.lpfc_register* %12, i32 %136)
  br label %164

138:                                              ; preds = %120
  %139 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %140 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @LPFC_DB_LIST_FORMAT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %138
  %145 = load i32, i32* @lpfc_rq_db_list_fm_num_posted, align 4
  %146 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %147 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @bf_set(i32 %145, %struct.lpfc_register* %12, i32 %148)
  %150 = load i32, i32* @lpfc_rq_db_list_fm_index, align 4
  %151 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %152 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @bf_set(i32 %150, %struct.lpfc_register* %12, i32 %153)
  %155 = load i32, i32* @lpfc_rq_db_list_fm_id, align 4
  %156 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %157 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @bf_set(i32 %155, %struct.lpfc_register* %12, i32 %158)
  br label %163

160:                                              ; preds = %138
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %5, align 4
  br label %173

163:                                              ; preds = %144
  br label %164

164:                                              ; preds = %163, %127
  %165 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %12, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %168 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @writel(i64 %166, i32 %169)
  br label %171

171:                                              ; preds = %164, %79
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %171, %160, %76, %62, %55, %28
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.lpfc_rqe* @lpfc_sli4_qe(%struct.lpfc_queue*, i32) #1

declare dso_local i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_rqe*, %struct.lpfc_rqe*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
