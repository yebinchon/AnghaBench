; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_update_ns_ana_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_update_ns_ana_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ana_group_desc = type { i32, i32 }
%struct.nvme_ns = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NVME_NS_ANA_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ana_group_desc*, %struct.nvme_ns*)* @nvme_update_ns_ana_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_update_ns_ana_state(%struct.nvme_ana_group_desc* %0, %struct.nvme_ns* %1) #0 {
  %3 = alloca %struct.nvme_ana_group_desc*, align 8
  %4 = alloca %struct.nvme_ns*, align 8
  store %struct.nvme_ana_group_desc* %0, %struct.nvme_ana_group_desc** %3, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %4, align 8
  %5 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %6 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.nvme_ana_group_desc*, %struct.nvme_ana_group_desc** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_ana_group_desc, %struct.nvme_ana_group_desc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.nvme_ana_group_desc*, %struct.nvme_ana_group_desc** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_ana_group_desc, %struct.nvme_ana_group_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @NVME_NS_ANA_PENDING, align 4
  %22 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %23 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %22, i32 0, i32 2
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @nvme_state_is_live(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %32 = call i32 @nvme_mpath_set_live(%struct.nvme_ns* %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @nvme_state_is_live(i32) #1

declare dso_local i32 @nvme_mpath_set_live(%struct.nvme_ns*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
