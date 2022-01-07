; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_dma_debug_show_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_dma_debug_show_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.knav_dma_chan = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"\09%s %d:\09\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"tx chan\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rx flow\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"einfo - %d, pswords - %d, priority - %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"einfo - %d, psinfo - %d, desc_type - %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\09\09\09dst_q: [%d], thresh: %d fdq: \00", align 1
@KNAV_DMA_FDQ_PER_CHAN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.knav_dma_chan*)* @dma_debug_show_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_debug_show_channels(%struct.seq_file* %0, %struct.knav_dma_chan* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.knav_dma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.knav_dma_chan* %1, %struct.knav_dma_chan** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %8 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %14 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %15 = call i32 @chan_number(%struct.knav_dma_chan* %14)
  %16 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15)
  %17 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %37 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %35, i32 %41)
  br label %101

43:                                               ; preds = %2
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %46 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %52 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %58 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %56, i32 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %66 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %72 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32 %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %95, %43
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @KNAV_DMA_FDQ_PER_CHAN, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %4, align 8
  %85 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %78

98:                                               ; preds = %78
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %22
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @chan_number(%struct.knav_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
