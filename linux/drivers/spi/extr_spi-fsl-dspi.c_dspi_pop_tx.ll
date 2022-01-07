; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_pop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_pop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_dspi*)* @dspi_pop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspi_pop_tx(%struct.fsl_dspi* %0) #0 {
  %2 = alloca %struct.fsl_dspi*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %8
  %20 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %21 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %26 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %19
  %31 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %32 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %13
  %38 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %39 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %43 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %37, %1
  %47 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %48 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %51 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
