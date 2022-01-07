; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli4_process_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli4_process_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)* }
%struct.lpfc_hba.0 = type opaque
%struct.lpfc_queue = type { i32, i32, i32, i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_cqe = type opaque

@LPFC_QUEUE_NOARM = common dso_local global i32 0, align 4
@LPFC_NVMET_CQ_NOTIFY = common dso_local global i32 0, align 4
@HBA_NVMET_CQ_NOTIFY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"0369 No entry from completion queue qid=%d\0A\00", align 1
@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)*, i64*)* @__lpfc_sli4_process_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lpfc_sli4_process_cq(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)* %2, i64* %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.lpfc_cqe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %6, align 8
  store i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)* %2, i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %14 = load i64*, i64** %8, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %15, i32 0, i32 3
  %17 = call i64 @cmpxchg(i64* %16, i32 0, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %123

20:                                               ; preds = %4
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %22 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %21, i32 0, i32 6
  store i32 0, i32* %22, align 8
  %23 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %24 = call %struct.lpfc_cqe* @lpfc_sli4_cq_get(%struct.lpfc_queue* %23)
  store %struct.lpfc_cqe* %24, %struct.lpfc_cqe** %9, align 8
  br label %25

25:                                               ; preds = %78, %20
  %26 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %9, align 8
  %27 = icmp ne %struct.lpfc_cqe* %26, null
  br i1 %27, label %28, label %81

28:                                               ; preds = %25
  %29 = load i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)** %7, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %31 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %32 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %9, align 8
  %33 = call i32 %29(%struct.lpfc_hba* %30, %struct.lpfc_queue* %31, %struct.lpfc_cqe* %32)
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %37 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %38 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %9, align 8
  %39 = call i32 @__lpfc_sli4_consume_cqe(%struct.lpfc_hba* %36, %struct.lpfc_queue* %37, %struct.lpfc_cqe* %38)
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = srem i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %28
  br label %81

50:                                               ; preds = %28
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %53 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %50
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)** %60, align 8
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %63 = bitcast %struct.lpfc_hba* %62 to %struct.lpfc_hba.0*
  %64 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @LPFC_QUEUE_NOARM, align 4
  %67 = call i32 %61(%struct.lpfc_hba.0* %63, %struct.lpfc_queue* %64, i32 %65, i32 %66)
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %57, %50
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @LPFC_NVMET_CQ_NOTIFY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @HBA_NVMET_CQ_NOTIFY, align 4
  %74 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %75 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %68
  %79 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %80 = call %struct.lpfc_cqe* @lpfc_sli4_cq_get(%struct.lpfc_queue* %79)
  store %struct.lpfc_cqe* %80, %struct.lpfc_cqe** %9, align 8
  br label %25

81:                                               ; preds = %49, %25
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i64*, i64** %8, align 8
  store i64 1, i64* %88, align 8
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %87, %81
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %98 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %102 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %101, i32 0, i32 5
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %99
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %114 = load i32, i32* @KERN_INFO, align 4
  %115 = load i32, i32* @LOG_SLI, align 4
  %116 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %117 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %112, %99
  %121 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %122 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %19
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)** %126, align 8
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %129 = bitcast %struct.lpfc_hba* %128 to %struct.lpfc_hba.0*
  %130 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  br label %138

136:                                              ; preds = %123
  %137 = load i32, i32* @LPFC_QUEUE_NOARM, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = call i32 %127(%struct.lpfc_hba.0* %129, %struct.lpfc_queue* %130, i32 %131, i32 %139)
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i64 @cmpxchg(i64*, i32, i32) #1

declare dso_local %struct.lpfc_cqe* @lpfc_sli4_cq_get(%struct.lpfc_queue*) #1

declare dso_local i32 @__lpfc_sli4_consume_cqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
