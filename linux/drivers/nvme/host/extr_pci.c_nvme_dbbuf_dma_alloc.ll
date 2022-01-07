; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dbbuf_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dbbuf_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32*, i32, i32, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_dbbuf_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_dbbuf_dma_alloc(%struct.nvme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  %5 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @nvme_dbbuf_size(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @dma_alloc_coherent(i32 %17, i32 %18, i32* %20, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %14
  %34 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %39 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %38, i32 0, i32 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @dma_alloc_coherent(i32 %36, i32 %37, i32* %39, i32 %40)
  %42 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %33
  %49 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %50 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %54 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %57 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dma_free_coherent(i32 %51, i32 %52, i32* %55, i32 %58)
  %60 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %61 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %48, %30, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @nvme_dbbuf_size(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
