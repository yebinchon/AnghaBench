; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_cleanup_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_cleanup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.page* }

@RQF_SPECIAL_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_cleanup_cmd(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.nvme_ns*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RQF_SPECIAL_PAYLOAD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.request*, %struct.request** %2, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %15, align 8
  store %struct.nvme_ns* %16, %struct.nvme_ns** %3, align 8
  %17 = load %struct.request*, %struct.request** %2, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.page*, %struct.page** %19, align 8
  store %struct.page* %20, %struct.page** %4, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.page*, %struct.page** %25, align 8
  %27 = icmp eq %struct.page* %21, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %11
  %29 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %30 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @clear_bit_unlock(i32 0, i32* %32)
  br label %43

34:                                               ; preds = %11
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i64 @page_address(%struct.page* %35)
  %37 = load %struct.request*, %struct.request** %2, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  %42 = call i32 @kfree(i64 %41)
  br label %43

43:                                               ; preds = %34, %28
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
