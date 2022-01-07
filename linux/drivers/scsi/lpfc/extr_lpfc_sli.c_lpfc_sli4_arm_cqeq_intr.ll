; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_arm_cqeq_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_arm_cqeq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i64, %struct.lpfc_sli4_hba }
%struct.lpfc_sli4_hba = type { i64*, i32 (%struct.lpfc_hba.0*, i64, i32, i32)*, i32 (%struct.lpfc_hba.1*, %struct.lpfc_queue*, i32, i32)*, %struct.TYPE_2__*, %struct.lpfc_sli4_hdw_queue*, i64, i64, i64 }
%struct.lpfc_hba.0 = type opaque
%struct.lpfc_hba.1 = type opaque
%struct.lpfc_queue = type opaque
%struct.TYPE_2__ = type { %struct.lpfc_queue.2* }
%struct.lpfc_queue.2 = type { i32 }
%struct.lpfc_sli4_hdw_queue = type { i64 }

@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_sli4_arm_cqeq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_arm_cqeq_intr(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_sli4_hba*, align 8
  %5 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %6 = alloca %struct.lpfc_queue.2*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 4
  store %struct.lpfc_sli4_hba* %8, %struct.lpfc_sli4_hba** %4, align 8
  %9 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %9, i32 0, i32 1
  %11 = load i32 (%struct.lpfc_hba.0*, i64, i32, i32)*, i32 (%struct.lpfc_hba.0*, i64, i32, i32)** %10, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = bitcast %struct.lpfc_hba* %12 to %struct.lpfc_hba.0*
  %14 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %18 = call i32 %11(%struct.lpfc_hba.0* %13, i64 %16, i32 0, i32 %17)
  %19 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %19, i32 0, i32 1
  %21 = load i32 (%struct.lpfc_hba.0*, i64, i32, i32)*, i32 (%struct.lpfc_hba.0*, i64, i32, i32)** %20, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = bitcast %struct.lpfc_hba* %22 to %struct.lpfc_hba.0*
  %24 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %28 = call i32 %21(%struct.lpfc_hba.0* %23, i64 %26, i32 0, i32 %27)
  %29 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %1
  %34 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %34, i32 0, i32 1
  %36 = load i32 (%struct.lpfc_hba.0*, i64, i32, i32)*, i32 (%struct.lpfc_hba.0*, i64, i32, i32)** %35, align 8
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %38 = bitcast %struct.lpfc_hba* %37 to %struct.lpfc_hba.0*
  %39 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %43 = call i32 %36(%struct.lpfc_hba.0* %38, i64 %41, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %33, %1
  %45 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %45, i32 0, i32 4
  %47 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %46, align 8
  %48 = icmp ne %struct.lpfc_sli4_hdw_queue* %47, null
  br i1 %48, label %49, label %105

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %58 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %57, i32 0, i32 4
  %59 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %59, i64 %61
  store %struct.lpfc_sli4_hdw_queue* %62, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %63 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %63, i32 0, i32 1
  %65 = load i32 (%struct.lpfc_hba.0*, i64, i32, i32)*, i32 (%struct.lpfc_hba.0*, i64, i32, i32)** %64, align 8
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = bitcast %struct.lpfc_hba* %66 to %struct.lpfc_hba.0*
  %68 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %72 = call i32 %65(%struct.lpfc_hba.0* %67, i64 %70, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %50

76:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %101, %76
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %85 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %90, align 8
  store %struct.lpfc_queue.2* %91, %struct.lpfc_queue.2** %6, align 8
  %92 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %93 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %92, i32 0, i32 2
  %94 = load i32 (%struct.lpfc_hba.1*, %struct.lpfc_queue*, i32, i32)*, i32 (%struct.lpfc_hba.1*, %struct.lpfc_queue*, i32, i32)** %93, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %96 = bitcast %struct.lpfc_hba* %95 to %struct.lpfc_hba.1*
  %97 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %6, align 8
  %98 = bitcast %struct.lpfc_queue.2* %97 to %struct.lpfc_queue*
  %99 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %100 = call i32 %94(%struct.lpfc_hba.1* %96, %struct.lpfc_queue* %98, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %83
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %77

104:                                              ; preds = %77
  br label %105

105:                                              ; preds = %104, %44
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %132, %110
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %111
  %118 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %119 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %118, i32 0, i32 1
  %120 = load i32 (%struct.lpfc_hba.0*, i64, i32, i32)*, i32 (%struct.lpfc_hba.0*, i64, i32, i32)** %119, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %122 = bitcast %struct.lpfc_hba* %121 to %struct.lpfc_hba.0*
  %123 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %124 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %131 = call i32 %120(%struct.lpfc_hba.0* %122, i64 %129, i32 0, i32 %130)
  br label %132

132:                                              ; preds = %117
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %111

135:                                              ; preds = %111
  br label %136

136:                                              ; preds = %135, %105
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
