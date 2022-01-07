; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { %struct.msb* }
%struct.msb = type { i32, i64 }

@nr_requests_per_io = common dso_local global i32 0, align 4
@MSB_FLAG_IDA = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@aidaw_pool = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@inactive_requests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_request*)* @scm_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_request_done(%struct.scm_request* %0) #0 {
  %2 = alloca %struct.scm_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.msb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.scm_request* %0, %struct.scm_request** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %54, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @nr_requests_per_io, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %13 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi i1 [ false, %7 ], [ %19, %11 ]
  br i1 %21, label %22, label %57

22:                                               ; preds = %20
  %23 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %24 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.msb*, %struct.msb** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.msb, %struct.msb* %27, i64 %29
  store %struct.msb* %30, %struct.msb** %4, align 8
  %31 = load %struct.msb*, %struct.msb** %4, align 8
  %32 = getelementptr inbounds %struct.msb, %struct.msb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load %struct.msb*, %struct.msb** %4, align 8
  %35 = getelementptr inbounds %struct.msb, %struct.msb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MSB_FLAG_IDA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %22
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = call i64 @IS_ALIGNED(i64 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @virt_to_page(i64 %49)
  %51 = load i32, i32* @aidaw_pool, align 4
  %52 = call i32 @mempool_free(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %43, %40, %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %7

57:                                               ; preds = %20
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %58)
  %60 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %61 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %60, i32 0, i32 0
  %62 = call i32 @list_add(i32* %61, i32* @inactive_requests)
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %63)
  ret void
}

declare dso_local i64 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @mempool_free(i32, i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
