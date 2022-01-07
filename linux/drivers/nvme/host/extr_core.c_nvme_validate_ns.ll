; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_validate_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_validate_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_ns = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*, i32)* @nvme_validate_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_validate_ns(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ns*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.nvme_ns* @nvme_find_get_ns(%struct.nvme_ctrl* %6, i32 %7)
  store %struct.nvme_ns* %8, %struct.nvme_ns** %5, align 8
  %9 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %10 = icmp ne %struct.nvme_ns* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %18 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @revalidate_disk(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %24 = call i32 @nvme_ns_remove(%struct.nvme_ns* %23)
  br label %25

25:                                               ; preds = %22, %16, %11
  %26 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %27 = call i32 @nvme_put_ns(%struct.nvme_ns* %26)
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @nvme_alloc_ns(%struct.nvme_ctrl* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  ret void
}

declare dso_local %struct.nvme_ns* @nvme_find_get_ns(%struct.nvme_ctrl*, i32) #1

declare dso_local i64 @revalidate_disk(i64) #1

declare dso_local i32 @nvme_ns_remove(%struct.nvme_ns*) #1

declare dso_local i32 @nvme_put_ns(%struct.nvme_ns*) #1

declare dso_local i32 @nvme_alloc_ns(%struct.nvme_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
