; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.data_queue*, i32)*, i32 (%struct.data_queue*)* }

@QID_AC_VO = common dso_local global i64 0, align 8
@QID_AC_VI = common dso_local global i64 0, align 8
@QID_AC_BE = common dso_local global i64 0, align 8
@QID_AC_BK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Queue %d failed to flush\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00queue_flush_queue(%struct.data_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %7 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QID_AC_VO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %13 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QID_AC_VI, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %19 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QID_AC_BE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %25 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QID_AC_BK, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %17, %11, %2
  %30 = phi i1 [ true, %17 ], [ true, %11 ], [ true, %2 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %33 = call i64 @rt2x00queue_empty(%struct.data_queue* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %95

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %44 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32 (%struct.data_queue*)*, i32 (%struct.data_queue*)** %50, align 8
  %52 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %53 = call i32 %51(%struct.data_queue* %52)
  br label %54

54:                                               ; preds = %42, %39, %36
  %55 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %56 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.data_queue*, i32)*, i32 (%struct.data_queue*, i32)** %62, align 8
  %64 = call i64 @likely(i32 (%struct.data_queue*, i32)* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %54
  %67 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %68 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (%struct.data_queue*, i32)*, i32 (%struct.data_queue*, i32)** %74, align 8
  %76 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 %75(%struct.data_queue* %76, i32 %77)
  br label %79

79:                                               ; preds = %66, %54
  %80 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %81 = call i64 @rt2x00queue_empty(%struct.data_queue* %80)
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %89 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %92 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @rt2x00_warn(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %35, %87, %79
  ret void
}

declare dso_local i64 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local i64 @likely(i32 (%struct.data_queue*, i32)*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_warn(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
