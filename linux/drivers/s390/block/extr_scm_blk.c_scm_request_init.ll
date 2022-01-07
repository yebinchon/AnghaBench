; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_blk_dev = type { i32 }
%struct.scm_request = type { i32, i8*, i32, %struct.scm_blk_dev*, %struct.aob*, %struct.aob* }
%struct.aob = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.aob_rq_header = type { i32 }

@nr_requests_per_io = common dso_local global i32 0, align 4
@ARQB_CMD_MOVE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_blk_dev*, %struct.scm_request*)* @scm_request_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_request_init(%struct.scm_blk_dev* %0, %struct.scm_request* %1) #0 {
  %3 = alloca %struct.scm_blk_dev*, align 8
  %4 = alloca %struct.scm_request*, align 8
  %5 = alloca %struct.aob_rq_header*, align 8
  %6 = alloca %struct.aob*, align 8
  store %struct.scm_blk_dev* %0, %struct.scm_blk_dev** %3, align 8
  store %struct.scm_request* %1, %struct.scm_request** %4, align 8
  %7 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %8 = call %struct.aob_rq_header* @to_aobrq(%struct.scm_request* %7)
  store %struct.aob_rq_header* %8, %struct.aob_rq_header** %5, align 8
  %9 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %10 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %9, i32 0, i32 5
  %11 = load %struct.aob*, %struct.aob** %10, align 8
  store %struct.aob* %11, %struct.aob** %6, align 8
  %12 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %13 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %12, i32 0, i32 4
  %14 = load %struct.aob*, %struct.aob** %13, align 8
  %15 = load i32, i32* @nr_requests_per_io, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 24
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(%struct.aob* %14, i32 0, i32 %18)
  %20 = load %struct.aob*, %struct.aob** %6, align 8
  %21 = call i32 @memset(%struct.aob* %20, i32 0, i32 24)
  %22 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %23 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aob_rq_header*, %struct.aob_rq_header** %5, align 8
  %26 = getelementptr inbounds %struct.aob_rq_header, %struct.aob_rq_header* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ARQB_CMD_MOVE, align 4
  %28 = load %struct.aob*, %struct.aob** %6, align 8
  %29 = getelementptr inbounds %struct.aob, %struct.aob* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.aob_rq_header*, %struct.aob_rq_header** %5, align 8
  %32 = ptrtoint %struct.aob_rq_header* %31 to i64
  %33 = load %struct.aob*, %struct.aob** %6, align 8
  %34 = getelementptr inbounds %struct.aob, %struct.aob* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %37 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %38 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %37, i32 0, i32 3
  store %struct.scm_blk_dev* %36, %struct.scm_blk_dev** %38, align 8
  %39 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %40 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %39, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = load i32, i32* @BLK_STS_OK, align 4
  %42 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %43 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.aob*, %struct.aob** %6, align 8
  %45 = getelementptr inbounds %struct.aob, %struct.aob* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @nr_requests_per_io, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to i8*
  %51 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %52 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  ret void
}

declare dso_local %struct.aob_rq_header* @to_aobrq(%struct.scm_request*) #1

declare dso_local i32 @memset(%struct.aob*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
