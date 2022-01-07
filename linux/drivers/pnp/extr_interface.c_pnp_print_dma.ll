; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_print_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_print_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dma = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%sdma \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@IORESOURCE_DMA_TYPE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"8-bit\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"8-bit&16-bit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"16-bit\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@IORESOURCE_DMA_MASTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c" master\00", align 1
@IORESOURCE_DMA_BYTE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c" byte-count\00", align 1
@IORESOURCE_DMA_WORD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c" word-count\00", align 1
@IORESOURCE_DMA_SPEED_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"type-A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"type-B\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"type-F\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.pnp_dma*)* @pnp_print_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_print_dma(i32* %0, i8* %1, %struct.pnp_dma* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.pnp_dma* %2, %struct.pnp_dma** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %18 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

30:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %41 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %49 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IORESOURCE_DMA_TYPE_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %55 [
    i32 131, label %53
    i32 132, label %54
  ]

53:                                               ; preds = %47
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %56

54:                                               ; preds = %47
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %56

55:                                               ; preds = %47
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %56

56:                                               ; preds = %55, %54, %53
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  %60 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %61 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IORESOURCE_DMA_MASTER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %56
  %70 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %71 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IORESOURCE_DMA_BYTE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %81 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IORESOURCE_DMA_WORD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %79
  %90 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %91 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IORESOURCE_DMA_SPEED_MASK, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %98 [
    i32 130, label %95
    i32 129, label %96
    i32 128, label %97
  ]

95:                                               ; preds = %89
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %99

96:                                               ; preds = %89
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %99

97:                                               ; preds = %89
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %99

98:                                               ; preds = %89
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %99

99:                                               ; preds = %98, %97, %96, %95
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %101)
  ret void
}

declare dso_local i32 @pnp_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
