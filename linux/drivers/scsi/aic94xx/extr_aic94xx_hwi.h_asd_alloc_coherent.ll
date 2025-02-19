; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.h_asd_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.h_asd_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_dma_tok = type { i64, i32, i32 }
%struct.asd_ha_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.asd_dma_tok* (%struct.asd_ha_struct*, i64, i32)* @asd_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.asd_dma_tok* @asd_alloc_coherent(%struct.asd_ha_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.asd_dma_tok*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call %struct.asd_dma_tok* @asd_dmatok_alloc(i32 %8)
  store %struct.asd_dma_tok* %9, %struct.asd_dma_tok** %7, align 8
  %10 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %7, align 8
  %11 = icmp ne %struct.asd_dma_tok* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %7, align 8
  %15 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %17 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %7, align 8
  %21 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %7, align 8
  %24 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %23, i32 0, i32 2
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dma_alloc_coherent(i32* %19, i64 %22, i32* %24, i32 %25)
  %27 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %7, align 8
  %28 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %7, align 8
  %30 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %12
  %34 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %7, align 8
  %35 = call i32 @asd_dmatok_free(%struct.asd_dma_tok* %34)
  store %struct.asd_dma_tok* null, %struct.asd_dma_tok** %7, align 8
  br label %36

36:                                               ; preds = %33, %12
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %7, align 8
  ret %struct.asd_dma_tok* %38
}

declare dso_local %struct.asd_dma_tok* @asd_dmatok_alloc(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @asd_dmatok_free(%struct.asd_dma_tok*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
