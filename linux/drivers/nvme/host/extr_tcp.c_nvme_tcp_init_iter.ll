; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_init_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_init_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { %struct.TYPE_3__, %struct.bio* }
%struct.TYPE_3__ = type { i64 }
%struct.bio = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.request = type { i32, %struct.bio_vec }
%struct.bio_vec = type { i32 }

@RQF_SPECIAL_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_tcp_request*, i32)* @nvme_tcp_init_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_init_iter(%struct.nvme_tcp_request* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_tcp_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bio*, align 8
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %12 = call %struct.request* @blk_mq_rq_from_pdu(%struct.nvme_tcp_request* %11)
  store %struct.request* %12, %struct.request** %5, align 8
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RQF_SPECIAL_PAYLOAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.request*, %struct.request** %5, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 1
  store %struct.bio_vec* %21, %struct.bio_vec** %6, align 8
  store i32 1, i32* %8, align 4
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i32 @blk_rq_payload_bytes(%struct.request* %22)
  store i32 %23, i32* %7, align 4
  store i64 0, i64* %9, align 8
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %25, i32 0, i32 1
  %27 = load %struct.bio*, %struct.bio** %26, align 8
  store %struct.bio* %27, %struct.bio** %10, align 8
  %28 = load %struct.bio*, %struct.bio** %10, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bio*, %struct.bio** %10, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_4__* %32 to { i32, i64 }*
  %34 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.bio_vec* @__bvec_iter_bvec(i32 %30, i32 %35, i64 %37)
  store %struct.bio_vec* %38, %struct.bio_vec** %6, align 8
  %39 = load %struct.bio*, %struct.bio** %10, align 8
  %40 = call i32 @bio_segments(%struct.bio* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.bio*, %struct.bio** %10, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load %struct.bio*, %struct.bio** %10, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %24, %19
  %50 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @iov_iter_bvec(%struct.TYPE_3__* %51, i32 %52, %struct.bio_vec* %53, i32 %54, i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  ret void
}

declare dso_local %struct.request* @blk_mq_rq_from_pdu(%struct.nvme_tcp_request*) #1

declare dso_local i32 @blk_rq_payload_bytes(%struct.request*) #1

declare dso_local %struct.bio_vec* @__bvec_iter_bvec(i32, i32, i64) #1

declare dso_local i32 @bio_segments(%struct.bio*) #1

declare dso_local i32 @iov_iter_bvec(%struct.TYPE_3__*, i32, %struct.bio_vec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
