; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_path_is_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_path_is_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@NVME_NS_ANA_PENDING = common dso_local global i32 0, align 4
@NVME_NS_REMOVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*)* @nvme_path_is_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_path_is_disabled(%struct.nvme_ns* %0) #0 {
  %2 = alloca %struct.nvme_ns*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %2, align 8
  %3 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @NVME_NS_ANA_PENDING, align 4
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @NVME_NS_REMOVING, align 4
  %18 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %19 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %16, %10, %1
  %23 = phi i1 [ true, %10 ], [ true, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
