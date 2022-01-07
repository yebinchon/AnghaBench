; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { i64*, %struct.scm_blk_dev* }
%struct.scm_blk_dev = type { i32, i32 }

@nr_requests_per_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_request*)* @scm_request_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_request_requeue(%struct.scm_request* %0) #0 {
  %2 = alloca %struct.scm_request*, align 8
  %3 = alloca %struct.scm_blk_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.scm_request* %0, %struct.scm_request** %2, align 8
  %5 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %6 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %5, i32 0, i32 1
  %7 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %6, align 8
  store %struct.scm_blk_dev* %7, %struct.scm_blk_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @nr_requests_per_io, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %14 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %12, %8
  %22 = phi i1 [ false, %8 ], [ %20, %12 ]
  br i1 %22, label %23, label %35

23:                                               ; preds = %21
  %24 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %25 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @blk_mq_requeue_request(i64 %30, i32 0)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %8

35:                                               ; preds = %21
  %36 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %37 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %36, i32 0, i32 1
  %38 = call i32 @atomic_dec(i32* %37)
  %39 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %40 = call i32 @scm_request_done(%struct.scm_request* %39)
  %41 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %42 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @blk_mq_kick_requeue_list(i32 %43)
  ret void
}

declare dso_local i32 @blk_mq_requeue_request(i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @scm_request_done(%struct.scm_request*) #1

declare dso_local i32 @blk_mq_kick_requeue_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
