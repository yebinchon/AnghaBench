; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_create_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_create_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, %struct.nvme_dev* }
%struct.nvme_dev = type { i32, i32 }

@NVMEQ_DELETE_ERROR = common dso_local global i32 0, align 4
@NVMEQ_POLLED = common dso_local global i32 0, align 4
@NVMEQ_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, i32, i32)* @nvme_create_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_create_queue(%struct.nvme_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvme_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %11, i32 0, i32 2
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %12, align 8
  store %struct.nvme_dev* %13, %struct.nvme_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @NVMEQ_DELETE_ERROR, align 4
  %15 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %16 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %15, i32 0, i32 1
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %22 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  store i32 %29, i32* %10, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load i32, i32* @NVMEQ_POLLED, align 4
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %33 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %32, i32 0, i32 1
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %30, %28
  %36 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @adapter_alloc_cq(%struct.nvme_dev* %36, i32 %37, %struct.nvme_queue* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %94

45:                                               ; preds = %35
  %46 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %49 = call i32 @adapter_alloc_sq(%struct.nvme_dev* %46, i32 %47, %struct.nvme_queue* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %94

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %89

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %62 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @nvme_init_queue(%struct.nvme_queue* %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %59
  %69 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %70 = call i32 @queue_request_irq(%struct.nvme_queue* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %81

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i32, i32* @NVMEQ_ENABLED, align 4
  %77 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %78 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %77, i32 0, i32 1
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %94

81:                                               ; preds = %73
  %82 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %83 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @adapter_delete_sq(%struct.nvme_dev* %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %57
  %90 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @adapter_delete_cq(%struct.nvme_dev* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %75, %52, %43
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @adapter_alloc_cq(%struct.nvme_dev*, i32, %struct.nvme_queue*, i32) #1

declare dso_local i32 @adapter_alloc_sq(%struct.nvme_dev*, i32, %struct.nvme_queue*) #1

declare dso_local i32 @nvme_init_queue(%struct.nvme_queue*, i32) #1

declare dso_local i32 @queue_request_irq(%struct.nvme_queue*) #1

declare dso_local i32 @adapter_delete_sq(%struct.nvme_dev*, i32) #1

declare dso_local i32 @adapter_delete_cq(%struct.nvme_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
