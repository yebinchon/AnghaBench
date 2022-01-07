; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_alloc_target_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_alloc_target_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgt_queue = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvmet_fc_tgt_assoc* }
%struct.nvmet_fc_tgt_assoc = type { %struct.TYPE_5__*, %struct.nvmet_fc_tgt_queue**, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NVMET_NR_QUEUES = common dso_local global i64 0, align 8
@fod = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ntfc%d.%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvmet_fc_tgt_queue* (%struct.nvmet_fc_tgt_assoc*, i64, i64)* @nvmet_fc_alloc_target_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvmet_fc_tgt_queue* @nvmet_fc_alloc_target_queue(%struct.nvmet_fc_tgt_assoc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.nvmet_fc_tgt_queue*, align 8
  %5 = alloca %struct.nvmet_fc_tgt_assoc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_fc_tgt_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nvmet_fc_tgt_assoc* %0, %struct.nvmet_fc_tgt_assoc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @NVMET_NR_QUEUES, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.nvmet_fc_tgt_queue* null, %struct.nvmet_fc_tgt_queue** %4, align 8
  br label %140

15:                                               ; preds = %3
  %16 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %17 = load i32, i32* @fod, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @struct_size(%struct.nvmet_fc_tgt_queue* %16, i32 %17, i64 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.nvmet_fc_tgt_queue* @kzalloc(i32 %19, i32 %20)
  store %struct.nvmet_fc_tgt_queue* %21, %struct.nvmet_fc_tgt_queue** %8, align 8
  %22 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %23 = icmp ne %struct.nvmet_fc_tgt_queue* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store %struct.nvmet_fc_tgt_queue* null, %struct.nvmet_fc_tgt_queue** %4, align 8
  br label %140

25:                                               ; preds = %15
  %26 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %27 = call i32 @nvmet_fc_tgt_a_get(%struct.nvmet_fc_tgt_assoc* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %137

30:                                               ; preds = %25
  %31 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %32 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %38 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %36, i32 %39, i64 %40)
  %42 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %43 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %45 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %30
  br label %134

49:                                               ; preds = %30
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %52 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %55 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %57 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %58 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %57, i32 0, i32 13
  store %struct.nvmet_fc_tgt_assoc* %56, %struct.nvmet_fc_tgt_assoc** %58, align 8
  %59 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %60 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %59, i32 0, i32 12
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %63 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %62, i32 0, i32 11
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %66 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %65, i32 0, i32 10
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %69 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %68, i32 0, i32 9
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  %71 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %72 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %71, i32 0, i32 8
  %73 = call i32 @atomic_set(i32* %72, i32 0)
  %74 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %75 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %74, i32 0, i32 7
  %76 = call i32 @atomic_set(i32* %75, i32 1)
  %77 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %78 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %77, i32 0, i32 6
  %79 = call i32 @atomic_set(i32* %78, i32 0)
  %80 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %81 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %80, i32 0, i32 5
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %84 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %83, i32 0, i32 4
  %85 = call i32 @kref_init(i32* %84)
  %86 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %87 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %90 = call i32 @nvmet_fc_prep_fcp_iodlist(%struct.TYPE_5__* %88, %struct.nvmet_fc_tgt_queue* %89)
  %91 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %92 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %91, i32 0, i32 3
  %93 = call i32 @nvmet_sq_init(i32* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %49
  br label %124

97:                                               ; preds = %49
  %98 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %99 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %98, i32 0, i32 1
  %100 = load %struct.nvmet_fc_tgt_queue**, %struct.nvmet_fc_tgt_queue*** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %100, i64 %101
  %103 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %102, align 8
  %104 = call i32 @WARN_ON(%struct.nvmet_fc_tgt_queue* %103)
  %105 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %106 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @spin_lock_irqsave(i32* %108, i64 %109)
  %111 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %112 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %113 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %112, i32 0, i32 1
  %114 = load %struct.nvmet_fc_tgt_queue**, %struct.nvmet_fc_tgt_queue*** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = getelementptr inbounds %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %114, i64 %115
  store %struct.nvmet_fc_tgt_queue* %111, %struct.nvmet_fc_tgt_queue** %116, align 8
  %117 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %118 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  store %struct.nvmet_fc_tgt_queue* %123, %struct.nvmet_fc_tgt_queue** %4, align 8
  br label %140

124:                                              ; preds = %96
  %125 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %126 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %129 = call i32 @nvmet_fc_destroy_fcp_iodlist(%struct.TYPE_5__* %127, %struct.nvmet_fc_tgt_queue* %128)
  %130 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %131 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @destroy_workqueue(i32 %132)
  br label %134

134:                                              ; preds = %124, %48
  %135 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %5, align 8
  %136 = call i32 @nvmet_fc_tgt_a_put(%struct.nvmet_fc_tgt_assoc* %135)
  br label %137

137:                                              ; preds = %134, %29
  %138 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %8, align 8
  %139 = call i32 @kfree(%struct.nvmet_fc_tgt_queue* %138)
  store %struct.nvmet_fc_tgt_queue* null, %struct.nvmet_fc_tgt_queue** %4, align 8
  br label %140

140:                                              ; preds = %137, %97, %24, %14
  %141 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  ret %struct.nvmet_fc_tgt_queue* %141
}

declare dso_local %struct.nvmet_fc_tgt_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.nvmet_fc_tgt_queue*, i32, i64) #1

declare dso_local i32 @nvmet_fc_tgt_a_get(%struct.nvmet_fc_tgt_assoc*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @nvmet_fc_prep_fcp_iodlist(%struct.TYPE_5__*, %struct.nvmet_fc_tgt_queue*) #1

declare dso_local i32 @nvmet_sq_init(i32*) #1

declare dso_local i32 @WARN_ON(%struct.nvmet_fc_tgt_queue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvmet_fc_destroy_fcp_iodlist(%struct.TYPE_5__*, %struct.nvmet_fc_tgt_queue*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @nvmet_fc_tgt_a_put(%struct.nvmet_fc_tgt_assoc*) #1

declare dso_local i32 @kfree(%struct.nvmet_fc_tgt_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
