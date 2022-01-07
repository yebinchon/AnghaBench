; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_desc_fill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_desc_fill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_tx_desc = type { i32, i32, i32, i32 }
%struct.tsi721_dma_desc = type { %struct.TYPE_2__, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64, i64, i8*, i8* }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DTYPE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_tx_desc*, %struct.tsi721_dma_desc*, %struct.scatterlist*, i32)* @tsi721_desc_fill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_desc_fill_init(%struct.tsi721_tx_desc* %0, %struct.tsi721_dma_desc* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tsi721_tx_desc*, align 8
  %7 = alloca %struct.tsi721_dma_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tsi721_tx_desc* %0, %struct.tsi721_tx_desc** %6, align 8
  store %struct.tsi721_dma_desc* %1, %struct.tsi721_dma_desc** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %12 = icmp ne %struct.tsi721_dma_desc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %82

16:                                               ; preds = %4
  %17 = load i32, i32* @DTYPE1, align 4
  %18 = shl i32 %17, 29
  %19 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %6, align 8
  %20 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 19
  %23 = or i32 %18, %22
  %24 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %6, align 8
  %25 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %30 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %6, align 8
  %32 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 3
  %35 = shl i32 %34, 30
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, 26
  %38 = or i32 %35, %37
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %41 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %6, align 8
  %43 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 2
  %46 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %6, align 8
  %47 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = shl i32 %49, 62
  %51 = or i32 %45, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %55 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 32
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %60 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %62 = call i64 @sg_dma_address(%struct.scatterlist* %61)
  %63 = trunc i64 %62 to i32
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %66 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i8* %64, i8** %67, align 8
  %68 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %69 = call i64 @sg_dma_address(%struct.scatterlist* %68)
  %70 = trunc i64 %69 to i32
  %71 = ashr i32 %70, 32
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %74 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %77 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %7, align 8
  %80 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %16, %13
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
