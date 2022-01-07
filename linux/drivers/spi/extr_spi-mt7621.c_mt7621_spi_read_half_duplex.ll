; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_read_half_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_read_half_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_spi = type { i32 }

@MT7621_SPI_MOREBUF = common dso_local global i64 0, align 8
@MT7621_SPI_TRANS = common dso_local global i64 0, align 8
@SPI_CTL_START = common dso_local global i32 0, align 4
@MT7621_SPI_DATA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7621_spi*, i32, i32*)* @mt7621_spi_read_half_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7621_spi_read_half_duplex(%struct.mt7621_spi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mt7621_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt7621_spi* %0, %struct.mt7621_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %12 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %15 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %86, %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ true, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %90

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @min(i32 %25, i32 4)
  %27 = mul nsw i32 %26, 8
  %28 = shl i32 %27, 24
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @min(i32 %29, i32 32)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 4
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 4
  %36 = mul nsw i32 %35, 8
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %33, %24
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %40, 8
  %42 = shl i32 %41, 12
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %46 = load i64, i64* @MT7621_SPI_MOREBUF, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @mt7621_spi_write(%struct.mt7621_spi* %45, i64 %46, i32 %47)
  store i32 0, i32* %7, align 4
  %49 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %50 = load i64, i64* @MT7621_SPI_TRANS, align 8
  %51 = call i32 @mt7621_spi_read(%struct.mt7621_spi* %49, i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @SPI_CTL_START, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %56 = load i64, i64* @MT7621_SPI_TRANS, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @mt7621_spi_write(%struct.mt7621_spi* %55, i64 %56, i32 %57)
  %59 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %60 = call i32 @mt7621_spi_wait_till_ready(%struct.mt7621_spi* %59)
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %83, %39
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = srem i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %71 = load i64, i64* @MT7621_SPI_DATA0, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @mt7621_spi_read(%struct.mt7621_spi* %70, i64 %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %69, %65
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 255
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 8
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %61

86:                                               ; preds = %61
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %16

90:                                               ; preds = %22
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mt7621_spi_write(%struct.mt7621_spi*, i64, i32) #1

declare dso_local i32 @mt7621_spi_read(%struct.mt7621_spi*, i64) #1

declare dso_local i32 @mt7621_spi_wait_till_ready(%struct.mt7621_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
