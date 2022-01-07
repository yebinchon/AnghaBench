; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_spi_copy_rx_data_for_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_spi_copy_rx_data_for_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_spi_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_spi_data*, i32)* @pch_spi_copy_rx_data_for_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_spi_copy_rx_data_for_dma(%struct.pch_spi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_spi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.pch_spi_data* %0, %struct.pch_spi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %11 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %83

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %22 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %6, align 8
  %26 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %27 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %43, %20
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %33 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %37, align 4
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %49 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* %47, i32** %51, align 8
  br label %83

52:                                               ; preds = %17
  %53 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %54 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %7, align 8
  %58 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %59 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %9, align 8
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %74, %52
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %65 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %9, align 8
  %71 = load i32, i32* %69, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %80 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32* %78, i32** %82, align 8
  br label %83

83:                                               ; preds = %16, %77, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
