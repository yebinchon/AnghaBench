; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_req_needs_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_req_needs_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@NVME_SC_DNR = common dso_local global i32 0, align 4
@nvme_max_retries = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*)* @nvme_req_needs_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_req_needs_retry(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %4 = load %struct.request*, %struct.request** %3, align 8
  %5 = call i64 @blk_noretry_request(%struct.request* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = call %struct.TYPE_2__* @nvme_req(%struct.request* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NVME_SC_DNR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %26

17:                                               ; preds = %8
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = call %struct.TYPE_2__* @nvme_req(%struct.request* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @nvme_max_retries, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %16, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @blk_noretry_request(%struct.request*) #1

declare dso_local %struct.TYPE_2__* @nvme_req(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
