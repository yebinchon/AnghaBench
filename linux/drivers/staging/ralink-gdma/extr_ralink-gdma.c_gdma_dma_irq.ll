; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdma_dma_dev = type { i32, i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gdma_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdma_dma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gdma_dma_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.gdma_dma_dev*
  store %struct.gdma_dma_dev* %11, %struct.gdma_dma_dev** %6, align 8
  %12 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %6, align 8
  %13 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %2
  %29 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %29, i32 %30, i32 %31)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %52, %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %6, align 8
  %42 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %6, align 8
  %43 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @gdma_dma_chan_irq(%struct.gdma_dma_dev* %41, i32* %47)
  %49 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %6, align 8
  %50 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %49, i32 0, i32 2
  %51 = call i32 @atomic_dec(i32* %50)
  br label %52

52:                                               ; preds = %40, %36
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %33

57:                                               ; preds = %33
  %58 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %6, align 8
  %59 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %6, align 8
  %64 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %63, i32 0, i32 0
  %65 = call i32 @tasklet_schedule(i32* %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @gdma_dma_read(%struct.gdma_dma_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gdma_dma_write(%struct.gdma_dma_dev*, i32, i32) #1

declare dso_local i32 @gdma_dma_chan_irq(%struct.gdma_dma_dev*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
