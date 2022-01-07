; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_prp_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_prp_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"prp list page\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"prp list 256\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_setup_prp_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_setup_prp_pools(%struct.nvme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_dev*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  %4 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %5 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = call i8* @dma_pool_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i32 %8, i32 0)
  %10 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %1
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @dma_pool_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 256, i32 256, i32 0)
  %24 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %19
  %31 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @dma_pool_destroy(i8* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %30, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i8* @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_pool_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
