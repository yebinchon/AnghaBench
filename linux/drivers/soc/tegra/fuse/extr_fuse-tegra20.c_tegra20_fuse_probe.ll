; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/fuse/extr_fuse-tegra20.c_tegra20_fuse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/fuse/extr_fuse-tegra20.c_tegra20_fuse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_fuse = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8* }

@DMA_SLAVE = common dso_local global i32 0, align 4
@dma_filter = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@tegra20_fuse_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_fuse*)* @tegra20_fuse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_fuse_probe(%struct.tegra_fuse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_fuse*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_fuse* %0, %struct.tegra_fuse** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dma_cap_zero(i32 %5)
  %7 = load i32, i32* @DMA_SLAVE, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dma_cap_set(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @dma_filter, align 4
  %12 = call i32 @dma_request_channel(i32 %10, i32 %11, i32* null)
  %13 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 8
  %16 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EPROBE_DEFER, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @dma_alloc_coherent(i32 %27, i32 4, i32* %30, i32 %31)
  %33 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  %36 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %24
  %42 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_release_channel(i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %88

49:                                               ; preds = %24
  %50 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %51 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  store i8* %50, i8** %54, align 8
  %55 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %56 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i8* %55, i8** %59, align 8
  %60 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %69 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 4
  %73 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %74 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = call i32 @init_completion(i32* %79)
  %81 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %82 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load i32, i32* @tegra20_fuse_read, align 4
  %86 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %87 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %49, %41, %21
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_channel(i32, i32, i32*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
