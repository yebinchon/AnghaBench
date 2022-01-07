; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { i32 }
%struct.mtk_hsdma_chan = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@HSDMA_REG_GLO_CFG = common dso_local global i32 0, align 4
@HSDMA_REG_INT_MASK = common dso_local global i32 0, align 4
@HSDMA_DESCS_NUM = common dso_local global i32 0, align 4
@HSDMA_DESC_LS0 = common dso_local global i32 0, align 4
@HSDMA_DESC_DONE = common dso_local global i32 0, align 4
@HSDMA_INT_RX_Q0 = common dso_local global i32 0, align 4
@HSDMA_GLO_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*)* @mtk_hsdma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_reset(%struct.mtk_hsdam_engine* %0, %struct.mtk_hsdma_chan* %1) #0 {
  %3 = alloca %struct.mtk_hsdam_engine*, align 8
  %4 = alloca %struct.mtk_hsdma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %3, align 8
  store %struct.mtk_hsdma_chan* %1, %struct.mtk_hsdma_chan** %4, align 8
  %6 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %7 = load i32, i32* @HSDMA_REG_GLO_CFG, align 4
  %8 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %6, i32 %7, i32 0)
  %9 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %10 = load i32, i32* @HSDMA_REG_INT_MASK, align 4
  %11 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %9, i32 %10, i32 0)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @HSDMA_DESC_LS0, align 4
  %25 = load i32, i32* @HSDMA_DESC_DONE, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 8
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %12

37:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %51 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %62 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %63 = call i32 @mtk_hsdma_reset_chan(%struct.mtk_hsdam_engine* %61, %struct.mtk_hsdma_chan* %62)
  %64 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %65 = load i32, i32* @HSDMA_REG_INT_MASK, align 4
  %66 = load i32, i32* @HSDMA_INT_RX_Q0, align 4
  %67 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %64, i32 %65, i32 %66)
  %68 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %69 = load i32, i32* @HSDMA_REG_GLO_CFG, align 4
  %70 = load i32, i32* @HSDMA_GLO_DEFAULT, align 4
  %71 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %68, i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine*, i32, i32) #1

declare dso_local i32 @mtk_hsdma_reset_chan(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
