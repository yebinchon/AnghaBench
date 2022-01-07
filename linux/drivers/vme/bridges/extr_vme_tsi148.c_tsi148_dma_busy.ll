; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_dma_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_dma_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_DMA = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_DSTA = common dso_local global i64 0, align 8
@TSI148_LCSR_DSTA_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*, i32)* @tsi148_dma_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_dma_busy(%struct.vme_bridge* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vme_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %9 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %8, i32 0, i32 0
  %10 = load %struct.tsi148_driver*, %struct.tsi148_driver** %9, align 8
  store %struct.tsi148_driver* %10, %struct.tsi148_driver** %7, align 8
  %11 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %12 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** @TSI148_LCSR_DMA, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %13, %18
  %20 = load i64, i64* @TSI148_LCSR_OFFSET_DSTA, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @ioread32be(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TSI148_LCSR_DSTA_BSY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ioread32be(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
