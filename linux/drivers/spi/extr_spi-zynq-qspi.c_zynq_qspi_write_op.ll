; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_write_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_write_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_qspi = type { i32, i64, i64 }

@ZYNQ_QSPI_TXD_00_00_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynq_qspi*, i32, i32)* @zynq_qspi_write_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_qspi_write_op(%struct.zynq_qspi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zynq_qspi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zynq_qspi* %0, %struct.zynq_qspi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.zynq_qspi*, %struct.zynq_qspi** %4, align 8
  %11 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.zynq_qspi*, %struct.zynq_qspi** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @zynq_qspi_txfifo_op(%struct.zynq_qspi* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %80

26:                                               ; preds = %15, %3
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.zynq_qspi*, %struct.zynq_qspi** %4, align 8
  %36 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.zynq_qspi*, %struct.zynq_qspi** %4, align 8
  %41 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ZYNQ_QSPI_TXD_00_00_OFFSET, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.zynq_qspi*, %struct.zynq_qspi** %4, align 8
  %46 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @iowrite32_rep(i64 %44, i64 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.zynq_qspi*, %struct.zynq_qspi** %4, align 8
  %54 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %73

57:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.zynq_qspi*, %struct.zynq_qspi** %4, align 8
  %64 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ZYNQ_QSPI_TXD_00_00_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel_relaxed(i32 0, i64 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %58

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %74, 4
  %76 = load %struct.zynq_qspi*, %struct.zynq_qspi** %4, align 8
  %77 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %25
  ret void
}

declare dso_local i32 @zynq_qspi_txfifo_op(%struct.zynq_qspi*, i32) #1

declare dso_local i32 @iowrite32_rep(i64, i64, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
