; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_retry_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_retry_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }

@NVME_SC_CRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @nvme_retry_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_retry_req(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.nvme_ns*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.nvme_ns*, %struct.nvme_ns** %9, align 8
  store %struct.nvme_ns* %10, %struct.nvme_ns** %3, align 8
  store i64 0, i64* %4, align 8
  %11 = load %struct.request*, %struct.request** %2, align 8
  %12 = call %struct.TYPE_5__* @nvme_req(%struct.request* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NVME_SC_CRD, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 11
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %19 = icmp ne %struct.nvme_ns* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 100
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %23, %20, %1
  %37 = load %struct.request*, %struct.request** %2, align 8
  %38 = call %struct.TYPE_5__* @nvme_req(%struct.request* %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.request*, %struct.request** %2, align 8
  %43 = call i32 @blk_mq_requeue_request(%struct.request* %42, i32 0)
  %44 = load %struct.request*, %struct.request** %2, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @blk_mq_delay_kick_requeue_list(%struct.TYPE_6__* %46, i64 %47)
  ret void
}

declare dso_local %struct.TYPE_5__* @nvme_req(%struct.request*) #1

declare dso_local i32 @blk_mq_requeue_request(%struct.request*, i32) #1

declare dso_local i32 @blk_mq_delay_kick_requeue_list(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
