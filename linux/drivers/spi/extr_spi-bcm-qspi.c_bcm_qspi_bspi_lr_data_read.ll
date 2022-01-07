; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_lr_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_lr_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"xfer %p rx %p rxlen %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_qspi*)* @bcm_qspi_bspi_lr_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_qspi_bspi_lr_data_read(%struct.bcm_qspi* %0) #0 {
  %2 = alloca %struct.bcm_qspi*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %2, align 8
  %6 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %7 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %6, i32 0, i32 2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %14 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %15 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %19 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %22 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %29 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %20, i64 %27, i32 %30)
  br label %32

32:                                               ; preds = %90, %1
  %33 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %34 = call i32 @bcm_qspi_bspi_lr_is_fifo_empty(%struct.bcm_qspi* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %91

37:                                               ; preds = %32
  %38 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %39 = call i32 @bcm_qspi_bspi_lr_read_fifo(%struct.bcm_qspi* %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %41 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 4
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %37
  %48 = load i32*, i32** %3, align 8
  %49 = ptrtoint i32* %48 to i64
  %50 = call i64 @IS_ALIGNED(i64 %49, i32 4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %56 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %59, align 4
  %60 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %61 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 4
  store i32 %63, i32* %61, align 8
  br label %90

64:                                               ; preds = %47, %37
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %67 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = bitcast i32* %69 to i64*
  store i64* %70, i64** %5, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @cpu_to_le32(i32 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %78, %64
  %74 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %75 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %5, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %5, align 8
  store i64 %80, i64* %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = ashr i32 %83, 8
  store i32 %84, i32* %4, align 4
  %85 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %86 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  br label %73

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %52
  br label %32

91:                                               ; preds = %32
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @bcm_qspi_bspi_lr_is_fifo_empty(%struct.bcm_qspi*) #1

declare dso_local i32 @bcm_qspi_bspi_lr_read_fifo(%struct.bcm_qspi*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
