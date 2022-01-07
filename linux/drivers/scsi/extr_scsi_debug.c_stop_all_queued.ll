; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_stop_all_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_stop_all_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queue = type { i32, i32, %struct.sdebug_queued_cmd* }
%struct.sdebug_queued_cmd = type { %struct.sdebug_defer*, %struct.TYPE_4__* }
%struct.sdebug_defer = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sdebug_dev_info = type { i32 }

@sdebug_q_arr = common dso_local global %struct.sdebug_queue* null, align 8
@submit_queues = common dso_local global i32 0, align 4
@SDEBUG_CANQUEUE = common dso_local global i32 0, align 4
@SDEB_DEFER_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stop_all_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_all_queued() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdebug_queue*, align 8
  %6 = alloca %struct.sdebug_queued_cmd*, align 8
  %7 = alloca %struct.sdebug_dev_info*, align 8
  %8 = alloca %struct.sdebug_defer*, align 8
  store i32 0, i32* %2, align 4
  %9 = load %struct.sdebug_queue*, %struct.sdebug_queue** @sdebug_q_arr, align 8
  store %struct.sdebug_queue* %9, %struct.sdebug_queue** %5, align 8
  br label %10

10:                                               ; preds = %102, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @submit_queues, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %107

14:                                               ; preds = %10
  %15 = load %struct.sdebug_queue*, %struct.sdebug_queue** %5, align 8
  %16 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %94, %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SDEBUG_CANQUEUE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.sdebug_queue*, %struct.sdebug_queue** %5, align 8
  %26 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @test_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %93

30:                                               ; preds = %23
  %31 = load %struct.sdebug_queue*, %struct.sdebug_queue** %5, align 8
  %32 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %31, i32 0, i32 2
  %33 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %33, i64 %35
  store %struct.sdebug_queued_cmd* %36, %struct.sdebug_queued_cmd** %6, align 8
  %37 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp eq %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %94

42:                                               ; preds = %30
  %43 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.sdebug_dev_info*
  store %struct.sdebug_dev_info* %50, %struct.sdebug_dev_info** %7, align 8
  %51 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %52 = icmp ne %struct.sdebug_dev_info* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %55 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %54, i32 0, i32 0
  %56 = call i32 @atomic_dec(i32* %55)
  br label %57

57:                                               ; preds = %53, %42
  %58 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %58, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %59, align 8
  %60 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %60, i32 0, i32 0
  %62 = load %struct.sdebug_defer*, %struct.sdebug_defer** %61, align 8
  store %struct.sdebug_defer* %62, %struct.sdebug_defer** %8, align 8
  %63 = load %struct.sdebug_defer*, %struct.sdebug_defer** %8, align 8
  %64 = icmp ne %struct.sdebug_defer* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.sdebug_defer*, %struct.sdebug_defer** %8, align 8
  %67 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %4, align 4
  %69 = load i8*, i8** @SDEB_DEFER_NONE, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.sdebug_defer*, %struct.sdebug_defer** %8, align 8
  %72 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %76

73:                                               ; preds = %57
  %74 = load i8*, i8** @SDEB_DEFER_NONE, align 8
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.sdebug_queue*, %struct.sdebug_queue** %5, align 8
  %78 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %77, i32 0, i32 0
  %79 = load i64, i64* %1, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.sdebug_defer*, %struct.sdebug_defer** %8, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @stop_qc_helper(%struct.sdebug_defer* %81, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.sdebug_queue*, %struct.sdebug_queue** %5, align 8
  %86 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clear_bit(i32 %84, i32 %87)
  %89 = load %struct.sdebug_queue*, %struct.sdebug_queue** %5, align 8
  %90 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %89, i32 0, i32 0
  %91 = load i64, i64* %1, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %76, %23
  br label %94

94:                                               ; preds = %93, %41
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %19

97:                                               ; preds = %19
  %98 = load %struct.sdebug_queue*, %struct.sdebug_queue** %5, align 8
  %99 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %98, i32 0, i32 0
  %100 = load i64, i64* %1, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %2, align 4
  %105 = load %struct.sdebug_queue*, %struct.sdebug_queue** %5, align 8
  %106 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %105, i32 1
  store %struct.sdebug_queue* %106, %struct.sdebug_queue** %5, align 8
  br label %10

107:                                              ; preds = %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @stop_qc_helper(%struct.sdebug_defer*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
