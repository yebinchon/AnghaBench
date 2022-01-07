; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_stop_queued_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_stop_queued_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queue = type { i32, i32, %struct.sdebug_queued_cmd* }
%struct.sdebug_queued_cmd = type { %struct.sdebug_defer*, %struct.scsi_cmnd* }
%struct.sdebug_defer = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sdebug_dev_info = type { i32 }

@sdebug_q_arr = common dso_local global %struct.sdebug_queue* null, align 8
@submit_queues = common dso_local global i32 0, align 4
@sdebug_max_queue = common dso_local global i32 0, align 4
@retired_max_queue = common dso_local global i32 0, align 4
@SDEB_DEFER_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @stop_queued_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_queued_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdebug_queue*, align 8
  %11 = alloca %struct.sdebug_queued_cmd*, align 8
  %12 = alloca %struct.sdebug_dev_info*, align 8
  %13 = alloca %struct.sdebug_defer*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.sdebug_queue*, %struct.sdebug_queue** @sdebug_q_arr, align 8
  store %struct.sdebug_queue* %14, %struct.sdebug_queue** %10, align 8
  br label %15

15:                                               ; preds = %110, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @submit_queues, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %115

19:                                               ; preds = %15
  %20 = load %struct.sdebug_queue*, %struct.sdebug_queue** %10, align 8
  %21 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* @sdebug_max_queue, align 4
  store i32 %24, i32* %7, align 4
  %25 = call i32 @atomic_read(i32* @retired_max_queue)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %19
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %102, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %105

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sdebug_queue*, %struct.sdebug_queue** %10, align 8
  %39 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @test_bit(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %101

43:                                               ; preds = %36
  %44 = load %struct.sdebug_queue*, %struct.sdebug_queue** %10, align 8
  %45 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %44, i32 0, i32 2
  %46 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %46, i64 %48
  store %struct.sdebug_queued_cmd* %49, %struct.sdebug_queued_cmd** %11, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %51 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %11, align 8
  %52 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %51, i32 0, i32 1
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %52, align 8
  %54 = icmp ne %struct.scsi_cmnd* %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %102

56:                                               ; preds = %43
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.sdebug_dev_info*
  store %struct.sdebug_dev_info* %62, %struct.sdebug_dev_info** %12, align 8
  %63 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %12, align 8
  %64 = icmp ne %struct.sdebug_dev_info* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %12, align 8
  %67 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %66, i32 0, i32 0
  %68 = call i32 @atomic_dec(i32* %67)
  br label %69

69:                                               ; preds = %65, %56
  %70 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %11, align 8
  %71 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %70, i32 0, i32 1
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %71, align 8
  %72 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %11, align 8
  %73 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %72, i32 0, i32 0
  %74 = load %struct.sdebug_defer*, %struct.sdebug_defer** %73, align 8
  store %struct.sdebug_defer* %74, %struct.sdebug_defer** %13, align 8
  %75 = load %struct.sdebug_defer*, %struct.sdebug_defer** %13, align 8
  %76 = icmp ne %struct.sdebug_defer* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.sdebug_defer*, %struct.sdebug_defer** %13, align 8
  %79 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i8*, i8** @SDEB_DEFER_NONE, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.sdebug_defer*, %struct.sdebug_defer** %13, align 8
  %84 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %88

85:                                               ; preds = %69
  %86 = load i8*, i8** @SDEB_DEFER_NONE, align 8
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.sdebug_queue*, %struct.sdebug_queue** %10, align 8
  %90 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %89, i32 0, i32 0
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.sdebug_defer*, %struct.sdebug_defer** %13, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @stop_qc_helper(%struct.sdebug_defer* %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.sdebug_queue*, %struct.sdebug_queue** %10, align 8
  %98 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @clear_bit(i32 %96, i32 %99)
  store i32 1, i32* %2, align 4
  br label %116

101:                                              ; preds = %36
  br label %102

102:                                              ; preds = %101, %55
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %32

105:                                              ; preds = %32
  %106 = load %struct.sdebug_queue*, %struct.sdebug_queue** %10, align 8
  %107 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %106, i32 0, i32 0
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  br label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  %113 = load %struct.sdebug_queue*, %struct.sdebug_queue** %10, align 8
  %114 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %113, i32 1
  store %struct.sdebug_queue* %114, %struct.sdebug_queue** %10, align 8
  br label %15

115:                                              ; preds = %15
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %88
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

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
