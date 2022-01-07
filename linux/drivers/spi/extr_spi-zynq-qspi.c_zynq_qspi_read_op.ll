; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_read_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_read_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_qspi = type { i32, i32, i64, i64 }

@ZYNQ_QSPI_RXD_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynq_qspi*, i32)* @zynq_qspi_read_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_qspi_read_op(%struct.zynq_qspi* %0, i32 %1) #0 {
  %3 = alloca %struct.zynq_qspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zynq_qspi* %0, %struct.zynq_qspi** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %9 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %12 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sdiv i32 %15, 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %2
  %23 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %24 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %29 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ZYNQ_QSPI_RXD_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %34 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ioread32_rep(i64 %32, i64 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %42 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %61

45:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %52 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ZYNQ_QSPI_RXD_OFFSET, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl_relaxed(i64 %55)
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %46

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 4
  %64 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %65 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %61
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @zynq_qspi_rxfifo_op(%struct.zynq_qspi* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %77, %74, %61
  ret void
}

declare dso_local i32 @ioread32_rep(i64, i64, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @zynq_qspi_rxfifo_op(%struct.zynq_qspi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
