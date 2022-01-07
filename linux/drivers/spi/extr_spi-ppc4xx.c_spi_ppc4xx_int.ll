; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_spi_ppc4xx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_spi_ppc4xx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc4xx_spi = type { i32, i32*, i32, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SPI_PPC4XX_SR_BSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"got interrupt but spi still busy?\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"busywait: too many loops!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"loops %d status %x\0A\00", align 1
@SPI_PPC4XX_CR_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spi_ppc4xx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_ppc4xx_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ppc4xx_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ppc4xx_spi*
  store %struct.ppc4xx_spi* %13, %struct.ppc4xx_spi** %6, align 8
  %14 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %15 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = call i32 @in_8(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %144

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SPI_PPC4XX_SR_BSY, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %30 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %31 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %50, %29
  %35 = call i32 @ndelay(i32 10)
  %36 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %37 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = call i32 @in_8(i32* %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = icmp slt i32 %43, 100
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @SPI_PPC4XX_SR_BSY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i1 [ false, %41 ], [ %49, %45 ]
  br i1 %51, label %34, label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %11, align 4
  %54 = icmp sge i32 %53, 100
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %57 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %61 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %60, i32 0, i32 4
  %62 = call i32 @complete(i32* %61)
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %3, align 4
  br label %144

64:                                               ; preds = %52
  %65 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %66 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = call i32 @in_8(i32* %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %71 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %23
  %78 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %79 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %9, align 4
  %81 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %82 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %86 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %85, i32 0, i32 5
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = call i32 @in_8(i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %91 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %77
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %97 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %77
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %107 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %102
  %111 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %112 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %117 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  br label %124

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %115
  %125 = phi i32 [ %122, %115 ], [ 0, %123 ]
  store i32 %125, i32* %8, align 4
  %126 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %127 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %126, i32 0, i32 5
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @out_8(i32* %129, i32 %130)
  %132 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %133 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %132, i32 0, i32 5
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* @SPI_PPC4XX_CR_STR, align 4
  %137 = call i32 @out_8(i32* %135, i32 %136)
  br label %142

138:                                              ; preds = %102
  %139 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %140 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %139, i32 0, i32 4
  %141 = call i32 @complete(i32* %140)
  br label %142

142:                                              ; preds = %138, %124
  %143 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %55, %21
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @in_8(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
