; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_ctrl_fatal_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_ctrl_fatal_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ctrl = type { i32, i32, i32 }

@NVME_CSTS_CFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvmet_ctrl_fatal_error(%struct.nvmet_ctrl* %0) #0 {
  %2 = alloca %struct.nvmet_ctrl*, align 8
  store %struct.nvmet_ctrl* %0, %struct.nvmet_ctrl** %2, align 8
  %3 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NVME_CSTS_CFS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @NVME_CSTS_CFS, align 4
  %14 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %15 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %19 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %18, i32 0, i32 2
  %20 = call i32 @schedule_work(i32* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %23 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
