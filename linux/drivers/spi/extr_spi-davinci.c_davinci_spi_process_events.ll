; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_process_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_spi = type { i64, i64, {}*, i64, i32 (i32, %struct.davinci_spi*)* }

@SPIBUF = common dso_local global i64 0, align 8
@SPIBUF_RXEMPTY_MASK = common dso_local global i32 0, align 4
@SPIFLG = common dso_local global i64 0, align 8
@SPIFLG_ERROR_MASK = common dso_local global i32 0, align 4
@SPIBUF_TXFULL_MASK = common dso_local global i32 0, align 4
@SPIDAT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_spi*)* @davinci_spi_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_process_events(%struct.davinci_spi* %0) #0 {
  %2 = alloca %struct.davinci_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.davinci_spi* %0, %struct.davinci_spi** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %8 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SPIBUF, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %14 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SPIBUF_RXEMPTY_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %24 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %23, i32 0, i32 4
  %25 = load i32 (i32, %struct.davinci_spi*)*, i32 (i32, %struct.davinci_spi*)** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 65535
  %28 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %29 = call i32 %25(i32 %27, %struct.davinci_spi* %28)
  %30 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %31 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %22, %17, %1
  %35 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %36 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPIFLG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @ioread32(i64 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SPIFLG_ERROR_MASK, align 4
  %43 = and i32 %41, %42
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SPIFLG_ERROR_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %5, align 4
  br label %90

50:                                               ; preds = %34
  %51 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %52 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @SPIBUF_TXFULL_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %55
  %61 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %62 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPIDAT1, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @ioread32(i64 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %68 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, -65536
  store i32 %72, i32* %6, align 4
  %73 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %74 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %73, i32 0, i32 2
  %75 = bitcast {}** %74 to i32 (%struct.davinci_spi*)**
  %76 = load i32 (%struct.davinci_spi*)*, i32 (%struct.davinci_spi*)** %75, align 8
  %77 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %78 = call i32 %76(%struct.davinci_spi* %77)
  %79 = and i32 65535, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.davinci_spi*, %struct.davinci_spi** %2, align 8
  %84 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SPIDAT1, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @iowrite32(i32 %82, i64 %87)
  br label %89

89:                                               ; preds = %60, %55, %50
  br label %90

90:                                               ; preds = %89, %46
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
