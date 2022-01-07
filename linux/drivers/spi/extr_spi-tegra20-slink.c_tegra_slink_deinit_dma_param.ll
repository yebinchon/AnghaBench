; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_deinit_dma_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_deinit_dma_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_slink_data = type { i32, i32, %struct.dma_chan*, i32*, i32, i32*, %struct.dma_chan*, i32 }
%struct.dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_slink_data*, i32)* @tegra_slink_deinit_dma_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_slink_deinit_dma_param(%struct.tegra_slink_data* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_slink_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_chan*, align 8
  store %struct.tegra_slink_data* %0, %struct.tegra_slink_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %14, i32 0, i32 6
  %16 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  store %struct.dma_chan* %16, %struct.dma_chan** %7, align 8
  %17 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %20, i32 0, i32 6
  store %struct.dma_chan* null, %struct.dma_chan** %21, align 8
  %22 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %5, align 8
  %28 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %28, i32 0, i32 2
  %30 = load %struct.dma_chan*, %struct.dma_chan** %29, align 8
  store %struct.dma_chan* %30, %struct.dma_chan** %7, align 8
  %31 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %36, i32 0, i32 2
  store %struct.dma_chan* null, %struct.dma_chan** %37, align 8
  br label %38

38:                                               ; preds = %24, %10
  %39 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %40 = icmp ne %struct.dma_chan* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %54

42:                                               ; preds = %38
  %43 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %44 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dma_free_coherent(i32 %45, i32 %48, i32* %49, i32 %50)
  %52 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %53 = call i32 @dma_release_channel(%struct.dma_chan* %52)
  br label %54

54:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
