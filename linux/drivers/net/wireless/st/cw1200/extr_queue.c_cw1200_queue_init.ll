; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_queue = type { i64, i64, i32, %struct.TYPE_2__*, i8*, i32, i32, i32, i32, i32, %struct.cw1200_queue_stats* }
%struct.TYPE_2__ = type { i32 }
%struct.cw1200_queue_stats = type { i64 }

@cw1200_queue_gc = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_queue_init(%struct.cw1200_queue* %0, %struct.cw1200_queue_stats* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cw1200_queue*, align 8
  %8 = alloca %struct.cw1200_queue_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.cw1200_queue* %0, %struct.cw1200_queue** %7, align 8
  store %struct.cw1200_queue_stats* %1, %struct.cw1200_queue_stats** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %14 = call i32 @memset(%struct.cw1200_queue* %13, i32 0, i32 72)
  %15 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %8, align 8
  %16 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %17 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %16, i32 0, i32 10
  store %struct.cw1200_queue_stats* %15, %struct.cw1200_queue_stats** %17, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %20 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %23 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %26 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %28 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %27, i32 0, i32 8
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %31 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %30, i32 0, i32 7
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %34 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %37 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %36, i32 0, i32 6
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %40 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %39, i32 0, i32 5
  %41 = load i32, i32* @cw1200_queue_gc, align 4
  %42 = call i32 @timer_setup(i32* %40, i32 %41, i32 0)
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kcalloc(i64 %43, i32 4, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_2__*
  %47 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %48 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %47, i32 0, i32 3
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %48, align 8
  %49 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %50 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %5
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %96

56:                                               ; preds = %5
  %57 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %8, align 8
  %58 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kcalloc(i64 %59, i32 4, i32 %60)
  %62 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %63 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %65 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %56
  %69 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %70 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = call i32 @kfree(%struct.TYPE_2__* %71)
  %73 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %74 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %73, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %74, align 8
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %96

77:                                               ; preds = %56
  store i64 0, i64* %12, align 8
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %84 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.cw1200_queue*, %struct.cw1200_queue** %7, align 8
  %90 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %89, i32 0, i32 2
  %91 = call i32 @list_add_tail(i32* %88, i32* %90)
  br label %92

92:                                               ; preds = %82
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %78

95:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %68, %53
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.cw1200_queue*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
