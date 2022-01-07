; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_alloc_io_wq_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_alloc_io_wq_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.lpfc_queue*, %struct.lpfc_queue* }
%struct.lpfc_queue = type { i32, i32, i32, i32 }

@LPFC_FIND_BY_HDWQ = common dso_local global i32 0, align 4
@LPFC_EXPANDED_PAGE_SIZE = common dso_local global i32 0, align 4
@LPFC_CQE_EXP_COUNT = common dso_local global i32 0, align 4
@LPFC_DEFAULT_PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"0499 Failed allocate fast-path IO CQ (%d)\0A\00", align 1
@LPFC_WQE128_SIZE = common dso_local global i32 0, align 4
@LPFC_WQE_EXP_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"0503 Failed allocate fast-path IO WQ (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_alloc_io_wq_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_alloc_io_wq_cq(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @LPFC_FIND_BY_HDWQ, align 4
  %12 = call i32 @lpfc_find_cpu_handle(%struct.lpfc_hba* %9, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = load i32, i32* @LPFC_EXPANDED_PAGE_SIZE, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LPFC_CQE_EXP_COUNT, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %18, i32 %19, i32 %23, i32 %24, i32 %25)
  store %struct.lpfc_queue* %26, %struct.lpfc_queue** %6, align 8
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %29 = load i32, i32* @LPFC_DEFAULT_PAGE_SIZE, align 4
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %28, i32 %29, i32 %33, i32 %37, i32 %38)
  store %struct.lpfc_queue* %39, %struct.lpfc_queue** %6, align 8
  br label %40

40:                                               ; preds = %27, %17
  %41 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %42 = icmp ne %struct.lpfc_queue* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load i32, i32* @LOG_INIT, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 1, i32* %3, align 4
  br label %135

49:                                               ; preds = %40
  %50 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %54 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store %struct.lpfc_queue* %58, %struct.lpfc_queue** %66, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %49
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @LPFC_WQE128_SIZE, align 4
  br label %83

78:                                               ; preds = %71
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi i32 [ %77, %76 ], [ %82, %78 ]
  store i32 %84, i32* %7, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %86 = load i32, i32* @LPFC_EXPANDED_PAGE_SIZE, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @LPFC_WQE_EXP_COUNT, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store %struct.lpfc_queue* %90, %struct.lpfc_queue** %6, align 8
  br label %104

91:                                               ; preds = %49
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %93 = load i32, i32* @LPFC_DEFAULT_PAGE_SIZE, align 4
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %92, i32 %93, i32 %97, i32 %101, i32 %102)
  store %struct.lpfc_queue* %103, %struct.lpfc_queue** %6, align 8
  br label %104

104:                                              ; preds = %91, %83
  %105 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %106 = icmp ne %struct.lpfc_queue* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %109 = load i32, i32* @KERN_ERR, align 4
  %110 = load i32, i32* @LOG_INIT, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  store i32 1, i32* %3, align 4
  br label %135

113:                                              ; preds = %104
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %116 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %119 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store %struct.lpfc_queue* %120, %struct.lpfc_queue** %128, align 8
  %129 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %130 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %129, i32 0, i32 3
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = call i32 @list_add_tail(i32* %130, i32* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %113, %107, %43
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @lpfc_find_cpu_handle(%struct.lpfc_hba*, i32, i32) #1

declare dso_local %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
