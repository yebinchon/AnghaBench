; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dbbuf_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dbbuf_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32*, i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*)* @nvme_dbbuf_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_dbbuf_dma_free(%struct.nvme_dev* %0) #0 {
  %2 = alloca %struct.nvme_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %2, align 8
  %4 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @nvme_dbbuf_size(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %18 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %21 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_free_coherent(i32 %15, i32 %16, i32* %19, i32 %22)
  %24 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %25 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %12, %1
  %27 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %28 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %33 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %37 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %40 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_free_coherent(i32 %34, i32 %35, i32* %38, i32 %41)
  %43 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %44 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @nvme_dbbuf_size(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
