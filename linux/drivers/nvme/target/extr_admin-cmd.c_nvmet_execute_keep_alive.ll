; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_keep_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvmet_ctrl* }
%struct.nvmet_ctrl = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"ctrl %d update keep-alive timer for %d secs\0A\00", align 1
@system_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvmet_execute_keep_alive(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca %struct.nvmet_ctrl*, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %4 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %7, align 8
  store %struct.nvmet_ctrl* %8, %struct.nvmet_ctrl** %3, align 8
  %9 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load i32, i32* @system_wq, align 4
  %17 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %17, i32 0, i32 1
  %19 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 %21, %22
  %24 = call i32 @mod_delayed_work(i32 %16, i32* %18, i32 %23)
  %25 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %26 = call i32 @nvmet_req_complete(%struct.nvmet_req* %25, i32 0)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
