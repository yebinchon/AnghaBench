; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_do_delete_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_do_delete_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.nvme_ctrl*)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Removing ctrl: NQN \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_do_delete_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_do_delete_ctrl(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %3 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_info(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 1
  %14 = call i32 @flush_work(i32* %13)
  %15 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %16 = call i32 @nvme_stop_ctrl(%struct.nvme_ctrl* %15)
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %18 = call i32 @nvme_remove_namespaces(%struct.nvme_ctrl* %17)
  %19 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %20 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.nvme_ctrl*)*, i32 (%struct.nvme_ctrl*)** %22, align 8
  %24 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %25 = call i32 %23(%struct.nvme_ctrl* %24)
  %26 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %27 = call i32 @nvme_uninit_ctrl(%struct.nvme_ctrl* %26)
  %28 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %29 = call i32 @nvme_put_ctrl(%struct.nvme_ctrl* %28)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @nvme_stop_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_remove_namespaces(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_uninit_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_put_ctrl(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
