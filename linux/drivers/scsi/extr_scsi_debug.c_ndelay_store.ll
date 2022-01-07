; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_ndelay_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_ndelay_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queue = type { i32 }
%struct.device_driver = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@sdebug_ndelay = common dso_local global i32 0, align 4
@sdebug_q_arr = common dso_local global %struct.sdebug_queue* null, align 8
@submit_queues = common dso_local global i32 0, align 4
@sdebug_max_queue = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@JDELAY_OVERRIDDEN = common dso_local global i32 0, align 4
@DEF_JDELAY = common dso_local global i32 0, align 4
@sdebug_jdelay = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*, i64)* @ndelay_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndelay_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
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
  br i1 %14, label %15, label %73

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %18 = icmp eq i32 1, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 1000000000
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @sdebug_ndelay, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = call i32 @block_unblock_all_queues(i32 1)
  store i32 0, i32* %10, align 4
  %33 = load %struct.sdebug_queue*, %struct.sdebug_queue** @sdebug_q_arr, align 8
  store %struct.sdebug_queue* %33, %struct.sdebug_queue** %12, align 8
  br label %34

34:                                               ; preds = %51, %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @submit_queues, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.sdebug_queue*, %struct.sdebug_queue** %12, align 8
  %40 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @sdebug_max_queue, align 4
  %43 = call i32 @find_first_bit(i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @sdebug_max_queue, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %56

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct.sdebug_queue*, %struct.sdebug_queue** %12, align 8
  %55 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %54, i32 1
  store %struct.sdebug_queue* %55, %struct.sdebug_queue** %12, align 8
  br label %34

56:                                               ; preds = %47, %34
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* @sdebug_ndelay, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @JDELAY_OVERRIDDEN, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @DEF_JDELAY, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* @sdebug_jdelay, align 4
  br label %69

69:                                               ; preds = %67, %56
  %70 = call i32 @block_unblock_all_queues(i32 0)
  br label %71

71:                                               ; preds = %69, %25
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %22, %19, %15, %3
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %71
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @block_unblock_all_queues(i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
