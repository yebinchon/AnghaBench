; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.gdma_dmaengine_chan = type { i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.gdma_dma_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@head = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@GDMA_REG_CTRL0_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"chan %d wait timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"terminate chan %d loops %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @gdma_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdma_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.gdma_dmaengine_chan*, align 8
  %4 = alloca %struct.gdma_dma_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = call %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan* %8)
  store %struct.gdma_dmaengine_chan* %9, %struct.gdma_dmaengine_chan** %3, align 8
  %10 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %11 = call %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan* %10)
  store %struct.gdma_dma_dev* %11, %struct.gdma_dma_dev** %4, align 8
  %12 = load i32, i32* @head, align 4
  %13 = call i32 @LIST_HEAD(i32 %12)
  store i32 0, i32* %7, align 4
  %14 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %15 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %20 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %22 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %25 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %24, i32 0, i32 1
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %28 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %27, i32 0, i32 1
  %29 = call i32 @vchan_get_all_descriptors(%struct.TYPE_5__* %28, i32* @head)
  %30 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %31 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %36 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %35, i32 0, i32 1
  %37 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_5__* %36, i32* @head)
  %38 = load i64, i64* @jiffies, align 8
  %39 = call i64 @msecs_to_jiffies(i32 5000)
  %40 = add i64 %38, %39
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %71, %1
  %42 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %43 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %44 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @GDMA_REG_CTRL0(i32 %45)
  %47 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %42, i32 %46)
  %48 = load i32, i32* @GDMA_REG_CTRL0_ENABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %41
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @time_after_eq(i64 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %58 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %62 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %66 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %67 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @GDMA_REG_CTRL0(i32 %68)
  %70 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %65, i32 %69, i32 0)
  br label %75

71:                                               ; preds = %51
  %72 = call i32 (...) @cpu_relax()
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %41

75:                                               ; preds = %56, %41
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %80 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %84 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %75
  ret i32 0
}

declare dso_local %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @gdma_dma_read(%struct.gdma_dma_dev*, i32) #1

declare dso_local i32 @GDMA_REG_CTRL0(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gdma_dma_write(%struct.gdma_dma_dev*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
