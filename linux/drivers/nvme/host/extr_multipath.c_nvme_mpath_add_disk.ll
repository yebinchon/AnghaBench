; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_mpath_add_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_mpath_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.TYPE_4__*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nvme_id_ns = type { i32 }

@nvme_set_ns_ana_state = common dso_local global i32 0, align 4
@NVME_ANA_OPTIMIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_mpath_add_disk(%struct.nvme_ns* %0, %struct.nvme_id_ns* %1) #0 {
  %3 = alloca %struct.nvme_ns*, align 8
  %4 = alloca %struct.nvme_id_ns*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %3, align 8
  store %struct.nvme_id_ns* %1, %struct.nvme_id_ns** %4, align 8
  %5 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = call i64 @nvme_ctrl_use_ana(%struct.TYPE_5__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %26 = load i32, i32* @nvme_set_ns_ana_state, align 4
  %27 = call i32 @nvme_parse_ana_log(%struct.TYPE_5__* %24, %struct.nvme_ns* %25, i32 %26)
  %28 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  br label %49

33:                                               ; preds = %2
  %34 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* @NVME_ANA_OPTIMIZED, align 4
  %40 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %43 = call i32 @nvme_mpath_set_live(%struct.nvme_ns* %42)
  %44 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %49

49:                                               ; preds = %33, %10
  ret void
}

declare dso_local i64 @nvme_ctrl_use_ana(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nvme_parse_ana_log(%struct.TYPE_5__*, %struct.nvme_ns*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvme_mpath_set_live(%struct.nvme_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
