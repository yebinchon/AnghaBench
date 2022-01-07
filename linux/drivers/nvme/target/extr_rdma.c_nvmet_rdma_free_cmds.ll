; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_free_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_free_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_device = type { i32 }
%struct.nvmet_rdma_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_rdma_device*, %struct.nvmet_rdma_cmd*, i32, i32)* @nvmet_rdma_free_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_rdma_free_cmds(%struct.nvmet_rdma_device* %0, %struct.nvmet_rdma_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvmet_rdma_device*, align 8
  %6 = alloca %struct.nvmet_rdma_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvmet_rdma_device* %0, %struct.nvmet_rdma_device** %5, align 8
  store %struct.nvmet_rdma_cmd* %1, %struct.nvmet_rdma_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %22, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %5, align 8
  %16 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %16, i64 %18
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @nvmet_rdma_free_cmd(%struct.nvmet_rdma_device* %15, %struct.nvmet_rdma_cmd* %19, i32 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %6, align 8
  %27 = call i32 @kfree(%struct.nvmet_rdma_cmd* %26)
  ret void
}

declare dso_local i32 @nvmet_rdma_free_cmd(%struct.nvmet_rdma_device*, %struct.nvmet_rdma_cmd*, i32) #1

declare dso_local i32 @kfree(%struct.nvmet_rdma_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
