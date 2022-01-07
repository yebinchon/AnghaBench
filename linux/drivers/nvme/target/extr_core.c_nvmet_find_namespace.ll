; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_find_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_find_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ns = type { i32 }
%struct.nvmet_ctrl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvmet_ns* @nvmet_find_namespace(%struct.nvmet_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvmet_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvmet_ns*, align 8
  store %struct.nvmet_ctrl* %0, %struct.nvmet_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.nvmet_ns* @__nvmet_find_namespace(%struct.nvmet_ctrl* %7, i32 %8)
  store %struct.nvmet_ns* %9, %struct.nvmet_ns** %5, align 8
  %10 = load %struct.nvmet_ns*, %struct.nvmet_ns** %5, align 8
  %11 = icmp ne %struct.nvmet_ns* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.nvmet_ns*, %struct.nvmet_ns** %5, align 8
  %14 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %13, i32 0, i32 0
  %15 = call i32 @percpu_ref_get(i32* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = call i32 (...) @rcu_read_unlock()
  %18 = load %struct.nvmet_ns*, %struct.nvmet_ns** %5, align 8
  ret %struct.nvmet_ns* %18
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nvmet_ns* @__nvmet_find_namespace(%struct.nvmet_ctrl*, i32) #1

declare dso_local i32 @percpu_ref_get(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
