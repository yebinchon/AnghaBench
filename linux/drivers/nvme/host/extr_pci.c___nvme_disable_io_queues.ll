; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c___nvme_disable_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c___nvme_disable_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, %struct.nvme_queue* }
%struct.nvme_queue = type { i32, i32 }

@ADMIN_TIMEOUT = common dso_local global i64 0, align 8
@nvme_admin_delete_cq = common dso_local global i32 0, align 4
@NVMEQ_DELETE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, i32)* @__nvme_disable_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nvme_disable_io_queues(%struct.nvme_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvme_queue*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %73, %2
  %15 = load i64, i64* @ADMIN_TIMEOUT, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %30, %14
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %21 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %20, i32 0, i32 1
  %22 = load %struct.nvme_queue*, %struct.nvme_queue** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %22, i64 %24
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @nvme_delete_queue(%struct.nvme_queue* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %16

35:                                               ; preds = %29, %16
  br label %36

36:                                               ; preds = %74, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %40, i32 0, i32 1
  %42 = load %struct.nvme_queue*, %struct.nvme_queue** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %42, i64 %46
  store %struct.nvme_queue* %47, %struct.nvme_queue** %9, align 8
  %48 = load %struct.nvme_queue*, %struct.nvme_queue** %9, align 8
  %49 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %48, i32 0, i32 1
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @wait_for_completion_io_timeout(i32* %49, i64 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %76

55:                                               ; preds = %39
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @nvme_admin_delete_cq, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* @NVMEQ_DELETE_ERROR, align 4
  %61 = load %struct.nvme_queue*, %struct.nvme_queue** %9, align 8
  %62 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %61, i32 0, i32 0
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load %struct.nvme_queue*, %struct.nvme_queue** %9, align 8
  %67 = call i32 @nvme_poll_irqdisable(%struct.nvme_queue* %66, i32 -1)
  br label %68

68:                                               ; preds = %65, %59, %55
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %14

74:                                               ; preds = %68
  br label %36

75:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @nvme_delete_queue(%struct.nvme_queue*, i32) #1

declare dso_local i64 @wait_for_completion_io_timeout(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nvme_poll_irqdisable(%struct.nvme_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
