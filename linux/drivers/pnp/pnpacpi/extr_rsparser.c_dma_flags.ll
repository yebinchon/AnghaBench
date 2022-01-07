; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_dma_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_dma_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }

@IORESOURCE_DMA_MASTER = common dso_local global i32 0, align 4
@IORESOURCE_DMA_COMPATIBLE = common dso_local global i32 0, align 4
@IORESOURCE_DMA_TYPEA = common dso_local global i32 0, align 4
@IORESOURCE_DMA_TYPEB = common dso_local global i32 0, align 4
@IORESOURCE_DMA_TYPEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid DMA type %d\0A\00", align 1
@IORESOURCE_DMA_8BIT = common dso_local global i32 0, align 4
@IORESOURCE_DMA_8AND16BIT = common dso_local global i32 0, align 4
@IORESOURCE_DMA_16BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid DMA transfer type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, i32, i32, i32)* @dma_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_flags(%struct.pnp_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @IORESOURCE_DMA_MASTER, align 4
  %14 = load i32, i32* %9, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %34 [
    i32 134, label %18
    i32 130, label %22
    i32 129, label %26
    i32 128, label %30
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @IORESOURCE_DMA_COMPATIBLE, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  br label %42

22:                                               ; preds = %16
  %23 = load i32, i32* @IORESOURCE_DMA_TYPEA, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %42

26:                                               ; preds = %16
  %27 = load i32, i32* @IORESOURCE_DMA_TYPEB, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %42

30:                                               ; preds = %16
  %31 = load i32, i32* @IORESOURCE_DMA_TYPEF, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %42

34:                                               ; preds = %16
  %35 = load i32, i32* @IORESOURCE_DMA_COMPATIBLE, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %30, %26, %22, %18
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %56 [
    i32 132, label %44
    i32 131, label %48
    i32 133, label %52
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @IORESOURCE_DMA_8BIT, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %64

48:                                               ; preds = %42
  %49 = load i32, i32* @IORESOURCE_DMA_8AND16BIT, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %64

52:                                               ; preds = %42
  %53 = load i32, i32* @IORESOURCE_DMA_16BIT, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %64

56:                                               ; preds = %42
  %57 = load i32, i32* @IORESOURCE_DMA_8AND16BIT, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %61 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %56, %52, %48, %44
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
