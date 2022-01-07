; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdma_dma_dev = type { i32, %struct.TYPE_4__, i32, %struct.gdma_dmaengine_chan*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.gdma_dmaengine_chan = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@gdma_dma_tasklet.last_chan = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chan %d no desc to issue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gdma_dma_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdma_dma_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gdma_dma_dev*, align 8
  %4 = alloca %struct.gdma_dmaengine_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.gdma_dma_dev*
  store %struct.gdma_dma_dev* %8, %struct.gdma_dma_dev** %3, align 8
  %9 = load i32, i32* @gdma_dma_tasklet.last_chan, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %11 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %68, %1
  %17 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %18 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %17, i32 0, i32 2
  %19 = call i32 @atomic_read(i32* %18)
  %20 = icmp sge i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* @gdma_dma_tasklet.last_chan, align 4
  br label %72

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %26 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %25, i32 0, i32 0
  %27 = call i64 @test_and_clear_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %30, i32 0, i32 3
  %32 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %32, i64 %34
  store %struct.gdma_dmaengine_chan* %35, %struct.gdma_dmaengine_chan** %4, align 8
  %36 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %37 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %42 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %41, i32 0, i32 2
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %45 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %46 = call i32 @gdma_start_transfer(%struct.gdma_dma_dev* %44, %struct.gdma_dmaengine_chan* %45)
  br label %56

47:                                               ; preds = %29
  %48 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %49 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %53 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %47, %40
  %57 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %58 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %72

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %23
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @gdma_dma_tasklet.last_chan, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %16, label %72

72:                                               ; preds = %68, %61, %21
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @gdma_start_transfer(%struct.gdma_dma_dev*, %struct.gdma_dmaengine_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
