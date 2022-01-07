; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_alloc_rsps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_alloc_rsps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_queue = type { i32, %struct.nvmet_rdma_rsp*, i32, %struct.nvmet_rdma_device* }
%struct.nvmet_rdma_rsp = type { i32 }
%struct.nvmet_rdma_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_rdma_queue*)* @nvmet_rdma_alloc_rsps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_alloc_rsps(%struct.nvmet_rdma_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_rdma_queue*, align 8
  %4 = alloca %struct.nvmet_rdma_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvmet_rdma_rsp*, align 8
  %9 = alloca %struct.nvmet_rdma_rsp*, align 8
  store %struct.nvmet_rdma_queue* %0, %struct.nvmet_rdma_queue** %3, align 8
  %10 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %11 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %10, i32 0, i32 3
  %12 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %11, align 8
  store %struct.nvmet_rdma_device* %12, %struct.nvmet_rdma_device** %4, align 8
  %13 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %14 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.nvmet_rdma_rsp* @kcalloc(i32 %19, i32 4, i32 %20)
  %22 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %23 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %22, i32 0, i32 1
  store %struct.nvmet_rdma_rsp* %21, %struct.nvmet_rdma_rsp** %23, align 8
  %24 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %25 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %24, i32 0, i32 1
  %26 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %25, align 8
  %27 = icmp ne %struct.nvmet_rdma_rsp* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %80

29:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %36 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %35, i32 0, i32 1
  %37 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %37, i64 %39
  store %struct.nvmet_rdma_rsp* %40, %struct.nvmet_rdma_rsp** %8, align 8
  %41 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %4, align 8
  %42 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %8, align 8
  %43 = call i32 @nvmet_rdma_alloc_rsp(%struct.nvmet_rdma_device* %41, %struct.nvmet_rdma_rsp* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %57

47:                                               ; preds = %34
  %48 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %8, align 8
  %49 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %48, i32 0, i32 0
  %50 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %51 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %50, i32 0, i32 2
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %30

56:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %82

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %64 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %63, i32 0, i32 1
  %65 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %65, i64 %67
  store %struct.nvmet_rdma_rsp* %68, %struct.nvmet_rdma_rsp** %9, align 8
  %69 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %9, align 8
  %70 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %69, i32 0, i32 0
  %71 = call i32 @list_del(i32* %70)
  %72 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %4, align 8
  %73 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %9, align 8
  %74 = call i32 @nvmet_rdma_free_rsp(%struct.nvmet_rdma_device* %72, %struct.nvmet_rdma_rsp* %73)
  br label %58

75:                                               ; preds = %58
  %76 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %77 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %76, i32 0, i32 1
  %78 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %77, align 8
  %79 = call i32 @kfree(%struct.nvmet_rdma_rsp* %78)
  br label %80

80:                                               ; preds = %75, %28
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %56
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.nvmet_rdma_rsp* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nvmet_rdma_alloc_rsp(%struct.nvmet_rdma_device*, %struct.nvmet_rdma_rsp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @nvmet_rdma_free_rsp(%struct.nvmet_rdma_device*, %struct.nvmet_rdma_rsp*) #1

declare dso_local i32 @kfree(%struct.nvmet_rdma_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
