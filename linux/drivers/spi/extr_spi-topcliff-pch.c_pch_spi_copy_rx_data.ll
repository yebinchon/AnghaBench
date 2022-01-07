; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_spi_copy_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_spi_copy_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_spi_data = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_spi_data*, i32)* @pch_spi_copy_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_spi_copy_rx_data(%struct.pch_spi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_spi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.pch_spi_data* %0, %struct.pch_spi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %9 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %71

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %20 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %41, %18
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %27 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %32 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %24

44:                                               ; preds = %24
  br label %71

45:                                               ; preds = %15
  %46 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %47 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %67, %45
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %54 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %59 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %51

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %14, %70, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
