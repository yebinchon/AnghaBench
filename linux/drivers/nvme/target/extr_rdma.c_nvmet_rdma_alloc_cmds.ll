; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_alloc_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_alloc_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_cmd = type { i32 }
%struct.nvmet_rdma_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvmet_rdma_cmd* (%struct.nvmet_rdma_device*, i32, i32)* @nvmet_rdma_alloc_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvmet_rdma_cmd* @nvmet_rdma_alloc_cmds(%struct.nvmet_rdma_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvmet_rdma_cmd*, align 8
  %5 = alloca %struct.nvmet_rdma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvmet_rdma_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvmet_rdma_device* %0, %struct.nvmet_rdma_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nvmet_rdma_cmd* @kcalloc(i32 %13, i32 4, i32 %14)
  store %struct.nvmet_rdma_cmd* %15, %struct.nvmet_rdma_cmd** %8, align 8
  %16 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %8, align 8
  %17 = icmp ne %struct.nvmet_rdma_cmd* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %57

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %5, align 8
  %26 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %26, i64 %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @nvmet_rdma_alloc_cmd(%struct.nvmet_rdma_device* %25, %struct.nvmet_rdma_cmd* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %41

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %8, align 8
  store %struct.nvmet_rdma_cmd* %40, %struct.nvmet_rdma_cmd** %4, align 8
  br label %60

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %10, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %5, align 8
  %48 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %48, i64 %50
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @nvmet_rdma_free_cmd(%struct.nvmet_rdma_device* %47, %struct.nvmet_rdma_cmd* %51, i32 %52)
  br label %42

54:                                               ; preds = %42
  %55 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %8, align 8
  %56 = call i32 @kfree(%struct.nvmet_rdma_cmd* %55)
  br label %57

57:                                               ; preds = %54, %18
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.nvmet_rdma_cmd* @ERR_PTR(i32 %58)
  store %struct.nvmet_rdma_cmd* %59, %struct.nvmet_rdma_cmd** %4, align 8
  br label %60

60:                                               ; preds = %57, %39
  %61 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %4, align 8
  ret %struct.nvmet_rdma_cmd* %61
}

declare dso_local %struct.nvmet_rdma_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nvmet_rdma_alloc_cmd(%struct.nvmet_rdma_device*, %struct.nvmet_rdma_cmd*, i32) #1

declare dso_local i32 @nvmet_rdma_free_cmd(%struct.nvmet_rdma_device*, %struct.nvmet_rdma_cmd*, i32) #1

declare dso_local i32 @kfree(%struct.nvmet_rdma_cmd*) #1

declare dso_local %struct.nvmet_rdma_cmd* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
