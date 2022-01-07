; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { i64*, i32, %struct.scm_blk_dev* }
%struct.scm_blk_dev = type { i32 }

@nr_requests_per_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_request*)* @scm_request_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_request_finish(%struct.scm_request* %0) #0 {
  %2 = alloca %struct.scm_request*, align 8
  %3 = alloca %struct.scm_blk_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.scm_request* %0, %struct.scm_request** %2, align 8
  %6 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %7 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %6, i32 0, i32 2
  %8 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %7, align 8
  store %struct.scm_blk_dev* %8, %struct.scm_blk_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @nr_requests_per_io, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %15 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %13, %9
  %23 = phi i1 [ false, %9 ], [ %21, %13 ]
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  %25 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %26 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32* @blk_mq_rq_to_pdu(i64 %31)
  store i32* %32, i32** %4, align 8
  %33 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %34 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %38 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @blk_mq_complete_request(i64 %43)
  br label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %9

48:                                               ; preds = %22
  %49 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %50 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %49, i32 0, i32 0
  %51 = call i32 @atomic_dec(i32* %50)
  %52 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %53 = call i32 @scm_request_done(%struct.scm_request* %52)
  ret void
}

declare dso_local i32* @blk_mq_rq_to_pdu(i64) #1

declare dso_local i32 @blk_mq_complete_request(i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @scm_request_done(%struct.scm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
