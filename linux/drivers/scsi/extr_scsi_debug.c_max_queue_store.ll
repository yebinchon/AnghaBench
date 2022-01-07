; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_max_queue_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_max_queue_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queue = type { i32 }
%struct.device_driver = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SDEBUG_CANQUEUE = common dso_local global i32 0, align 4
@sdebug_q_arr = common dso_local global %struct.sdebug_queue* null, align 8
@submit_queues = common dso_local global i32 0, align 4
@sdebug_max_queue = common dso_local global i32 0, align 4
@retired_max_queue = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @max_queue_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max_queue_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sdebug_queue*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  %18 = icmp eq i32 1, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SDEBUG_CANQUEUE, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  %27 = call i32 @block_unblock_all_queues(i32 1)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %28 = load %struct.sdebug_queue*, %struct.sdebug_queue** @sdebug_q_arr, align 8
  store %struct.sdebug_queue* %28, %struct.sdebug_queue** %12, align 8
  br label %29

29:                                               ; preds = %45, %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @submit_queues, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.sdebug_queue*, %struct.sdebug_queue** %12, align 8
  %35 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SDEBUG_CANQUEUE, align 4
  %38 = call i32 @find_last_bit(i32 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load %struct.sdebug_queue*, %struct.sdebug_queue** %12, align 8
  %49 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %48, i32 1
  store %struct.sdebug_queue* %49, %struct.sdebug_queue** %12, align 8
  br label %29

50:                                               ; preds = %29
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* @sdebug_max_queue, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SDEBUG_CANQUEUE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @atomic_set(i32* @retired_max_queue, i32 0)
  br label %68

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @atomic_set(i32* @retired_max_queue, i32 %63)
  br label %67

65:                                               ; preds = %57
  %66 = call i32 @atomic_set(i32* @retired_max_queue, i32 0)
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %55
  %69 = call i32 @block_unblock_all_queues(i32 0)
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %4, align 8
  br label %74

71:                                               ; preds = %22, %19, %15, %3
  %72 = load i64, i64* @EINVAL, align 8
  %73 = sub i64 0, %72
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @block_unblock_all_queues(i32) #1

declare dso_local i32 @find_last_bit(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
